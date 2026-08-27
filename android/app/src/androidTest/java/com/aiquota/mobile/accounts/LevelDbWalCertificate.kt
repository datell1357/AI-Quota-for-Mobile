package com.aiquota.mobile.accounts

import android.os.FileObserver
import android.system.Os
import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.nio.file.Path
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.zip.CRC32C

internal data class WalProfilePath(
    val profileName: String,
    val profileDirectory: Path,
    val levelDbDirectory: Path,
)

internal object LevelDbWalCertification {
    private val profileDirectoryPattern = Regex("Profile [0-9]+")

    fun currentProfileDirectories(appWebView: Path): Set<Path> {
        if (!Files.isDirectory(appWebView)) return emptySet()
        return Files.list(appWebView).use { paths ->
            paths
                .filter { Files.isDirectory(it) && profileDirectoryPattern.matches(it.fileName.toString()) }
                .map { it.toRealPath() }
                .toList()
                .toSet()
        }
    }

    fun mapCreatedProfile(
        appData: Path,
        appWebView: Path,
        before: Set<Path>,
        after: Set<Path>,
        profileName: String,
    ): WalProfilePath {
        val created = after - before
        require(created.size == 1) {
            "PROFILE_PATH_DELTA expected=1 actual=${created.size} before=${before.sorted()} after=${after.sorted()}"
        }
        val canonicalData = appData.toRealPath()
        val profileDirectory = created.single().toRealPath()
        require(profileDirectory.startsWith(canonicalData)) {
            "PROFILE_PATH_OUTSIDE_APP_DATA path=$profileDirectory data=$canonicalData"
        }
        val levelDb = profileDirectory.resolve("Local Storage/leveldb").toRealPath()
        require(levelDb.startsWith(profileDirectory) && Files.isDirectory(levelDb)) {
            "LEVELDB_PATH_INVALID profile=$profileDirectory leveldb=$levelDb"
        }
        return WalProfilePath(profileName, profileDirectory, levelDb)
    }

    fun requireDistinct(paths: Collection<WalProfilePath>, appData: Path) {
        val canonicalData = appData.toRealPath()
        require(paths.map { it.levelDbDirectory }.distinct().size == paths.size) {
            "LEVELDB_PATHS_NOT_DISTINCT paths=${paths.map { it.levelDbDirectory }}"
        }
        paths.forEach {
            require(it.levelDbDirectory.startsWith(canonicalData)) {
                "LEVELDB_PATH_OUTSIDE_APP_DATA path=${it.levelDbDirectory}"
            }
        }
    }

    fun requireMarkersAbsent(paths: Collection<WalProfilePath>, markers: Collection<String>) {
        paths.forEach { profile ->
            walFiles(profile.levelDbDirectory).forEach { wal ->
                val bytes = Files.readAllBytes(wal)
                markers.forEach { marker ->
                    require(!containsMarkerEncoding(bytes, marker)) {
                        "MARKER_PREEXISTED profile=${profile.profileName} wal=$wal marker=$marker"
                    }
                }
            }
        }
    }

    fun arm(
        own: WalProfilePath,
        sibling: WalProfilePath,
        ownMarker: String,
        siblingMarker: String,
    ): ArmedWalCertificate =
        ArmedWalCertificate(own, sibling, ownMarker, siblingMarker).also { it.start() }

    internal fun walFiles(levelDb: Path): List<Path> =
        Files.list(levelDb).use { paths ->
            paths
                .filter { Files.isRegularFile(it) && it.fileName.toString().endsWith(".log") }
                .sorted()
                .toList()
        }

    internal fun containsMarkerEncoding(bytes: ByteArray, marker: String): Boolean {
        val ascii = marker.toByteArray(StandardCharsets.US_ASCII)
        val utf16 = marker.toByteArray(StandardCharsets.UTF_16LE)
        return bytes.containsExact(ascii) || bytes.containsExact(utf16)
    }
}

