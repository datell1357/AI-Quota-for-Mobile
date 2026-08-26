package com.aiquota.mobile.accounts

import android.annotation.SuppressLint
import android.os.Process
import android.util.Log
import android.webkit.JavascriptInterface
import android.webkit.WebView
import androidx.core.content.ContextCompat
import androidx.test.core.app.ActivityScenario
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import androidx.webkit.Profile
import androidx.webkit.ProfileStore
import androidx.webkit.WebStorageCompat
import androidx.webkit.WebViewCompat
import com.aiquota.mobile.MainActivity
import com.aiquota.mobile.local.ProviderId
import java.io.BufferedReader
import java.io.InputStreamReader
import java.net.InetAddress
import java.net.ServerSocket
import java.net.SocketException
import java.security.MessageDigest
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class NamedProfile145RejectionTest {
    @Test
    fun secondEnrollmentRejectedBeforeActivity() {
        ActivityScenario.launch(MainActivity::class.java).use { s ->
            s.onActivity { a ->
                val p = AndroidXNamedProfilePlatform(a)
                val c = p.probeCapability()
                assertTrue(c is NamedProfileCapability.Rejected)
                assertEquals(
                    RuntimeSupportReason.VERSION_BELOW_SAFE_FLOOR,
                    (c as NamedProfileCapability.Rejected).reason,
                )
                var mutations = 0
                val r =
                    NamedProfileEnrollmentCoordinator(p::requireUiThread, p::probeCapability)
                        .enroll(1) { mutations++ }
                assertTrue(r is EnrollmentCoordinationResult.Rejected)
                assertEquals(0, mutations)
                Log.i(
                    TAG,
                    "UNSUPPORTED_145=true;ACCOUNT=0;PROFILE=0;WEBVIEW=0;NETWORK=0;STORAGE=0;PID=${Process.myPid()}",
                )
            }
        }
    }
}

@RunWith(AndroidJUnit4::class)
class NamedProfilePhase1SeedAndPendingTest {
    @Test fun seedEraseDoomedAndRetainContainer() = phase1(reverse())
}

@RunWith(AndroidJUnit4::class)
class NamedProfilePhase2ColdDeleteAndRestartTest {
    @Test fun freshRead() = readPhase(reverse(), "PHASE2")
}

@RunWith(AndroidJUnit4::class)
class NamedProfilePhase3IdempotentAndCatalogTest {
    @Test fun nextFreshRead() = readPhase(reverse(), "PHASE3")
}

@RunWith(AndroidJUnit4::class)
class NamedProfileCleanupDataTest {
    @Test
    fun eraseTaskData() {
        ActivityScenario.launch(MainActivity::class.java).use { s ->
            val done = CountDownLatch(1)
            s.onActivity { a ->
                val ps =
                    AndroidNamedProfileLifecycleStore(a).readAll().mapNotNull {
                        ProfileStore.getInstance().getProfile(it.profileName.storageValue())
                    }
                fun next(i: Int) {
                    if (i == ps.size) {
                        done.countDown()
                        return
                    }
                    WebStorageCompat.deleteBrowsingData(
                        ps[i].webStorage,
                        ContextCompat.getMainExecutor(a),
                    ) {
                        next(i + 1)
                    }
                }
                next(0)
            }
            assertTrue(done.await(30, TimeUnit.SECONDS))
        }
    }
}

@RunWith(AndroidJUnit4::class)
class NamedProfileCleanupContainersTest {
    @Test
    fun removeOnlyTaskContainers() {
        ActivityScenario.launch(MainActivity::class.java).use { s ->
            s.onActivity { a ->
                val ps = ProfileStore.getInstance()
                val task =
                    AndroidNamedProfileLifecycleStore(a)
                        .readAll()
                        .map { it.profileName.storageValue() }
                        .toSet()
                val unrelated = ps.allProfileNames.filterNot { it in task }.toSet()
                task.forEach { if (it in ps.allProfileNames) assertTrue(ps.deleteProfile(it)) }
                assertTrue(ps.allProfileNames.none { it in task })
                assertEquals(unrelated, ps.allProfileNames.filterNot { it in task }.toSet())
            }
        }
    }
}

