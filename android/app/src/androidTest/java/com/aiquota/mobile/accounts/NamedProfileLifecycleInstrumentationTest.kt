package com.aiquota.mobile.accounts

import android.annotation.SuppressLint
import android.os.Process
import android.util.Log
import android.webkit.CookieManager
import android.webkit.JavascriptInterface
import android.webkit.WebStorage
import android.webkit.WebView
import androidx.test.core.app.ActivityScenario
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.webkit.ProfileStore
import androidx.webkit.WebViewFeature
import com.aiquota.mobile.MainActivity
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.io.BufferedReader
import java.io.InputStreamReader
import java.net.InetAddress
import java.net.ServerSocket
import java.net.SocketException
import java.net.URLDecoder
import java.security.MessageDigest
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import org.json.JSONObject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class NamedProfilePhase1SeedAndPendingTest {
    @Test
    fun seedAAndBThenRequestLiveAErasure() {
        assertStableFeatures()
        val server = SyntheticOriginServer()
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            lateinit var manager: NamedProfileLifecycleManager
            lateinit var a: AccountProfileBinding
            lateinit var b: AccountProfileBinding
            lateinit var leaseA: NamedProfileLease
            lateinit var leaseB: NamedProfileLease
            lateinit var fixtureA: ProfileStateFixture
            lateinit var fixtureB: ProfileStateFixture
            scenario.onActivity { activity ->
                manager = productionManager(activity)
                assertTrue(manager.coldStartDrain().isEmpty())
                a = manager.ensureBinding(ACCOUNT_A)
                b = manager.ensureBinding(ACCOUNT_B)
                leaseA = manager.acquire(ACCOUNT_A)
                fixtureA = ProfileStateFixture(leaseA, server, "A", seed = true)
                activity.setContentView(leaseA.requireAndroidWebView())
                fixtureA.start()
            }
            val stateA = fixtureA.await()
            scenario.onActivity { activity ->
                leaseB = manager.acquire(ACCOUNT_B)
                fixtureB = ProfileStateFixture(leaseB, server, "B", seed = true)
                activity.setContentView(leaseB.requireAndroidWebView())
                fixtureB.start()
            }
            val stateB = fixtureB.await()
            assertProfileState(stateA, "A")
            assertProfileState(stateB, "B")
            assertProfileCookie(leaseA, "A")
            assertProfileCookie(leaseB, "B")
            leaseA.requireAndroidCookieManager().flush()
            leaseB.requireAndroidCookieManager().flush()
            assertDefaultProfileEmpty()
            scenario.onActivity {
                assertEquals(2, manager.liveLeaseCount(ACCOUNT_A) + manager.liveLeaseCount(ACCOUNT_B))
                assertEquals(ErasureRequestResult.ERASURE_PENDING_COLD_START, manager.requestErasure(ACCOUNT_A))
                assertThrows(IllegalStateException::class.java) { manager.acquire(ACCOUNT_A) }
                assertEquals(ProfileLifecycleState.ACTIVE, manager.binding(ACCOUNT_B)!!.state)
                leaseA.close()
                leaseB.close()
                assertEquals(0, manager.liveLeaseCount(ACCOUNT_A))
                assertEquals(ProfileLifecycleState.ERASURE_PENDING_COLD_START, manager.binding(ACCOUNT_A)!!.state)
            }
            Log.i(TAG, "PHASE1_PROCESS=${Process.myPid()};A_PROFILE_SHA=${sha(a.profileName.storageValue())};B_PROFILE_SHA=${sha(b.profileName.storageValue())};A_STATE_SHA=${sha(stateA.toString())};B_STATE_SHA=${sha(stateB.toString())};A_PENDING=true;B_UNCHANGED=true")
        }
        server.close()
    }
}