internal class ArmedWalCertificate(
    private val own: WalProfilePath,
    private val sibling: WalProfilePath,
    private val ownMarker: String,
    private val siblingMarker: String,
) : AutoCloseable {
    private data class Identity(val device: Long, val inode: Long, val size: Long)

    private val baseline = linkedMapOf<String, Identity>()
    private val created = mutableSetOf<String>()
    private val events = mutableListOf<String>()
    private val done = CountDownLatch(1)
    private var failure: Throwable? = null
    private var passed = false
    private lateinit var observer: FileObserver

    internal fun start() {
        LevelDbWalCertification.walFiles(own.levelDbDirectory).forEach { path ->
            baseline[path.fileName.toString()] = identity(path)
        }
        observer =
            object : FileObserver(own.levelDbDirectory.toFile(), WATCH_MASK) {
                override fun onEvent(event: Int, path: String?) {
                    synchronized(this@ArmedWalCertificate) {
                        if (passed || failure != null) return
                        events += "event=${event and FileObserver.ALL_EVENTS};path=${path ?: "<self>"}"
                        try {
                            inspectEvent(event, path)
                        } catch (t: Throwable) {
                            failure = t
                            done.countDown()
                            stopWatching()
                        }
                    }
                }
            }
        observer.startWatching()
    }

    private fun inspectEvent(event: Int, relative: String?) {
        if (relative == null) {
            if (event and (FileObserver.DELETE_SELF or FileObserver.MOVE_SELF) != 0) {
                error("WAL_OBSERVER_DIRECTORY_LOST events=$events")
            }
            return
        }
        if (!relative.endsWith(".log")) return
        if (event and (FileObserver.DELETE or FileObserver.MOVED_FROM) != 0) {
            if (relative in baseline || relative in created) {
                error("WAL_ROTATED_OR_REMOVED wal=$relative events=$events")
            }
            return
        }
        if (event and (FileObserver.CREATE or FileObserver.MOVED_TO) != 0) created += relative
        if (event and RELEVANT_FILE_EVENTS == 0) return
        val path = own.levelDbDirectory.resolve(relative)
        if (!Files.isRegularFile(path)) return
        val current = identity(path)
        val initial = baseline[relative]
        val offset =
            when {
                initial == null -> {
                    require(relative in created) {
                        "WAL_APPEARED_WITHOUT_CREATE wal=$relative events=$events"
                    }
                    0L
                }
                current.device != initial.device || current.inode != initial.inode ->
                    error("WAL_INODE_CHANGED wal=$relative before=$initial after=$current events=$events")
                current.size < initial.size ->
                    error("WAL_TRUNCATED wal=$relative before=$initial after=$current events=$events")
                else -> initial.size
            }
        if (current.size <= offset) return
        val allBytes = Files.readAllBytes(path)
        require(allBytes.size.toLong() == current.size) {
            "WAL_SIZE_CHANGED_DURING_READ wal=$path stat=${current.size} read=${allBytes.size}"
        }
        val parsed = LevelDbWalParser.parse(allBytes, offset.toInt())
        parsed.failure?.let { error("WAL_MALFORMED wal=$path offset=$offset reason=$it events=$events") }
        parsed.writeBatchValues.forEach { value ->
            require(!value.matchesMarker(siblingMarker)) {
                "SIBLING_MARKER_IN_OWN_WAL own=${own.profileName} sibling=${sibling.profileName} wal=$path"
            }
            if (value.matchesMarker(ownMarker)) {
                requireSiblingNegative()
                passed = true
                done.countDown()
                observer.stopWatching()
                return
            }
        }
    }

    private fun requireSiblingNegative() {
        LevelDbWalCertification.walFiles(sibling.levelDbDirectory).forEach { wal ->
            val bytes = Files.readAllBytes(wal)
            require(!LevelDbWalCertification.containsMarkerEncoding(bytes, ownMarker)) {
                "OWN_MARKER_IN_SIBLING_WAL own=${own.profileName} sibling=${sibling.profileName} wal=$wal"
            }
        }
    }

    fun await() {
        if (!done.await(30, TimeUnit.SECONDS)) {
            close()
            error(
                "WAL_CERT_TIMEOUT profile=${own.profileName} leveldb=${own.levelDbDirectory} " +
                    "baseline=$baseline events=$events files=${LevelDbWalCertification.walFiles(own.levelDbDirectory)}"
            )
        }
        failure?.let { throw AssertionError(it.message, it) }
        check(passed) { "WAL_CERT_NOT_PASSED profile=${own.profileName} events=$events" }
    }

    override fun close() {
        if (::observer.isInitialized) observer.stopWatching()
    }

    private fun identity(path: Path): Identity {
        val stat = Os.stat(path.toString())
        return Identity(stat.st_dev, stat.st_ino, stat.st_size)
    }

    private companion object {
        const val RELEVANT_FILE_EVENTS =
            FileObserver.CREATE or
                FileObserver.MOVED_TO or
                FileObserver.MODIFY or
                FileObserver.CLOSE_WRITE
        const val WATCH_MASK =
            RELEVANT_FILE_EVENTS or
                FileObserver.DELETE or
                FileObserver.MOVED_FROM or
                FileObserver.DELETE_SELF or
                FileObserver.MOVE_SELF
    }
}