private fun phase1(reverse: Boolean) {
    OriginServer().use { server ->
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            lateinit var m: NamedProfileLifecycleManager
            lateinit var ra: AccountProfileBinding
            lateinit var rb: AccountProfileBinding
            lateinit var la: NamedProfileLease
            lateinit var lb: NamedProfileLease
            lateinit var fa: Fixture
            lateinit var fb: Fixture
            val q = CountDownLatch(2)
            scenario.onActivity { a ->
                m =
                    NamedProfileLifecycleManager(
                        AndroidNamedProfileLifecycleStore(a),
                        AndroidXNamedProfilePlatform(a) {
                            if (it == "session:quiesced") q.countDown()
                        },
                    )
                assertEquals(0, m.resumePendingErasures { _, _ -> })
                ra = m.ensureBinding(A)
                rb = m.ensureBinding(B)
                la = m.acquire(A)
                fa =
                    Fixture(
                        la.requireAndroidWebView(),
                        ProfileStore.getInstance().getProfile(ra.profileName.storageValue()),
                        server,
                        "A",
                        true,
                    )
                a.setContentView(la.requireAndroidWebView())
                fa.start()
            }
            val sa = fa.await()
            scenario.onActivity { a ->
                lb = m.acquire(B)
                fb =
                    Fixture(
                        lb.requireAndroidWebView(),
                        ProfileStore.getInstance().getProfile(rb.profileName.storageValue()),
                        server,
                        "B",
                        true,
                    )
                a.setContentView(lb.requireAndroidWebView())
                fb.start()
            }
            val sb = fb.await()
            present(sa, "A")
            present(sb, "B")
            val doomed = if (reverse) B else A
            val doomedLease = if (reverse) lb else la
            val survivorLease = if (reverse) la else lb
            val erased = CountDownLatch(1)
            scenario.onActivity { a ->
                assertEquals(
                    ErasureRequestResult.ERASURE_PENDING,
                    m.requestErasure(doomed) {
                        if (it == ProfileDataErasureResult.Completed) erased.countDown()
                    },
                )
                assertEquals(ProfileLifecycleState.ERASURE_PENDING, m.binding(doomed)!!.state)
                a.setContentView(doomedLease.requireAndroidWebView())
                doomedLease.close()
            }
            assertTrue(erased.await(30, TimeUnit.SECONDS))
            scenario.onActivity { a ->
                a.setContentView(survivorLease.requireAndroidWebView())
                survivorLease.close()
            }
            assertTrue(q.await(30, TimeUnit.SECONDS))
            scenario.onActivity {
                assertEquals(
                    ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED,
                    m.binding(doomed)!!.state,
                )
                assertTrue(
                    m.binding(doomed)!!.profileName.storageValue() in
                        ProfileStore.getInstance().allProfileNames
                )
                assertTrue(m.acquireTyped(doomed) is LeaseAcquireResult.ProfileUnavailable)
            }
            Log.i(
                TAG,
                "PHASE1_DONE=true;REVERSE=$reverse;PID=${Process.myPid()};A_SHA=${hash(sa.toString())};B_SHA=${hash(sb.toString())};CONTAINER_RETAINED=true",
            )
        }
    }
}