@RunWith(AndroidJUnit4::class)
class NamedProfilePhase2ColdDeleteAndRestartTest {
    @Test
    fun coldDrainAcceptsADeletionBeforeLoadingPersistentB() {
        assertStableFeatures()
        val server = SyntheticOriginServer()
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            lateinit var manager: NamedProfileLifecycleManager
            lateinit var receipt: ProfileDeletionReceipt
            lateinit var leaseB: NamedProfileLease
            lateinit var fixtureB: ProfileStateFixture
            scenario.onActivity { activity ->
                manager = productionManager(activity)
                assertEquals(
                    ProfileLifecycleState.ERASURE_PENDING_COLD_START,
                    AndroidNamedProfileLifecycleStore(activity).read(ACCOUNT_A)!!.state,
                )
                receipt = (manager.coldStartDrain().single() as ColdStartDeletionResult.Completed).receipt
                assertEquals(ProfileDeletionDisposition.DELETION_ACCEPTED, receipt.disposition)
                assertEquals(PhysicalCompletion.UNOBSERVABLE_PLATFORM_ASYNC, receipt.physicalCompletion)
                assertFalse(receipt.profileName.storageValue() in ProfileStore.getInstance().allProfileNames)
                assertEquals(ProfileLifecycleState.DELETION_ACCEPTED, manager.binding(ACCOUNT_A)!!.state)
                assertThrows(IllegalStateException::class.java) { manager.acquire(ACCOUNT_A) }
                leaseB = manager.acquire(ACCOUNT_B)
                fixtureB = ProfileStateFixture(leaseB, server, "B", seed = false)
                activity.setContentView(leaseB.requireAndroidWebView())
                fixtureB.start()
            }
            val stateB = fixtureB.await()
            assertProfileState(stateB, "B")
            assertProfileCookie(leaseB, "B")
            assertDefaultProfileEmpty()
            scenario.onActivity { leaseB.close() }
            val durable = AndroidNamedProfileLifecycleStore(scenarioActivityContext()).read(ACCOUNT_A)!!.receipt!!
            assertEquals(ProfileDeletionDisposition.DELETION_ACCEPTED, durable.disposition)
            Log.i(TAG, "PHASE2_PROCESS=${Process.myPid()};A_DELETE=DELETION_ACCEPTED;PHYSICAL=UNOBSERVABLE_PLATFORM_ASYNC;B_STATE_SHA=${sha(stateB.toString())};B_UNCHANGED=true")
        }
        server.close()
    }
}

@RunWith(AndroidJUnit4::class)
class NamedProfilePhase3IdempotentAndCatalogTest {
    @Test
    fun acceptedAIsNeverRecreatedAndProductionCatalogThousandSelectsOneBSession() {
        assertStableFeatures()
        val server = SyntheticOriginServer()
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            lateinit var manager: NamedProfileLifecycleManager
            lateinit var leaseB: NamedProfileLease
            lateinit var fixtureB: ProfileStateFixture
            scenario.onActivity { activity ->
                manager = productionManager(activity)
                assertTrue(manager.coldStartDrain().isEmpty())
                assertEquals(ProfileLifecycleState.DELETION_ACCEPTED, manager.binding(ACCOUNT_A)!!.state)
                assertThrows(IllegalStateException::class.java) { manager.acquire(ACCOUNT_A) }
                leaseB = manager.acquire(ACCOUNT_B)
                fixtureB = ProfileStateFixture(leaseB, server, "B", seed = false)
                activity.setContentView(leaseB.requireAndroidWebView())
                fixtureB.start()
            }
            val stateB = fixtureB.await()
            assertProfileState(stateB, "B")
            scenario.onActivity { leaseB.close() }
            proveThousandRowCatalogSelectsOneExistingProfile(scenario)
            Log.i(TAG, "PHASE3_PROCESS=${Process.myPid()};A_DRAIN_NOOP=true;A_RECREATED=false;B_STATE_SHA=${sha(stateB.toString())};CATALOG=1000;BOUND_SESSIONS=1")
        }
        server.close()
    }
}

@RunWith(AndroidJUnit4::class)
class NamedProfileCleanupMarkPendingTest {
    @Test
    fun markBPendingWithoutLoadingProfile() {
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            scenario.onActivity { activity ->
                val manager = productionManager(activity)
                assertTrue(manager.coldStartDrain().isEmpty())
                assertEquals(ErasureRequestResult.ERASURE_PENDING_COLD_START, manager.requestErasure(ACCOUNT_B))
                Log.i(TAG, "CLEANUP_MARK_B_PENDING=true;PROFILE_ACTIVITY=false")
            }
        }
    }
}