private data class WalParseResult(
    val writeBatchValues: List<ByteArray>,
    val failure: String?,
)

private object LevelDbWalParser {
    private const val BLOCK_SIZE = 32 * 1024
    private const val HEADER_SIZE = 7
    private const val FULL = 1
    private const val FIRST = 2
    private const val MIDDLE = 3
    private const val LAST = 4

    fun parse(bytes: ByteArray, start: Int): WalParseResult {
        if (start !in 0..bytes.size) return WalParseResult(emptyList(), "invalid start=$start size=${bytes.size}")
        val logical = mutableListOf<ByteArray>()
        var assembling: MutableList<Byte>? = null
        var position = start
        while (position < bytes.size) {
            val blockOffset = position % BLOCK_SIZE
            val blockRemaining = BLOCK_SIZE - blockOffset
            if (blockRemaining < HEADER_SIZE) {
                val end = minOf(bytes.size, position + blockRemaining)
                if ((position until end).any { bytes[it].toInt() != 0 }) {
                    return WalParseResult(emptyList(), "nonzero block trailer at=$position")
                }
                position = end
                continue
            }
            if (bytes.size - position < HEADER_SIZE) break
            val storedCrc = littleUInt32(bytes, position)
            val length = littleUInt16(bytes, position + 4)
            val type = bytes[position + 6].toInt() and 0xff
            if (storedCrc == 0L && length == 0 && type == 0) {
                val end = minOf(bytes.size, position + blockRemaining)
                if ((position until end).any { bytes[it].toInt() != 0 }) {
                    return WalParseResult(emptyList(), "mixed zero physical record at=$position")
                }
                position = end
                continue
            }
            if (length > blockRemaining - HEADER_SIZE) {
                return WalParseResult(emptyList(), "record crosses block at=$position length=$length remaining=$blockRemaining")
            }
            val payloadStart = position + HEADER_SIZE
            val payloadEnd = payloadStart + length
            if (payloadEnd > bytes.size) break
            val payload = bytes.copyOfRange(payloadStart, payloadEnd)
            val crc = CRC32C().apply {
                update(type)
                update(payload, 0, payload.size)
            }.value
            if (maskCrc(crc) != storedCrc) {
                return WalParseResult(emptyList(), "crc mismatch at=$position stored=$storedCrc actual=${maskCrc(crc)}")
            }
            when (type) {
                FULL -> {
                    if (assembling != null) return WalParseResult(emptyList(), "FULL during fragmented record at=$position")
                    logical += payload
                }
                FIRST -> {
                    if (assembling != null) return WalParseResult(emptyList(), "nested FIRST at=$position")
                    assembling = payload.toMutableList()
                }
                MIDDLE -> {
                    val current = assembling
                        ?: return WalParseResult(emptyList(), "MIDDLE without FIRST at=$position")
                    current.addAll(payload.toList())
                }
                LAST -> {
                    val current = assembling
                        ?: return WalParseResult(emptyList(), "LAST without FIRST at=$position")
                    current.addAll(payload.toList())
                    logical += current.toByteArray()
                    assembling = null
                }
                else -> return WalParseResult(emptyList(), "unknown physical type=$type at=$position")
            }
            position = payloadEnd
        }
        val values = mutableListOf<ByteArray>()
        logical.forEachIndexed { index, record ->
            val batch = parseWriteBatch(record)
                ?: return WalParseResult(emptyList(), "invalid WriteBatch logicalIndex=$index size=${record.size}")
            values += batch
        }
        return WalParseResult(values, null)
    }