private fun readPhase(reverse: Boolean, label: String) {
    OriginServer().use { server ->
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            lateinit var m: NamedProfileLifecycleManager
            lateinit var rows: Map<ProviderAccountId, AccountProfileBinding>
            lateinit var erasedFixture: Fixture
            lateinit var survivorFixture: Fixture
            lateinit var survivorLease: NamedProfileLease
            val q = CountDownLatch(1)
            val doomed = if (reverse) B else A
            val survivor = if (reverse) A else B
            scenario.onActivity { a ->
                m =
                    NamedProfileLifecycleManager(
                        AndroidNamedProfileLifecycleStore(a),
                        AndroidXNamedProfilePlatform(a) {
                            if (it == "session:quiesced") q.countDown()
                        },
                    )
                assertEquals(0, m.resumePendingErasures { _, _ -> })
                rows = AndroidNamedProfileLifecycleStore(a).readAll().associateBy { it.accountId }
                assertEquals(
                    ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED,
                    rows.getValue(doomed).state,
                )
                assertTrue(m.acquireTyped(doomed) is LeaseAcquireResult.ProfileUnavailable)
                val w = WebView(a)
                WebViewCompat.setProfile(w, rows.getValue(doomed).profileName.storageValue())
                val p =
                    ProfileStore.getInstance()
                        .getOrCreateProfile(rows.getValue(doomed).profileName.storageValue())
                erasedFixture = Fixture(w, p, server, if (reverse) "B" else "A", false)
                a.setContentView(w)
                erasedFixture.start()
            }
            val erased = erasedFixture.await()
            absent(erased)
            scenario.onActivity { a ->
                erasedFixture.destroy()
                survivorLease = m.acquire(survivor)
                val marker = if (reverse) "A" else "B"
                survivorFixture =
                    Fixture(
                        survivorLease.requireAndroidWebView(),
                        ProfileStore.getInstance()
                            .getProfile(rows.getValue(survivor).profileName.storageValue()),
                        server,
                        marker,
                        false,
                    )
                a.setContentView(survivorLease.requireAndroidWebView())
                survivorFixture.start()
            }
            val kept = survivorFixture.await()
            present(kept, if (reverse) "A" else "B")
            scenario.onActivity { survivorLease.close() }
            assertTrue(q.await(30, TimeUnit.SECONDS))
            Log.i(
                TAG,
                "$label=true;REVERSE=$reverse;ERASED=${hash(erased.toString())};SURVIVOR=${hash(kept.toString())};PID=${Process.myPid()}",
            )
        }
    }
}

@SuppressLint("SetJavaScriptEnabled")
private class Fixture(
    private val w: WebView,
    private val p: Profile,
    private val server: OriginServer,
    private val marker: String,
    private val seed: Boolean,
) {
    private val done = CountDownLatch(1)
    private var value: JSONObject? = null

    init {
        w.settings.javaScriptEnabled = true
        w.settings.domStorageEnabled = true
        w.addJavascriptInterface(
            object {
                @JavascriptInterface
                fun complete(raw: String) {
                    value =
                        JSONObject(raw)
                            .put(
                                "cookie",
                                if (
                                    p.cookieManager
                                        .getCookie(ORIGIN)
                                        .orEmpty()
                                        .contains("m=$marker")
                                )
                                    marker
                                else "",
                            )
                    done.countDown()
                }
            },
            "AndroidResult",
        )
    }

    fun start() = w.loadUrl("$ORIGIN/state?marker=$marker&seed=$seed")

    fun await(): JSONObject {
        assertTrue(done.await(25, TimeUnit.SECONDS))
        return requireNotNull(value)
    }

    fun destroy() = w.destroy()
}

private class OriginServer : AutoCloseable {
    private val socket = ServerSocket(18765, 50, InetAddress.getByName("127.0.0.1"))
    private val stopped = CountDownLatch(1)

    init {
        Thread(
                {
                    try {
                        while (!socket.isClosed) handle(socket.accept())
                    } catch (_: SocketException) {} finally {
                        stopped.countDown()
                    }
                },
                "fix5-origin",
            )
            .apply {
                isDaemon = true
                start()
            }
    }