@RunWith(AndroidJUnit4::class)
class NamedProfileCleanupColdDrainTest {
    @Test
    fun coldDrainAcceptsBDeletionAndLeavesNoTaskProfile() {
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            scenario.onActivity { activity ->
                val manager = productionManager(activity)
                val receipt = (manager.coldStartDrain().single() as ColdStartDeletionResult.Completed).receipt
                assertEquals(ProfileDeletionDisposition.DELETION_ACCEPTED, receipt.disposition)
                assertEquals(PhysicalCompletion.UNOBSERVABLE_PLATFORM_ASYNC, receipt.physicalCompletion)
                val names = ProfileStore.getInstance().allProfileNames
                val lifecycleNames = AndroidNamedProfileLifecycleStore(activity).readAll().map { it.profileName.storageValue() }
                assertTrue(names.none { it in lifecycleNames })
                Log.i(TAG, "CLEANUP_DELETE_B=DELETION_ACCEPTED;TASK_PROFILE_NAMES_REMAINING=0;PHYSICAL=UNOBSERVABLE_PLATFORM_ASYNC")
            }
        }
    }
}

@SuppressLint("SetJavaScriptEnabled")
private class ProfileStateFixture(
    private val lease: NamedProfileLease,
    private val server: SyntheticOriginServer,
    private val marker: String,
    private val seed: Boolean,
) {
    private val completed = CountDownLatch(1)
    private var result: JSONObject? = null

    init {
        val webView = lease.requireAndroidWebView()
        webView.settings.javaScriptEnabled = true
        webView.settings.domStorageEnabled = true
        webView.addJavascriptInterface(object {
            @JavascriptInterface
            fun complete(raw: String) {
                val parsed = JSONObject(raw)
                Log.i(TAG, "PROFILE_RESULT profile=$marker sha=${sha(raw)} error=${parsed.optString("error", "none")}")
                result = parsed.put("requestCookie", server.requestCookie(marker))
                completed.countDown()
            }
        }, "AndroidProfileResult")
    }

    fun start() {
        lease.requireAndroidWebView().loadUrl("$ORIGIN/profiles/state.html?marker=$marker&seed=$seed")
    }

    fun await(): JSONObject {
        assertTrue("profile state callback timed out", completed.await(20, TimeUnit.SECONDS))
        return requireNotNull(result)
    }
}

private class SyntheticOriginServer : AutoCloseable {
    private val stopped = CountDownLatch(1)
    private val cookies = ConcurrentHashMap<String, String>()
    private val socket = ServerSocket(SYNTHETIC_PORT, 50, InetAddress.getByName("127.0.0.1"))
    private val thread = Thread({ serve() }, "task8-synthetic-origin").apply {
        isDaemon = true
        start()
    }

    fun requestCookie(marker: String): String = cookies[marker].orEmpty()

    private fun serve() {
        try {
            while (!socket.isClosed) {
                val client = socket.accept()
                client.use {
                    val reader = BufferedReader(InputStreamReader(it.getInputStream()))
                    val requestLine = reader.readLine().orEmpty()
                    val headers = linkedMapOf<String, String>()
                    while (true) {
                        val line = reader.readLine() ?: break
                        if (line.isEmpty()) break
                        val separator = line.indexOf(':')
                        if (separator > 0) headers[line.substring(0, separator).lowercase()] = line.substring(separator + 1).trim()
                    }
                    val target = requestLine.split(' ').getOrNull(1).orEmpty()
                    val path = target.substringBefore('?')
                    val query = target.substringAfter('?', "")
                    if (path == "/profiles/echo") {
                        val marker = query.split('&').mapNotNull { part ->
                            val pieces = part.split('=', limit = 2)
                            if (pieces.firstOrNull() == "marker") URLDecoder.decode(pieces.getOrElse(1) { "" }, "UTF-8") else null
                        }.firstOrNull().orEmpty()
                        val cookie = headers["cookie"].orEmpty()
                        cookies[marker] = cookie
                        Log.i(TAG, "SYNTHETIC_REQUEST profile=$marker path=/profiles/echo cookieSha=${sha(cookie)}")
                    }
                    val (status, mime, body) = when (path) {
                        "/profiles/state.html" -> Triple("200 OK", "text/html", STATE_HTML)
                        "/profiles/sw.js" -> Triple("200 OK", "application/javascript", SERVICE_WORKER_JS)
                        "/profiles/echo" -> Triple("200 OK", "text/plain", "echo")
                        else -> Triple("404 Not Found", "text/plain", "not found")
                    }
                    val bytes = body.toByteArray()
                    it.getOutputStream().apply {
                        write("HTTP/1.1 $status\r\nContent-Type: $mime; charset=UTF-8\r\nContent-Length: ${bytes.size}\r\nCache-Control: no-store\r\nConnection: close\r\n\r\n".toByteArray())
                        write(bytes)
                        flush()
                    }
                }
            }
        } catch (_: SocketException) {
            check(socket.isClosed)
        } finally {
            stopped.countDown()
        }
    }