    private fun parseWriteBatch(bytes: ByteArray): List<ByteArray>? {
        if (bytes.size < 12) return null
        val count = littleUInt32(bytes, 8)
        if (count > 1_000_000L) return null
        var position = 12
        var records = 0L
        val values = mutableListOf<ByteArray>()
        while (records < count) {
            if (position >= bytes.size) return null
            val tag = bytes[position++].toInt() and 0xff
            val keyLength = readVarint32(bytes, position) ?: return null
            position = keyLength.second
            if (keyLength.first < 0 || position + keyLength.first > bytes.size) return null
            position += keyLength.first
            when (tag) {
                0 -> Unit
                1 -> {
                    val valueLength = readVarint32(bytes, position) ?: return null
                    position = valueLength.second
                    if (valueLength.first < 0 || position + valueLength.first > bytes.size) return null
                    values += bytes.copyOfRange(position, position + valueLength.first)
                    position += valueLength.first
                }
                else -> return null
            }
            records++
        }
        if (position != bytes.size) return null
        return values
    }

    private fun readVarint32(bytes: ByteArray, start: Int): Pair<Int, Int>? {
        var value = 0L
        var shift = 0
        var position = start
        repeat(5) {
            if (position >= bytes.size) return null
            val byte = bytes[position++].toInt() and 0xff
            value = value or ((byte and 0x7f).toLong() shl shift)
            if (byte and 0x80 == 0) {
                if (value > Int.MAX_VALUE) return null
                return value.toInt() to position
            }
            shift += 7
        }
        return null
    }

    private fun littleUInt16(bytes: ByteArray, offset: Int): Int =
        (bytes[offset].toInt() and 0xff) or ((bytes[offset + 1].toInt() and 0xff) shl 8)

    private fun littleUInt32(bytes: ByteArray, offset: Int): Long =
        (bytes[offset].toLong() and 0xff) or
            ((bytes[offset + 1].toLong() and 0xff) shl 8) or
            ((bytes[offset + 2].toLong() and 0xff) shl 16) or
            ((bytes[offset + 3].toLong() and 0xff) shl 24)

    private fun maskCrc(value: Long): Long =
        ((((value ushr 15) or (value shl 17)) and 0xffffffffL) + 0xa282ead8L) and 0xffffffffL
}

private fun ByteArray.matchesMarker(marker: String): Boolean {
    val ascii = marker.toByteArray(StandardCharsets.US_ASCII)
    val utf16 = marker.toByteArray(StandardCharsets.UTF_16LE)
    return contentEquals(byteArrayOf(1) + ascii) ||
        contentEquals(byteArrayOf(1) + utf16) ||
        contentEquals(utf16)
}

private fun ByteArray.containsExact(needle: ByteArray): Boolean {
    if (needle.isEmpty()) return true
    if (needle.size > size) return false
    for (start in 0..size - needle.size) {
        var matches = true
        for (index in needle.indices) {
            if (this[start + index] != needle[index]) {
                matches = false
                break
            }
        }
        if (matches) return true
    }
    return false
}
