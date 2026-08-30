package com.aiquota.mobile.accounts

import android.content.ContentValues
import android.content.Context
import android.database.Cursor
import android.database.sqlite.SQLiteConstraintException
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteException
import com.aiquota.mobile.local.ProviderId

internal enum class NamedProfileFaultPoint {
    AFTER_INSERT,
    AFTER_TRANSITION,
}

internal fun interface NamedProfileFaultInjector {
    fun after(point: NamedProfileFaultPoint)

    companion object {
        val NONE = NamedProfileFaultInjector {}
    }
}

class AndroidNamedProfileLifecycleStore
internal constructor(
    context: Context,
    databaseName: String = AccountAuthorityDatabase.DEFAULT_DATABASE_NAME,
    private val fault: NamedProfileFaultInjector = NamedProfileFaultInjector.NONE,
) : NamedProfileLifecycleStore, AutoCloseable {
    private val helper = AccountAuthorityDatabase(context.applicationContext, databaseName)

    override fun read(id: ProviderAccountId) = one(helper.readableDatabase, id)

    override fun readAll() = rows(helper.readableDatabase)

    override fun create(id: ProviderAccountId, name: WebProfileName) = tx { db ->
        one(db, id)?.let {
            return@tx it
        }
        val v =
            ContentValues().apply {
                put("provider_id", id.providerId.storageId)
                put("account_key", id.accountKey.storageValue())
                put("profile_name", name.storageValue())
                put("lifecycle_state", ProfileLifecycleState.ACTIVE.name)
                putNull("receipt_disposition")
            }
        try {
            db.insertOrThrow(TABLE, null, v)
        } catch (_: SQLiteConstraintException) {
            one(db, id)?.let {
                return@tx it
            }
            throw ProfileNameCollisionException()
        }
        fault.after(NamedProfileFaultPoint.AFTER_INSERT)
        requireNotNull(one(db, id))
    }

    override fun markPending(id: ProviderAccountId) = tx { db ->
        val n =
            update(
                db,
                "UPDATE $TABLE SET lifecycle_state=? WHERE provider_id=? AND account_key=? AND lifecycle_state=?",
                ProfileLifecycleState.ERASURE_PENDING.name,
                id.providerId.storageId,
                id.accountKey.storageValue(),
                ProfileLifecycleState.ACTIVE.name,
            )
        if (n == 1) fault.after(NamedProfileFaultPoint.AFTER_TRANSITION)
        requireNotNull(one(db, id))
    }

    override fun complete(id: ProviderAccountId) = tx { db ->
        val n =
            update(
                db,
                "UPDATE $TABLE SET lifecycle_state=?,receipt_disposition=? WHERE provider_id=? AND account_key=? AND lifecycle_state=?",
                ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED.name,
                ContainerDisposition.CONTAINER_RETAINED_EMPTY_NEVER_REUSED.name,
                id.providerId.storageId,
                id.accountKey.storageValue(),
                ProfileLifecycleState.ERASURE_PENDING.name,
            )
        if (n == 1) fault.after(NamedProfileFaultPoint.AFTER_TRANSITION)
        requireNotNull(one(db, id))
    }

    internal fun rawDatabaseForTest() = helper.writableDatabase

    override fun close() = helper.close()

    private inline fun <T> tx(b: (SQLiteDatabase) -> T): T {
        val db = helper.writableDatabase
        db.beginTransaction()
        return try {
            b(db).also { db.setTransactionSuccessful() }
        } finally {
            db.endTransaction()
        }
    }
}

private fun update(db: SQLiteDatabase, sql: String, vararg a: String) =
    db.compileStatement(sql).use { s ->
        a.forEachIndexed { i, v -> s.bindString(i + 1, v) }
        s.executeUpdateDelete()
    }

private fun one(db: SQLiteDatabase, id: ProviderAccountId) =
    db.query(
            TABLE,
            COLS,
            "provider_id=? AND account_key=?",
            arrayOf(id.providerId.storageId, id.accountKey.storageValue()),
            null,
            null,
            null,
        )
        .use { if (it.moveToFirst()) it.decode() else null }

private fun rows(db: SQLiteDatabase) = buildList {
    db.query(TABLE, COLS, null, null, null, null, "provider_id,account_key").use { c ->
        while (c.moveToNext()) add(c.decode())
    }
}

private fun Cursor.decode(): AccountProfileBinding {
    if (
        getType(0) != Cursor.FIELD_TYPE_STRING ||
            getType(1) != Cursor.FIELD_TYPE_STRING ||
            getType(2) != Cursor.FIELD_TYPE_STRING ||
            getType(3) != Cursor.FIELD_TYPE_STRING ||
            getType(4) !in setOf(Cursor.FIELD_TYPE_NULL, Cursor.FIELD_TYPE_STRING)
    )
        bad()
    val p = ProviderId.fromStorageId(getString(0)) ?: bad()
    val id =
        ProviderAccountId(
            p,
            runCatching { AccountKey.fromStorage(getString(1)) }.getOrElse { bad() },
        )
    val n = runCatching { WebProfileName.fromStorage(getString(2)) }.getOrElse { bad() }
    val s = runCatching { ProfileLifecycleState.valueOf(getString(3)) }.getOrElse { bad() }
    val r =
        if (isNull(4)) null
        else {
            if (getString(4) != ContainerDisposition.CONTAINER_RETAINED_EMPTY_NEVER_REUSED.name)
                bad()
            ProfileErasureReceipt(id, n)
        }
    return runCatching { AccountProfileBinding(id, n, s, r) }.getOrElse { bad() }
}

private fun bad(): Nothing = throw SQLiteException("Incoherent named profile lifecycle authority")

private const val TABLE = "named_profile_lifecycle"
private val COLS =
    arrayOf("provider_id", "account_key", "profile_name", "lifecycle_state", "receipt_disposition")