    override fun close() {
        socket.close()
        assertTrue("synthetic server did not stop", stopped.await(5, TimeUnit.SECONDS))
    }
}

private fun assertProfileState(value: JSONObject, marker: String) {
    assertEquals(marker, value.getString("localStorage"))
    assertEquals(marker, value.getString("indexedDb"))
    assertEquals(marker, value.getString("cache"))
    assertEquals("SW_READY", value.getString("serviceWorker"))
    assertTrue(value.getString("documentCookie").contains("task8_marker=$marker"))
    assertTrue(value.getString("requestCookie").contains("task8_marker=$marker"))
}

private fun assertProfileCookie(lease: NamedProfileLease, marker: String) {
    val cookie = lease.requireAndroidCookieManager().getCookie(ORIGIN).orEmpty()
    assertTrue(cookie.contains("task8_marker=$marker"))
    assertFalse(cookie.contains("task8_marker=${if (marker == "A") "B" else "A"}"))
}

private fun assertDefaultProfileEmpty() {
    val cookie = CookieManager.getInstance().getCookie(ORIGIN).orEmpty()
    assertFalse(cookie.contains("task8_marker=A"))
    assertFalse(cookie.contains("task8_marker=B"))
    val completed = CountDownLatch(1)
    var originKeys: Set<String>? = null
    WebStorage.getInstance().getOrigins { values ->
        originKeys = values.keys.mapTo(mutableSetOf()) { it.toString() }
        completed.countDown()
    }
    assertTrue(completed.await(10, TimeUnit.SECONDS))
    assertFalse(originKeys.orEmpty().contains(ORIGIN))
    Log.i(TAG, "DEFAULT_COOKIE_SHA=${sha(cookie)};DEFAULT_WEBSTORAGE_ORIGINS=${originKeys.orEmpty().size}")
}

private fun productionManager(activity: MainActivity) = NamedProfileLifecycleManager(
    AndroidNamedProfileLifecycleStore(activity),
    AndroidXNamedProfilePlatform(activity),
)

private fun proveThousandRowCatalogSelectsOneExistingProfile(scenario: ActivityScenario<MainActivity>) {
    val context = scenarioActivityContext()
    val database = "task8_catalog.db"
    context.deleteDatabase(database)
    val authority = MainProcessAccountAuthority.open(context, database)
    try {
        repeat(1_000) { offset ->
            val account = id(offset + 1)
            authority.register(
                AuthorityAccountSeed(
                    AccountRecord(
                        account,
                        AccountState.ACTIVE,
                        AccountAuthState.AUTHENTICATED,
                        AccountDeletionState.NONE,
                        AccountGeneration.of(1),
                        SessionRevision.of(1),
                    ),
                    ProviderUsageSnapshot.disconnected(ProviderId.CLAUDE),
                ),
            )
        }
        val rows = buildList {
            var offset = 0
            while (offset < 1_000) {
                val page = authority.catalog(offset, 250)
                addAll(page.records)
                offset += page.records.size
            }
        }
        assertEquals(1_000, rows.size)
        val selected = rows.first { it.id == ACCOUNT_B }.id
        val durableB = AndroidNamedProfileLifecycleStore(context).read(ACCOUNT_B)!!
        val store = InMemoryNamedProfileLifecycleStore()
        rows.forEach { row ->
            store.write(
                if (row.id == selected) durableB
                else AccountProfileBinding(row.id, WebProfileName.create(), ProfileLifecycleState.ACTIVE, null),
            )
        }
        lateinit var counting: CountingNamedProfilePlatform
        lateinit var manager: NamedProfileLifecycleManager
        scenario.onActivity { activity ->
            counting = CountingNamedProfilePlatform(AndroidXNamedProfilePlatform(activity))
            manager = NamedProfileLifecycleManager(store, counting)
            assertTrue(manager.coldStartDrain().isEmpty())
            assertEquals(0, counting.boundSessions)
            manager.acquire(selected).close()
            assertEquals(1, counting.boundSessions)
            assertEquals(0, manager.liveLeaseCount(selected))
        }
    } finally {
        authority.close()
        context.deleteDatabase(database)
    }
}