    private fun handle(s: java.net.Socket) {
        s.use {
            val r = BufferedReader(InputStreamReader(it.getInputStream()))
            val req = r.readLine().orEmpty()
            while (true) {
                val x = r.readLine() ?: break
                if (x.isEmpty()) break
            }
            val path = req.split(' ').getOrNull(1).orEmpty().substringBefore('?')
            val body =
                when (path) {
                    "/state" -> HTML
                    "/sw.js" -> SW
                    else -> "ok"
                }
            val b = body.toByteArray()
            it.getOutputStream().apply {
                write(
                    "HTTP/1.1 200 OK\r\nContent-Type: ${if(path.endsWith(".js"))"application/javascript" else "text/html"}\r\nContent-Length: ${b.size}\r\nConnection: close\r\n\r\n"
                        .toByteArray()
                )
                write(b)
                flush()
            }
        }
    }

    override fun close() {
        socket.close()
        assertTrue(stopped.await(5, TimeUnit.SECONDS))
    }
}

private fun present(v: JSONObject, m: String) {
    assertEquals(m, v.optString("local"))
    assertEquals(m, v.optString("idb"))
    assertEquals(m, v.optString("cache"))
    assertEquals("ACK", v.optString("sw"))
    assertEquals(m, v.optString("cookie"))
}

private fun absent(v: JSONObject) {
    assertEquals("", v.optString("local"))
    assertEquals("", v.optString("idb"))
    assertEquals("", v.optString("cache"))
    assertEquals("", v.optString("sw"))
    assertEquals("", v.optString("cookie"))
}

private fun reverse() = InstrumentationRegistry.getArguments().getString("reverse") == "true"

private fun id(i: Int) =
    ProviderAccountId(
        ProviderId.CLAUDE,
        AccountKey.parseOpaque("acct_${i.toString(16).padStart(32,'0')}"),
    )

private val A = id(1)
private val B = id(2)
private const val ORIGIN = "http://127.0.0.1:18765"
private const val TAG = "NamedProfileFix5"

private fun hash(v: String) =
    MessageDigest.getInstance("SHA-256").digest(v.toByteArray()).joinToString("") {
        "%02x".format(it)
    }

private const val SW =
    "self.addEventListener('install',e=>self.skipWaiting());self.addEventListener('activate',e=>e.waitUntil(self.clients.claim()));self.addEventListener('message',e=>e.ports[0].postMessage('ACK'));"
private const val HTML =
    """<!doctype html><script>(async()=>{const q=new URLSearchParams(location.search),m=q.get('marker'),seed=q.get('seed')==='true';const dbs=await indexedDB.databases();let db=null;if(seed||dbs.some(x=>x.name==='fix5'))db=await new Promise((ok,no)=>{const r=indexedDB.open('fix5',1);r.onupgradeneeded=()=>r.result.createObjectStore('m');r.onerror=()=>no(r.error);r.onsuccess=()=>ok(r.result)});const tx=(mode,fn)=>new Promise((ok,no)=>{const t=db.transaction('m',mode,{durability:'strict'}),r=fn(t.objectStore('m'));t.oncomplete=()=>ok(r.result);t.onerror=()=>no(t.error);t.onabort=()=>no(t.error)});if(seed){document.cookie='m='+m+'; Path=/; SameSite=Strict';localStorage.setItem('m',m);if(localStorage.getItem('m')!==m)throw Error('local');await tx('readwrite',s=>s.put(m,'m'));const c=await caches.open('fix5');await c.put('/cache',new Response(m));if(await(await c.match('/cache')).text()!==m)throw Error('cache');await navigator.serviceWorker.register('/sw.js');const ready=await navigator.serviceWorker.ready;await new Promise((ok,no)=>{const ch=new MessageChannel();ch.port1.onmessage=e=>e.data==='ACK'?ok():no();ready.active.postMessage('x',[ch.port2])})}const idb=db?await tx('readonly',s=>s.get('m')):null,cached=await caches.match('/cache'),reg=await navigator.serviceWorker.getRegistration();window.__AIQ_PROFILE_PERSISTENCE_READY__=true;AndroidResult.complete(JSON.stringify({local:localStorage.getItem('m')||'',idb:idb||'',cache:cached?await cached.text():'',sw:reg&&reg.active?'ACK':''}))})().catch(e=>AndroidResult.complete(JSON.stringify({error:String(e)})))</script>"""