private class CountingNamedProfilePlatform(private val delegate: NamedProfilePlatform) : NamedProfilePlatform by delegate {
    var boundSessions = 0
    override fun createBoundSession(name: WebProfileName): NamedProfileSessionResource {
        boundSessions++
        return delegate.createBoundSession(name)
    }
}

private fun assertStableFeatures() {
    assertTrue(WebViewFeature.isFeatureSupported(WebViewFeature.MULTI_PROFILE))
    assertTrue(WebViewFeature.isFeatureSupported(WebViewFeature.SERVICE_WORKER_BASIC_USAGE))
}

private fun scenarioActivityContext() = androidx.test.platform.app.InstrumentationRegistry.getInstrumentation().targetContext

private fun id(index: Int) = ProviderAccountId(
    ProviderId.CLAUDE,
    AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
)

private fun sha(value: String): String = MessageDigest.getInstance("SHA-256")
    .digest(value.toByteArray()).joinToString("") { "%02x".format(it) }

private val ACCOUNT_A = id(1)
private val ACCOUNT_B = id(2)
private const val SYNTHETIC_PORT = 18765
private const val ORIGIN = "http://127.0.0.1:$SYNTHETIC_PORT"
private const val TAG = "NamedProfileLifecycle"
private const val SERVICE_WORKER_JS = "self.addEventListener('install',e=>self.skipWaiting());self.addEventListener('activate',e=>e.waitUntil(self.clients.claim()));"
private const val STATE_HTML = """
<!doctype html><meta charset="utf-8"><script>
(async () => {
  const q = new URLSearchParams(location.search);
  const marker = q.get('marker');
  const seed = q.get('seed') === 'true';
  const idb = await new Promise((resolve, reject) => {
    const request = indexedDB.open('task8-isolation', 1);
    request.onupgradeneeded = () => request.result.createObjectStore('markers');
    request.onerror = () => reject(request.error);
    request.onsuccess = () => resolve(request.result);
  });
  const transact = (mode, action) => new Promise((resolve, reject) => {
    const tx = idb.transaction('markers', mode);
    const request = action(tx.objectStore('markers'));
    request.onsuccess = () => resolve(request.result);
    request.onerror = () => reject(request.error);
  });
  if (seed) {
    document.cookie = 'task8_marker=' + marker + '; Path=/; SameSite=Strict';
    localStorage.setItem('task8-marker', marker);
    await transact('readwrite', store => store.put(marker, 'marker'));
    const cache = await caches.open('task8-cache');
    await cache.put('/profiles/cache-marker', new Response(marker));
  }
  const registration = await navigator.serviceWorker.register('/profiles/sw.js');
  await navigator.serviceWorker.ready;
  const cache = await caches.open('task8-cache');
  const cached = await cache.match('/profiles/cache-marker');
  const indexed = await transact('readonly', store => store.get('marker'));
  await fetch('/profiles/echo?marker=' + encodeURIComponent(marker), {cache: 'no-store'});
  AndroidProfileResult.complete(JSON.stringify({
    localStorage: localStorage.getItem('task8-marker'),
    indexedDb: indexed,
    cache: cached ? await cached.text() : null,
    serviceWorker: registration.active ? 'SW_READY' : 'SW_MISSING',
    documentCookie: document.cookie
  }));
})().catch(error => AndroidProfileResult.complete(JSON.stringify({error: String(error)})));
</script>
"""
