package com.aiquota.mobile.accounts

import android.annotation.SuppressLint
import android.app.ActivityManager
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.graphics.Bitmap
import android.os.Handler
import android.os.HandlerThread
import android.os.Process
import android.util.Log
import android.webkit.JavascriptInterface
import android.webkit.WebResourceError
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import android.webkit.WebView
import android.webkit.WebViewClient
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
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.io.BufferedReader
import java.io.InputStreamReader
import java.net.InetAddress
import java.net.ServerSocket
import java.net.SocketException
import java.net.URLEncoder
import java.nio.charset.StandardCharsets
import java.security.MessageDigest
import java.util.concurrent.CopyOnWriteArrayList
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger
import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class NamedProfile145RejectionTest {
    @Test
    fun secondEnrollmentRejectedBeforeActivity() {
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            scenario.onActivity { activity ->
                val platform = AndroidXNamedProfilePlatform(activity)
                val current = platform.probeCapability()
                assertTrue(current is NamedProfileCapability.Supported)
                val currentSupported = current as NamedProfileCapability.Supported
                val legacy =
                    NamedProfileRuntimePolicy.evaluate(
                        currentSupported.identity.packageName,
                        "145.0.7632.218",
                    )
                assertTrue(legacy is NamedProfileRuntimeDecision.Rejected)
                assertEquals(RuntimeSupportReason.VERSION_BELOW_SAFE_FLOOR, legacy.reason)
                val capability =
                    NamedProfileCapability.Rejected(
                        requireNotNull(legacy.reason),
                        (legacy as NamedProfileRuntimeDecision.Rejected).identity,
                    )
                var mutations = 0
                val result =
                    NamedProfileEnrollmentCoordinator(
                            platform::requireUiThread,
                            { capability },
                        )
                        .enroll(1) { mutations++ }
                assertTrue(result is EnrollmentCoordinationResult.Rejected)
                assertEquals(0, mutations)
                Log.i(
                    TAG,
                    "UNSUPPORTED_145=true;CURRENT=${currentSupported.identity.versionName};ACCOUNT=0;PROFILE=0;WEBVIEW=0;NETWORK=0;STORAGE=0;PID=${Process.myPid()}",
                )
            }
        }
    }
}

@RunWith(AndroidJUnit4::class)
class NamedProfileWalIsolationTest {
    @Test fun sameRunWalIsolation() = verifySameRunWalIsolation(reverse())
}

@RunWith(AndroidJUnit4::class)
class NamedProfileErasureTest {
    @Test fun eraseOneAndFinishNormally() = stageErasure(reverse())
}

@RunWith(AndroidJUnit4::class)
class NamedProfileErasureReadTest {
    @Test fun coldReadErasedAndSibling() = readErasure(reverse())
}

@RunWith(AndroidJUnit4::class)
class NamedProfileCallbackBeforeReceiptCrashArmedTest {
    @Test
    fun crashAfterAuthorityCallbackBeforeReceipt() {
        crashAfterEraseCallback(nonce())
    }
}

@RunWith(AndroidJUnit4::class)
class NamedProfileCallbackBeforeReceiptRecoveryTest {
    @Test fun coldRecoveryCompletesPendingReceipt() = recoverCallbackCrash()
}

@RunWith(AndroidJUnit4::class)
class NamedProfileDefaultAndBindingTest {
    @Test fun defaultIsReadOnlyEmptyAndFirstRequestIsAlreadyBound() = verifyDefaultAndBinding()

    @Test fun nonAllowlistedLoopbackOriginIsRejectedBeforeRequest() = verifyLoopbackAllowlist()
}

@RunWith(AndroidJUnit4::class)
class NamedProfileProductionCatalogTest {
    @Test fun productionRepositoryThousandRowsLoadsExactlyOneProfile() =
        verifyProductionCatalog(reverse())
}

@RunWith(AndroidJUnit4::class)
class NamedProfileAuthorityProcessTest {
    @Test fun independentProcessesConvergeMonotonicallyWithoutCascade() =
        verifyIndependentAuthorityProcesses()
}

@RunWith(AndroidJUnit4::class)
class NamedProfileLifecycleInstrumentationTest {
    @Test fun missingProfileRequiresExactReauth() = verifyMissingProfileRequiresExactReauth()
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

private fun verifySameRunWalIsolation(reverse: Boolean) {
    val markers = certificationMarkers()
    val order = if (reverse) listOf(B, A) else listOf(A, B)
    val instrumentation = InstrumentationRegistry.getInstrumentation()
    val appData = instrumentation.targetContext.dataDir.toPath().toRealPath()
    val appWebView = appData.resolve("app_webview")
    val mapped = linkedMapOf<ProviderAccountId, WalProfilePath>()
    OriginServer().use { server ->
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            lateinit var manager: NamedProfileLifecycleManager
            lateinit var store: AndroidNamedProfileLifecycleStore
            scenario.onActivity { activity ->
                val priorStore =
                    AndroidNamedProfileLifecycleStore(activity, WAL_ISOLATION_DATABASE)
                val priorProfileNames =
                    priorStore.readAll().map { it.profileName.storageValue() }.toSet()
                priorStore.close()
                val profileStore = ProfileStore.getInstance()
                val unrelatedProfileNames =
                    profileStore.allProfileNames.filterNot { it in priorProfileNames }.toSet()
                priorProfileNames.forEach { profileName ->
                    if (profileName in profileStore.allProfileNames) {
                        assertTrue(profileStore.deleteProfile(profileName))
                    }
                }
                assertTrue(profileStore.allProfileNames.none { it in priorProfileNames })
                assertEquals(
                    unrelatedProfileNames,
                    profileStore.allProfileNames.filterNot { it in priorProfileNames }.toSet(),
                )
                assertTrue(activity.deleteDatabase(WAL_ISOLATION_DATABASE))
                store = AndroidNamedProfileLifecycleStore(activity, WAL_ISOLATION_DATABASE)
                manager =
                    NamedProfileLifecycleManager(
                        store,
                        AndroidXNamedProfilePlatform(activity),
                    )
            }
            order.forEach { id ->
                val before = LevelDbWalCertification.currentProfileDirectories(appWebView)
                lateinit var row: AccountProfileBinding
                lateinit var lease: NamedProfileLease
                lateinit var fixture: WalFixture
                scenario.onActivity { activity ->
                    row = manager.ensureBinding(id)
                    lease = manager.acquire(id)
                    fixture =
                        WalFixture(
                            lease.requireAndroidWebView(),
                            requireNotNull(
                                ProfileStore.getInstance().getProfile(row.profileName.storageValue())
                            ),
                        )
                    activity.setContentView(lease.requireAndroidWebView())
                    lease.requireAndroidWebView().post(fixture::start)
                }
                fixture.awaitInitialized()
                val after = LevelDbWalCertification.currentProfileDirectories(appWebView)
                mapped[id] =
                    LevelDbWalCertification.mapCreatedProfile(
                        appData,
                        appWebView,
                        before,
                        after,
                        row.profileName.storageValue(),
                    )
                val closed = CountDownLatch(1)
                scenario.onActivity {
                    lease.closeAcknowledged { result ->
                        assertEquals(LeaseCloseResult.Closed, result)
                        closed.countDown()
                    }
                }
                assertTrue(closed.await(30, TimeUnit.SECONDS))
            }
            LevelDbWalCertification.requireDistinct(mapped.values, appData)
            LevelDbWalCertification.requireMarkersAbsent(mapped.values, markers.values)

            order.forEach { id ->
                val sibling = if (id == A) B else A
                val marker = markers.getValue(id)
                lateinit var lease: NamedProfileLease
                lateinit var fixture: WalFixture
                scenario.onActivity { activity ->
                    lease = manager.acquire(id)
                    fixture =
                        WalFixture(
                            lease.requireAndroidWebView(),
                            requireNotNull(
                                ProfileStore.getInstance().getProfile(
                                    manager.binding(id)!!.profileName.storageValue()
                                )
                            ),
                        )
                    activity.setContentView(lease.requireAndroidWebView())
                    lease.requireAndroidWebView().post(fixture::start)
                }
                fixture.awaitInitialized()
                LevelDbWalCertification.arm(
                        mapped.getValue(id),
                        mapped.getValue(sibling),
                        marker,
                        markers.getValue(sibling),
                    )
                    .use { certificate ->
                        scenario.onActivity { fixture.writeLocal(marker) }
                        assertEquals(marker, fixture.awaitLocalWrite())
                        certificate.await()
                    }
                scenario.onActivity { fixture.seedRemaining(marker) }
                present(fixture.awaitCompleted(), marker)
                val closed = CountDownLatch(1)
                scenario.onActivity {
                    lease.closeAcknowledged { result ->
                        assertEquals(LeaseCloseResult.Closed, result)
                        closed.countDown()
                    }
                }
                assertTrue(closed.await(30, TimeUnit.SECONDS))
            }
            scenario.onActivity { store.close() }
        }
    }
    Log.i(
        TAG,
        "SAME_RUN_WAL_ISOLATION=true;WAL_CERTIFIED=true;EMPIRICAL_TUPLE_ONLY=true;DISTINCT_PROFILE_PATHS=true;SIBLING_MARKER_LEAKAGE=false;PID=${Process.myPid()};ORDER=${order.joinToString("") { if (it == A) "A" else "B" }};A_PATH=${mapped.getValue(A).profileDirectory.fileName};B_PATH=${mapped.getValue(B).profileDirectory.fileName};ACTIVITY_DESTROYED=true;INSTRUMENTATION_NORMAL_EXIT=true",
    )
}

private fun stageErasure(reverse: Boolean) {
    val doomed = if (reverse) B else A
    val context = InstrumentationRegistry.getInstrumentation().targetContext
    val database = "fix6-erasure-${if (reverse) "reverse" else "forward"}.db"
    context.deleteDatabase(database)
    ActivityScenario.launch(MainActivity::class.java).use { scenario ->
        val erased = CountDownLatch(1)
        lateinit var store: AndroidNamedProfileLifecycleStore
        scenario.onActivity { activity ->
            store = AndroidNamedProfileLifecycleStore(activity, database)
            val manager =
                NamedProfileLifecycleManager(
                    store,
                    AndroidXNamedProfilePlatform(activity),
                )
            manager.ensureBinding(doomed)
            assertEquals(
                ErasureRequestResult.ERASURE_PENDING,
                manager.requestErasure(doomed) { result ->
                    assertEquals(ProfileDataErasureResult.Completed, result)
                    erased.countDown()
                },
            )
        }
        assertTrue(erased.await(30, TimeUnit.SECONDS))
        scenario.onActivity { store.close() }
    }
    context.deleteDatabase(database)
    Log.i(
        TAG,
        "ERASURE_STAGED=true;PID=${Process.myPid()};DOOMED=${if (reverse) "B" else "A"};ACTIVITY_DESTROYED=true;INSTRUMENTATION_NORMAL_EXIT=true",
    )
}

private fun readErasure(reverse: Boolean) {
    val context = InstrumentationRegistry.getInstrumentation().targetContext
    val database = "fix6-erasure-read-${if (reverse) "reverse" else "forward"}.db"
    context.deleteDatabase(database)
    phase1(reverse, database)
    readPhase(reverse, "ERASURE_VERIFIED", database)
    context.deleteDatabase(database)
}

private fun nonce() =
    InstrumentationRegistry.getArguments().getString("nonce")
        ?: "local_${Process.myPid()}_${System.nanoTime()}"

private data class CallbackServiceResult(val code: Int, val pid: Int)

private fun runCallbackService(
    action: String,
    database: String,
    token: String,
    profileName: WebProfileName,
): CallbackServiceResult {
    val context = InstrumentationRegistry.getInstrumentation().targetContext
    val done = CountDownLatch(1)
    var result: Intent? = null
    val receiver =
        object : BroadcastReceiver() {
            override fun onReceive(receivedContext: Context, intent: Intent) {
                if (intent.getStringExtra(NamedProfileAuthorityProbeContract.EXTRA_TOKEN) != token)
                    return
                result = intent
                done.countDown()
            }
        }
    context.registerReceiver(
        receiver,
        IntentFilter(NamedProfileAuthorityProbeContract.ACTION_RESULT),
        Context.RECEIVER_EXPORTED,
    )
    try {
        val serviceIntent = Intent(context, NamedProfileAuthorityProbeService::class.java).apply {
            this.action = action
            putExtra(NamedProfileAuthorityProbeContract.EXTRA_DATABASE, database)
            putExtra(NamedProfileAuthorityProbeContract.EXTRA_ACCOUNT_KEY, C.accountKey.storageValue())
            putExtra(NamedProfileAuthorityProbeContract.EXTRA_PROFILE_NAME, profileName.storageValue())
            putExtra(NamedProfileAuthorityProbeContract.EXTRA_TOKEN, token)
        }
        for (attempt in 0 until 3) {
            context.startService(serviceIntent)
            if (done.await(10, TimeUnit.SECONDS)) break
        }
        assertTrue(done.count == 0L)
    } finally {
        context.unregisterReceiver(receiver)
    }
    val received = requireNotNull(result)
    val callbackResult = CallbackServiceResult(
        received.getIntExtra(NamedProfileAuthorityProbeContract.EXTRA_CODE, 0),
        received.getIntExtra(NamedProfileAuthorityProbeContract.EXTRA_PID, 0),
    )
    if (action == NamedProfileAuthorityProbeContract.ACTION_CALLBACK_BEFORE_RECEIPT_CRASH) {
        val activityManager = context.getSystemService(ActivityManager::class.java)
        repeat(100) {
            if (activityManager.runningAppProcesses.orEmpty().none { it.pid == callbackResult.pid }) {
                return callbackResult
            }
            Thread.sleep(50)
        }
        fail("callback service process did not terminate: ${callbackResult.pid}")
    }
    return callbackResult
}

private fun crashAfterEraseCallback(nonce: String) {
    val context = InstrumentationRegistry.getInstrumentation().targetContext
    val database = "fix6-callback-before-receipt.db"
    context.deleteDatabase(database)
    val token = "armed-$nonce-${System.nanoTime()}"
    val profileName = WebProfileName.fromStorage("aiq_profile_${hash(token).take(32)}")
    val armed =
        runCallbackService(
            NamedProfileAuthorityProbeContract.ACTION_CALLBACK_BEFORE_RECEIPT_CRASH,
            database,
            token,
            profileName,
        )
    assertEquals(NamedProfileAuthorityProbeContract.RESULT_CALLBACK_ARMED, armed.code)
    assertNotEquals(Process.myPid(), armed.pid)
    AndroidNamedProfileLifecycleStore(context, database).use { store ->
        assertEquals(ProfileLifecycleState.ERASURE_PENDING, store.read(C)?.state)
        assertNull(store.read(C)?.receipt)
    }
    context.deleteDatabase(database)
    Log.i(
        TAG,
        "CALLBACK_BEFORE_RECEIPT_CRASH_ARMED=$nonce;SERVICE_PID=${armed.pid};PID=${Process.myPid()};ACCOUNT=C",
    )
}

private fun recoverCallbackCrash() {
    val context = InstrumentationRegistry.getInstrumentation().targetContext
    val database = "fix6-callback-before-receipt-recovery.db"
    context.deleteDatabase(database)
    val token = "recovery-${nonce()}-${System.nanoTime()}"
    val profileName = WebProfileName.fromStorage("aiq_profile_${hash(token).take(32)}")
    val armed =
        runCallbackService(
            NamedProfileAuthorityProbeContract.ACTION_CALLBACK_BEFORE_RECEIPT_CRASH,
            database,
            token,
            profileName,
        )
    assertEquals(NamedProfileAuthorityProbeContract.RESULT_CALLBACK_ARMED, armed.code)
    AndroidNamedProfileLifecycleStore(context, database).use { store ->
        assertEquals(ProfileLifecycleState.ERASURE_PENDING, store.read(C)?.state)
    }
    assertNotEquals(armed.pid, Process.myPid())
    ActivityScenario.launch(MainActivity::class.java).use { scenario ->
        val recovered = CountDownLatch(1)
        lateinit var store: AndroidNamedProfileLifecycleStore
        scenario.onActivity { activity ->
            store = AndroidNamedProfileLifecycleStore(activity, database)
            val manager = NamedProfileLifecycleManager(store, AndroidXNamedProfilePlatform(activity))
            assertEquals(
                1,
                manager.resumePendingErasures { accountId, result ->
                    assertEquals(C, accountId)
                    assertEquals(ProfileDataErasureResult.Completed, result)
                    recovered.countDown()
                },
            )
        }
        assertTrue(recovered.await(30, TimeUnit.SECONDS))
        scenario.onActivity {
            assertEquals(
                ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED,
                store.read(C)?.state,
            )
            assertNotNull(store.read(C)?.receipt)
            store.close()
        }
    }
    context.deleteDatabase(database)
    Log.i(TAG, "CALLBACK_BEFORE_RECEIPT_RECOVERED=true;CRASHED_SERVICE_PID=${armed.pid};PID=${Process.myPid()};ACCOUNT=C")
}

private fun verifyDefaultAndBinding() {
    val context = InstrumentationRegistry.getInstrumentation().targetContext
    val database = "fix6-default-binding.db"
    context.deleteDatabase(database)
    val trace = CopyOnWriteArrayList<String>()
    OriginServer().use { server ->
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            lateinit var store: AndroidNamedProfileLifecycleStore
            lateinit var lease: NamedProfileLease
            lateinit var fixture: Fixture
            lateinit var defaultFixture: Fixture
            val firstRequest = CountDownLatch(1)
            val closed = CountDownLatch(1)
            scenario.onActivity { activity ->
                store = AndroidNamedProfileLifecycleStore(activity, database)
                val manager =
                    NamedProfileLifecycleManager(
                        store,
                        AndroidXNamedProfilePlatform(activity, trace::add),
                    )
                val row = manager.ensureBinding(D)
                lease = manager.acquire(D)
                val webView = lease.requireAndroidWebView()
                assertEquals(row.profileName.storageValue(), WebViewCompat.getProfile(webView).name)
                webView.webViewClient =
                    object : WebViewClient() {
                        override fun shouldInterceptRequest(
                            view: WebView,
                            request: WebResourceRequest,
                        ): WebResourceResponse? {
                            if (firstRequest.count > 0L) {
                                assertEquals(
                                    row.profileName.storageValue(),
                                    WebViewCompat.getProfile(view).name,
                                )
                                trace.add("request:first:${request.url.host}")
                                firstRequest.countDown()
                            }
                            return null
                        }
                    }
                fixture =
                    Fixture(
                        webView,
                        requireNotNull(ProfileStore.getInstance().getProfile(row.profileName.storageValue())),
                        server,
                        "D",
                        true,
                    )
                activity.setContentView(webView)
                fixture.start()
            }
            present(fixture.await(), "D")
            assertTrue(firstRequest.await(30, TimeUnit.SECONDS))
            scenario.onActivity {
                lease.closeAcknowledged { result ->
                    assertEquals(LeaseCloseResult.Closed, result)
                    closed.countDown()
                }
            }
            assertTrue(closed.await(30, TimeUnit.SECONDS))
            scenario.onActivity { activity ->
                val defaultWebView = WebView(activity)
                val defaultProfile = WebViewCompat.getProfile(defaultWebView)
                assertEquals(Profile.DEFAULT_PROFILE_NAME, defaultProfile.name)
                defaultFixture = Fixture(defaultWebView, defaultProfile, server, "DEFAULT", false)
                activity.setContentView(defaultWebView)
                defaultFixture.start()
            }
            absent(defaultFixture.await())
            scenario.onActivity {
                defaultFixture.destroy()
                store.close()
            }
        }
    }
    context.deleteDatabase(database)
    assertEquals(
        listOf("profile:load", "webview:create", "webview:bind"),
        trace.take(3),
    )
    assertTrue(trace.indexOfFirst { it.startsWith("request:first:") } > trace.indexOf("profile:load"))
    Log.i(TAG, "DEFAULT_READ_ONLY_EMPTY=true;FIRST_REQUEST_BOUND=true;PID=${Process.myPid()}")
}

private fun verifyMissingProfileRequiresExactReauth() {
    val context = InstrumentationRegistry.getInstrumentation().targetContext
    val database = "task2-exact-reauth.db"
    val marker = "TASK2-A-${System.nanoTime()}"
    context.deleteDatabase(database)
    val trace = CopyOnWriteArrayList<String>()
    MainProcessAccountAuthority.open(context, database).use { authority ->
        fun seed(accountId: ProviderAccountId, remaining: Int) =
            AuthorityAccountSeed(
                AccountRecord(
                    id = accountId,
                    state = AccountState.ACTIVE,
                    authState = AccountAuthState.AUTHENTICATED,
                    deletionState = AccountDeletionState.NONE,
                    generation = AccountGeneration.of(1),
                    sessionRevision = SessionRevision.of(1),
                ),
                ProviderUsageSnapshot.disconnected(accountId.providerId).copy(
                    account = "task2-$remaining@example.invalid"
                ),
            )
        authority.register(seed(A, 80))
        authority.register(seed(B, 20))
        val siblingBefore = authority.displayRecords(0, 10).single { it.account.id == A }

        OriginServer().use { server ->
            ActivityScenario.launch(MainActivity::class.java).use { scenario ->
                lateinit var manager: NamedProfileLifecycleManager
                lateinit var store: AndroidNamedProfileLifecycleStore
                lateinit var siblingLease: NamedProfileLease
                lateinit var seeded: Fixture
                val seededClosed = CountDownLatch(1)
                scenario.onActivity { activity ->
                    store = AndroidNamedProfileLifecycleStore(activity, database)
                    manager =
                        NamedProfileLifecycleManager(
                            store,
                            AndroidXNamedProfilePlatform(activity, trace::add),
                        )
                    val siblingBinding = manager.ensureBinding(A)
                    siblingLease = manager.acquire(A)
                    seeded =
                        Fixture(
                            siblingLease.requireAndroidWebView(),
                            requireNotNull(
                                ProfileStore.getInstance()
                                    .getProfile(siblingBinding.profileName.storageValue())
                            ),
                            server,
                            marker,
                            true,
                        )
                    activity.setContentView(siblingLease.requireAndroidWebView())
                    seeded.start()
                }
                present(seeded.await(), marker)
                scenario.onActivity {
                    siblingLease.closeAcknowledged { result ->
                        assertEquals(LeaseCloseResult.Closed, result)
                        seededClosed.countDown()
                    }
                }
                assertTrue(seededClosed.await(30, TimeUnit.SECONDS))

                val traceBeforeMissing = trace.toList()
                lateinit var profilesBeforeMissing: Set<String>
                lateinit var missingResult: Any
                scenario.onActivity {
                    profilesBeforeMissing = ProfileStore.getInstance().allProfileNames.toSet()
                    val acquireExact = manager.javaClass.methods.single { it.name == "acquireExact" }
                    val requireReauthentication =
                        authority.javaClass.methods.single { it.name == "requireReauthentication" }
                    missingResult =
                        requireNotNull(
                            acquireExact.invoke(
                                manager,
                                B,
                                { accountId: ProviderAccountId ->
                                    requireReauthentication.invoke(authority, accountId)
                                },
                            )
                        )
                }

                assertEquals("ReauthenticationRequired", missingResult.javaClass.simpleName)
                val records = authority.displayRecords(0, 10)
                assertEquals(siblingBefore, records.single { it.account.id == A })
                assertEquals(
                    AccountAuthState.REAUTH_REQUIRED,
                    records.single { it.account.id == B }.account.authState,
                )
                assertNull(store.read(B))
                assertEquals(traceBeforeMissing, trace.toList())
                scenario.onActivity {
                    assertEquals(
                        profilesBeforeMissing,
                        ProfileStore.getInstance().allProfileNames.toSet(),
                    )
                }

                lateinit var siblingRead: Fixture
                val readClosed = CountDownLatch(1)
                scenario.onActivity { activity ->
                    siblingLease = manager.acquire(A)
                    val siblingBinding = requireNotNull(manager.binding(A))
                    siblingRead =
                        Fixture(
                            siblingLease.requireAndroidWebView(),
                            requireNotNull(
                                ProfileStore.getInstance()
                                    .getProfile(siblingBinding.profileName.storageValue())
                            ),
                            server,
                            marker,
                            false,
                        )
                    activity.setContentView(siblingLease.requireAndroidWebView())
                    siblingRead.start()
                }
                present(siblingRead.await(), marker)
                scenario.onActivity {
                    siblingLease.closeAcknowledged { result ->
                        assertEquals(LeaseCloseResult.Closed, result)
                        readClosed.countDown()
                    }
                }
                assertTrue(readClosed.await(30, TimeUnit.SECONDS))
                scenario.onActivity { store.close() }
            }
        }
    }
    context.deleteDatabase(database)
    Log.i(
        TAG,
        "EXACT_REAUTH=true;B_STATE=REAUTH_REQUIRED;A_MARKER_UNCHANGED=true;B_REQUESTS=0;B_PROFILE_OPENS=0;DEFAULT_PROFILE_OPENS=0;REBOOT_SESSION_LOSS_ACCEPTED=true;PID=${Process.myPid()}",
    )
}

private fun verifyProductionCatalog(reverse: Boolean) {
    val instrumentation = InstrumentationRegistry.getInstrumentation()
    val context = instrumentation.targetContext
    val database = AccountAuthorityDatabase.DEFAULT_DATABASE_NAME
    context.deleteDatabase(database)
    val ids = (1..1000).map(::id)
    MainProcessAccountAuthority.open(context).use { authority ->
        ids.forEach { accountId ->
            authority.register(
                AuthorityAccountSeed(
                    AccountRecord(
                        id = accountId,
                        state = AccountState.ACTIVE,
                        authState = AccountAuthState.AUTHENTICATED,
                        deletionState = AccountDeletionState.NONE,
                        generation = AccountGeneration.of(1),
                        sessionRevision = SessionRevision.of(1),
                    ),
                    ProviderUsageSnapshot.disconnected(accountId.providerId),
                )
            )
        }
    }
    AccountUsageRepository.open(context).use { repository ->
        val records = buildList {
            var offset = 0
            while (offset < 1000) {
                val page = repository.page(offset, 250)
                addAll(page.records)
                offset = page.nextOffset ?: 1000
            }
        }
        assertEquals(ids, records.map { it.account.id })
    }

    val unrelatedName = "fix6_unrelated_profile"
    val selected = if (reverse) ids.first() else ids.last()
    OriginServer().use { server ->
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            lateinit var store: AndroidNamedProfileLifecycleStore
            lateinit var lease: NamedProfileLease
            lateinit var selectedFixture: Fixture
            lateinit var unrelatedSeed: Fixture
            lateinit var unrelatedRead: Fixture
            lateinit var unrelatedProfile: Profile
            val selectedClosed = CountDownLatch(1)
            val baseline = AtomicInteger()
            val firstRequest = CountDownLatch(1)
            scenario.onActivity { activity ->
                unrelatedProfile = ProfileStore.getInstance().getOrCreateProfile(unrelatedName)
                val unrelatedWebView = WebView(activity)
                WebViewCompat.setProfile(unrelatedWebView, unrelatedName)
                unrelatedSeed = Fixture(unrelatedWebView, unrelatedProfile, server, "U", true)
                activity.setContentView(unrelatedWebView)
                unrelatedSeed.start()
            }
            present(unrelatedSeed.await(), "U")
            scenario.onActivity { activity ->
                unrelatedSeed.destroy()
                baseline.set(ProfileStore.getInstance().allProfileNames.size)
                store = AndroidNamedProfileLifecycleStore(activity)
                val manager =
                    NamedProfileLifecycleManager(store, AndroidXNamedProfilePlatform(activity))
                val row = manager.ensureBinding(selected)
                lease = manager.acquire(selected)
                assertEquals(1, manager.liveLeaseCount(selected))
                assertEquals(baseline.get() + 1, ProfileStore.getInstance().allProfileNames.size)
                val selectedWebView = lease.requireAndroidWebView()
                selectedWebView.webViewClient =
                    object : WebViewClient() {
                        override fun shouldInterceptRequest(
                            view: WebView,
                            request: WebResourceRequest,
                        ): WebResourceResponse? {
                            if (firstRequest.count > 0L) {
                                assertEquals(
                                    row.profileName.storageValue(),
                                    WebViewCompat.getProfile(view).name,
                                )
                                firstRequest.countDown()
                            }
                            return null
                        }
                    }
                selectedFixture =
                    Fixture(
                        selectedWebView,
                        requireNotNull(ProfileStore.getInstance().getProfile(row.profileName.storageValue())),
                        server,
                        "S",
                        true,
                    )
                activity.setContentView(selectedWebView)
                selectedFixture.start()
            }
            present(selectedFixture.await(), "S")
            assertTrue(firstRequest.await(30, TimeUnit.SECONDS))
            scenario.onActivity {
                lease.closeAcknowledged { result ->
                    assertEquals(LeaseCloseResult.Closed, result)
                    selectedClosed.countDown()
                }
            }
            assertTrue(selectedClosed.await(30, TimeUnit.SECONDS))
            scenario.onActivity { activity ->
                val unrelatedWebView = WebView(activity)
                WebViewCompat.setProfile(unrelatedWebView, unrelatedName)
                unrelatedRead = Fixture(unrelatedWebView, unrelatedProfile, server, "U", false)
                activity.setContentView(unrelatedWebView)
                unrelatedRead.start()
            }
            present(unrelatedRead.await(), "U")
            scenario.onActivity {
                unrelatedRead.destroy()
                store.close()
            }
        }
    }
    context.deleteDatabase(database)
    Log.i(
        TAG,
        "PRODUCTION_CATALOG_1000=true;PROFILESTORE_PLUS_ONE=true;LIVE_LEASE_ONE=true;FIRST_REQUEST_BOUND=true;UNRELATED_EXACT=true;REVERSE=$reverse;PID=${Process.myPid()}",
    )
}

private fun verifyIndependentAuthorityProcesses() {
    val context = InstrumentationRegistry.getInstrumentation().targetContext
    val database = "fix6-authority-process.db"
    context.deleteDatabase(database)
    val remoteId = id(5)
    val localId = id(6)
    val profile = WebProfileName.fromStorage("aiq_profile_${"5".padStart(32, '0')}")
    val token = "authority-${System.nanoTime()}"
    val ready = CountDownLatch(1)
    val remoteDone = CountDownLatch(1)
    val completed = CountDownLatch(1)
    val remoteCodes = CopyOnWriteArrayList<Int>()
    val remotePids = CopyOnWriteArrayList<Int>()
    val completePid = AtomicInteger()
    val resultReceiver =
        object : BroadcastReceiver() {
            override fun onReceive(receivedContext: Context, result: Intent) {
                if (result.getStringExtra(NamedProfileAuthorityProbeContract.EXTRA_TOKEN) != token)
                    return
                val code = result.getIntExtra(NamedProfileAuthorityProbeContract.EXTRA_CODE, 0)
                val pid = result.getIntExtra(NamedProfileAuthorityProbeContract.EXTRA_PID, 0)
                remoteCodes.add(code)
                remotePids.add(pid)
                when (code) {
                    NamedProfileAuthorityProbeContract.RESULT_READY -> ready.countDown()
                    NamedProfileAuthorityProbeContract.RESULT_CREATED,
                    NamedProfileAuthorityProbeContract.RESULT_COLLISION -> remoteDone.countDown()
                    NamedProfileAuthorityProbeContract.RESULT_COMPLETED -> {
                        assertEquals(
                            ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED.name,
                            result.getStringExtra(NamedProfileAuthorityProbeContract.EXTRA_STATE),
                        )
                        completePid.set(pid)
                        completed.countDown()
                    }
                }
            }
        }
    context.registerReceiver(
        resultReceiver,
        IntentFilter(NamedProfileAuthorityProbeContract.ACTION_RESULT),
        Context.RECEIVER_EXPORTED,
    )
    context.startService(
        Intent(context, NamedProfileAuthorityProbeService::class.java).apply {
            action = NamedProfileAuthorityProbeContract.ACTION_RACE_CREATE
            putExtra(NamedProfileAuthorityProbeContract.EXTRA_DATABASE, database)
            putExtra(
                NamedProfileAuthorityProbeContract.EXTRA_ACCOUNT_KEY,
                remoteId.accountKey.storageValue(),
            )
            putExtra(NamedProfileAuthorityProbeContract.EXTRA_PROFILE_NAME, profile.storageValue())
            putExtra(NamedProfileAuthorityProbeContract.EXTRA_TOKEN, token)
        }
    )
    assertTrue(ready.await(30, TimeUnit.SECONDS))
    assertTrue(remotePids.single() != Process.myPid())

    val localDone = CountDownLatch(1)
    val localCode = AtomicInteger()
    val localThread = HandlerThread("fix6-local-authority").apply { start() }
    lateinit var localReceiver: BroadcastReceiver
    localReceiver =
        object : BroadcastReceiver() {
            override fun onReceive(receivedContext: Context, trigger: Intent) {
                if (trigger.getStringExtra(NamedProfileAuthorityProbeContract.EXTRA_TOKEN) != token)
                    return
                receivedContext.unregisterReceiver(localReceiver)
                localCode.set(
                    try {
                        AndroidNamedProfileLifecycleStore(context, database).use {
                            it.create(localId, profile)
                        }
                        NamedProfileAuthorityProbeContract.RESULT_CREATED
                    } catch (_: ProfileNameCollisionException) {
                        NamedProfileAuthorityProbeContract.RESULT_COLLISION
                    }
                )
                localDone.countDown()
            }
        }
    context.registerReceiver(
        localReceiver,
        IntentFilter(NamedProfileAuthorityProbeContract.ACTION_TRIGGER),
        null,
        Handler(localThread.looper),
        Context.RECEIVER_EXPORTED,
    )
    context.sendBroadcast(
        Intent(NamedProfileAuthorityProbeContract.ACTION_TRIGGER)
            .setPackage(context.packageName)
            .putExtra(NamedProfileAuthorityProbeContract.EXTRA_TOKEN, token)
    )
    assertTrue(localDone.await(30, TimeUnit.SECONDS))
    assertTrue(remoteDone.await(30, TimeUnit.SECONDS))
    localThread.quitSafely()
    val remoteCode = remoteCodes.last()
    assertEquals(
        setOf(
            NamedProfileAuthorityProbeContract.RESULT_CREATED,
            NamedProfileAuthorityProbeContract.RESULT_COLLISION,
        ),
        setOf(localCode.get(), remoteCode),
    )

    val winner =
        AndroidNamedProfileLifecycleStore(context, database).use { store ->
            assertEquals(1, store.readAll().size)
            store.readAll().single().also { row ->
                store.rawDatabaseForTest().execSQL(
                    "INSERT INTO accounts(provider_id,account_key,provider_rank,state,auth_state,deletion_state,generation,session_revision,modified_version) VALUES(?,?,?,?,?,?,?,?,?)",
                    arrayOf(
                        row.accountId.providerId.storageId,
                        row.accountId.accountKey.storageValue(),
                        row.accountId.providerId.ordinal,
                        AccountState.ACTIVE.name,
                        AccountAuthState.AUTHENTICATED.name,
                        AccountDeletionState.NONE.name,
                        1,
                        1,
                        1,
                    ),
                )
                store.rawDatabaseForTest().delete(
                    "accounts",
                    "provider_id=? AND account_key=?",
                    arrayOf(
                        row.accountId.providerId.storageId,
                        row.accountId.accountKey.storageValue(),
                    ),
                )
                assertEquals(row, store.read(row.accountId))
                store.markPending(row.accountId)
            }
        }
    context.startService(
        Intent(context, NamedProfileAuthorityProbeService::class.java).apply {
            action = NamedProfileAuthorityProbeContract.ACTION_COMPLETE
            putExtra(NamedProfileAuthorityProbeContract.EXTRA_DATABASE, database)
            putExtra(
                NamedProfileAuthorityProbeContract.EXTRA_ACCOUNT_KEY,
                winner.accountId.accountKey.storageValue(),
            )
            putExtra(NamedProfileAuthorityProbeContract.EXTRA_PROFILE_NAME, profile.storageValue())
            putExtra(NamedProfileAuthorityProbeContract.EXTRA_TOKEN, token)
        }
    )
    assertTrue(completed.await(30, TimeUnit.SECONDS))
    assertTrue(completePid.get() != Process.myPid())
    AndroidNamedProfileLifecycleStore(context, database).use { store ->
        assertEquals(
            ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED,
            store.read(winner.accountId)?.state,
        )
    }
    context.unregisterReceiver(resultReceiver)
    context.deleteDatabase(database)
    Log.i(
        TAG,
        "AUTHORITY_OS_PROCESS_CONCURRENT=true;UNIQUE_PROFILE=true;MONOTONIC=true;NO_ACCOUNT_CASCADE=true;MAIN_PID=${Process.myPid()};REMOTE_PID=${completePid.get()}",
    )
}

@SuppressLint("SetJavaScriptEnabled")
private fun verifyLoopbackAllowlist() {
    ActivityScenario.launch(MainActivity::class.java).use { scenario ->
        val rejected = CountDownLatch(1)
        lateinit var webView: WebView
        scenario.onActivity { activity ->
            webView = WebView(activity)
            webView.settings.javaScriptEnabled = true
            webView.webViewClient =
                object : WebViewClient() {
                    override fun onReceivedError(
                        view: WebView,
                        request: WebResourceRequest,
                        error: WebResourceError,
                    ) {
                        if (request.isForMainFrame && request.url.toString() == NEGATIVE_LOOPBACK) {
                            rejected.countDown()
                        }
                    }
                }
            activity.setContentView(webView)
            webView.loadUrl(NEGATIVE_LOOPBACK)
        }
        assertTrue(rejected.await(30, TimeUnit.SECONDS))
        scenario.onActivity {
            (webView.parent as? android.view.ViewGroup)?.removeView(webView)
            webView.destroy()
        }
    }
    Log.i(TAG, "LOOPBACK_ALLOWLIST_NEGATIVE_REJECTED=true;ORIGIN=127.0.0.2")
}

private fun phase1(
    reverse: Boolean,
    database: String = AccountAuthorityDatabase.DEFAULT_DATABASE_NAME,
) {
    OriginServer().use { server ->
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            lateinit var m: NamedProfileLifecycleManager
            lateinit var store: AndroidNamedProfileLifecycleStore
            lateinit var ra: AccountProfileBinding
            lateinit var rb: AccountProfileBinding
            lateinit var la: NamedProfileLease
            lateinit var lb: NamedProfileLease
            lateinit var fa: Fixture
            lateinit var fb: Fixture
            val doomedClosed = CountDownLatch(1)
            val survivorClosed = CountDownLatch(1)
            scenario.onActivity { a ->
                store = AndroidNamedProfileLifecycleStore(a, database)
                m =
                    NamedProfileLifecycleManager(
                        store,
                        AndroidXNamedProfilePlatform(a),
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
                a.setContentView(survivorLease.requireAndroidWebView())
                survivorLease.closeAcknowledged {
                    assertEquals(LeaseCloseResult.Closed, it)
                    survivorClosed.countDown()
                }
            }
            assertTrue(survivorClosed.await(30, TimeUnit.SECONDS))
            scenario.onActivity { a ->
                assertEquals(
                    ErasureRequestResult.ERASURE_PENDING,
                    m.requestErasure(doomed) {
                        if (it == ProfileDataErasureResult.Completed) erased.countDown()
                    },
                )
                assertEquals(ProfileLifecycleState.ERASURE_PENDING, m.binding(doomed)!!.state)
                a.setContentView(doomedLease.requireAndroidWebView())
                doomedLease.closeAcknowledged {
                    assertEquals(LeaseCloseResult.Closed, it)
                    doomedClosed.countDown()
                }
            }
            assertTrue(doomedClosed.await(30, TimeUnit.SECONDS))
            assertTrue(erased.await(30, TimeUnit.SECONDS))
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
            scenario.onActivity { store.close() }
        }
    }
}

private fun readPhase(
    reverse: Boolean,
    label: String,
    database: String = AccountAuthorityDatabase.DEFAULT_DATABASE_NAME,
) {
    val arguments = InstrumentationRegistry.getArguments()
    val markers =
        if (arguments.getString("markerA") != null || arguments.getString("markerB") != null)
            certificationMarkers()
        else mapOf(A to "A", B to "B")
    OriginServer().use { server ->
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            lateinit var m: NamedProfileLifecycleManager
            lateinit var store: AndroidNamedProfileLifecycleStore
            lateinit var rows: Map<ProviderAccountId, AccountProfileBinding>
            lateinit var erasedFixture: Fixture
            lateinit var survivorFixture: Fixture
            lateinit var survivorLease: NamedProfileLease
            val survivorClosed = CountDownLatch(1)
            val doomed = if (reverse) B else A
            val survivor = if (reverse) A else B
            scenario.onActivity { a ->
                store = AndroidNamedProfileLifecycleStore(a, database)
                m =
                    NamedProfileLifecycleManager(
                        store,
                        AndroidXNamedProfilePlatform(a),
                    )
                assertEquals(0, m.resumePendingErasures { _, _ -> })
                rows = store.readAll().associateBy { it.accountId }
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
                erasedFixture = Fixture(w, p, server, markers.getValue(doomed), false)
                a.setContentView(w)
                erasedFixture.start()
            }
            val erased = erasedFixture.await()
            absent(erased)
            scenario.onActivity { a ->
                erasedFixture.destroy()
                survivorLease = m.acquire(survivor)
                val marker = markers.getValue(survivor)
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
            present(kept, markers.getValue(survivor))
            scenario.onActivity {
                survivorLease.closeAcknowledged {
                    assertEquals(LeaseCloseResult.Closed, it)
                    survivorClosed.countDown()
                }
            }
            assertTrue(survivorClosed.await(30, TimeUnit.SECONDS))
            scenario.onActivity { store.close() }
            Log.i(
                TAG,
                "$label=true;REVERSE=$reverse;ERASED=${hash(erased.toString())};SURVIVOR=${hash(kept.toString())};PID=${Process.myPid()}",
            )
        }
    }
}

@SuppressLint("SetJavaScriptEnabled")
private class WalFixture(
    private val webView: WebView,
    private val profile: Profile,
) {
    private val initialized = CountDownLatch(1)
    private val localWritten = CountDownLatch(1)
    private val completed = CountDownLatch(1)
    private val initializationEvents = CopyOnWriteArrayList<String>()
    @Volatile private var localValue: String? = null
    @Volatile private var result: JSONObject? = null
    @Volatile private var initializationFailure: String? = null

    init {
        webView.settings.javaScriptEnabled = true
        webView.settings.domStorageEnabled = true
        webView.webViewClient =
            object : WebViewClient() {
                override fun onPageStarted(view: WebView, url: String, favicon: Bitmap?) {
                    initializationEvents += "page-started:$url"
                }

                override fun onPageFinished(view: WebView, url: String) {
                    initializationEvents += "page-finished:$url"
                    view.evaluateJavascript(
                        "typeof AndroidWal + ':' + typeof AndroidWal.initialized",
                    ) { value -> initializationEvents += "bridge:$value" }
                }

                override fun onReceivedError(
                    view: WebView,
                    request: WebResourceRequest,
                    error: WebResourceError,
                ) {
                    if (request.isForMainFrame) {
                        initializationFailure =
                            "navigation:${error.errorCode}:${error.description}"
                        initializationEvents += requireNotNull(initializationFailure)
                        initialized.countDown()
                    }
                }

                override fun onReceivedHttpError(
                    view: WebView,
                    request: WebResourceRequest,
                    errorResponse: WebResourceResponse,
                ) {
                    if (request.isForMainFrame) {
                        initializationFailure = "http:${errorResponse.statusCode}"
                        initializationEvents += requireNotNull(initializationFailure)
                        initialized.countDown()
                    }
                }
            }
        webView.addJavascriptInterface(
            object {
                @JavascriptInterface
                fun initialized() {
                    initializationEvents += "bridge-initialized"
                    initialized.countDown()
                }

                @JavascriptInterface
                fun initializationFailed(reason: String) {
                    initializationFailure = "javascript:$reason"
                    initializationEvents += requireNotNull(initializationFailure)
                    initialized.countDown()
                }

                @JavascriptInterface
                fun localWritten(value: String) {
                    localValue = value
                    localWritten.countDown()
                }

                @JavascriptInterface
                fun completed(raw: String) {
                    val parsed = JSONObject(raw)
                    val marker = parsed.optString("local")
                    parsed.put(
                        "cookie",
                        if (
                            profile.cookieManager
                                .getCookie(ORIGIN)
                                .orEmpty()
                                .contains("m=$marker")
                        ) marker else "",
                    )
                    result = parsed
                    completed.countDown()
                }
            },
            "AndroidWal",
        )
    }

    fun start() = webView.loadUrl("$ORIGIN/wal")

    fun awaitInitialized() {
        assertTrue(
            "WAL fixture initialization timed out events=$initializationEvents",
            initialized.await(25, TimeUnit.SECONDS),
        )
        check(initializationFailure == null) {
            "WAL fixture initialization failed reason=$initializationFailure events=$initializationEvents"
        }
    }

    fun writeLocal(marker: String) {
        webView.evaluateJavascript("window.aiqWriteLocal(${JSONObject.quote(marker)})", null)
    }

    fun awaitLocalWrite(): String {
        assertTrue("localStorage write acknowledgement timed out", localWritten.await(25, TimeUnit.SECONDS))
        return requireNotNull(localValue)
    }

    fun seedRemaining(marker: String) {
        webView.evaluateJavascript("window.aiqSeedRemaining(${JSONObject.quote(marker)})", null)
    }

    fun awaitCompleted(): JSONObject {
        assertTrue("remaining surface seed timed out", completed.await(30, TimeUnit.SECONDS))
        return requireNotNull(result)
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

    fun start() =
        w.loadUrl(
            "$ORIGIN/state?marker=${URLEncoder.encode(marker, StandardCharsets.UTF_8.name())}&seed=$seed"
        )

    fun await(): JSONObject {
        assertTrue(done.await(25, TimeUnit.SECONDS))
        return requireNotNull(value)
    }

    fun destroy() {
        (w.parent as? android.view.ViewGroup)?.removeView(w)
        w.destroy()
    }
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
                    "/wal" -> WAL_HTML
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

private fun certificationMarkers(): Map<ProviderAccountId, String> {
    val arguments = InstrumentationRegistry.getArguments()
    val run = "${Process.myPid()}_${System.nanoTime()}"
    val markerA = arguments.getString("markerA") ?: "LSCERT:${run}:A:${hash("A:$run")}"
    val markerB = arguments.getString("markerB") ?: "LSCERT:${run}:B:${hash("B:$run")}"
    val pattern = Regex("LSCERT:[A-Za-z0-9_-]+:[AB]:[0-9a-f]{64}")
    require(pattern.matches(markerA) && pattern.matches(markerB)) {
        "markers must be independent 256-bit ASCII certification values"
    }
    require(markerA != markerB && ":A:" in markerA && ":B:" in markerB)
    return mapOf(A to markerA, B to markerB)
}

private fun id(i: Int) =
    ProviderAccountId(
        ProviderId.CLAUDE,
        AccountKey.parseOpaque("acct_${i.toString(16).padStart(32,'0')}"),
    )

private val A = id(1)
private val B = id(2)
private val C = id(3)
private val D = id(4)
private const val WAL_ISOLATION_DATABASE = "task3_persistence_fixture.db"
private const val ORIGIN = "http://127.0.0.1:18765"
private const val NEGATIVE_LOOPBACK = "http://127.0.0.2:18765/blocked"
private const val TAG = "NamedProfileFix5"

private fun hash(v: String) =
    MessageDigest.getInstance("SHA-256").digest(v.toByteArray()).joinToString("") {
        "%02x".format(it)
    }

private const val SW =
    "self.addEventListener('install',e=>self.skipWaiting());self.addEventListener('activate',e=>e.waitUntil(self.clients.claim()));self.addEventListener('message',e=>e.ports[0].postMessage('ACK'));"
private const val WAL_HTML =
    """<!doctype html><script>
    (()=>{
      try {
      const openDb=()=>new Promise((ok,no)=>{const r=indexedDB.open('fix5',1);r.onupgradeneeded=()=>r.result.createObjectStore('m');r.onerror=()=>no(r.error);r.onsuccess=()=>ok(r.result)});
      const tx=(db,mode,fn)=>new Promise((ok,no)=>{const t=db.transaction('m',mode,{durability:'strict'}),r=fn(t.objectStore('m'));t.oncomplete=()=>ok(r.result);t.onerror=()=>no(t.error);t.onabort=()=>no(t.error)});
      window.aiqWriteLocal=m=>{localStorage.setItem('m',m);AndroidWal.localWritten(localStorage.getItem('m')||'')};
      window.aiqSeedRemaining=async m=>{try{document.cookie='m='+m+'; Path=/; SameSite=Strict';const db=await openDb();await tx(db,'readwrite',s=>s.put(m,'m'));const c=await caches.open('fix5');await c.put('/cache',new Response(m));if(await(await c.match('/cache')).text()!==m)throw Error('cache');await navigator.serviceWorker.register('/sw.js');const ready=await navigator.serviceWorker.ready;await new Promise((ok,no)=>{const ch=new MessageChannel();ch.port1.onmessage=e=>e.data==='ACK'?ok():no();ready.active.postMessage('x',[ch.port2])});const idb=await tx(db,'readonly',s=>s.get('m')),cached=await caches.match('/cache'),reg=await navigator.serviceWorker.getRegistration();AndroidWal.completed(JSON.stringify({local:localStorage.getItem('m')||'',idb:idb||'',cache:cached?await cached.text():'',sw:reg&&reg.active?'ACK':''}))}catch(e){AndroidWal.completed(JSON.stringify({error:String(e)}))}};
      const k='__aiq_wal_init__';localStorage.setItem(k,'ready');if(localStorage.getItem(k)!=='ready')throw Error('init');localStorage.removeItem(k);window.__AIQ_PROFILE_PERSISTENCE_READY__=true;AndroidWal.initialized();
      } catch(e) { AndroidWal.initializationFailed(String(e)); }
    })();
    </script>"""
private const val HTML =
    """<!doctype html><script>(async()=>{const q=new URLSearchParams(location.search),m=q.get('marker'),seed=q.get('seed')==='true';const dbs=await indexedDB.databases();let db=null;if(seed||dbs.some(x=>x.name==='fix5'))db=await new Promise((ok,no)=>{const r=indexedDB.open('fix5',1);r.onupgradeneeded=()=>r.result.createObjectStore('m');r.onerror=()=>no(r.error);r.onsuccess=()=>ok(r.result)});const tx=(mode,fn)=>new Promise((ok,no)=>{const t=db.transaction('m',mode,{durability:'strict'}),r=fn(t.objectStore('m'));t.oncomplete=()=>ok(r.result);t.onerror=()=>no(t.error);t.onabort=()=>no(t.error)});if(seed){document.cookie='m='+m+'; Path=/; SameSite=Strict';localStorage.setItem('m',m);if(localStorage.getItem('m')!==m)throw Error('local');await tx('readwrite',s=>s.put(m,'m'));const c=await caches.open('fix5');await c.put('/cache',new Response(m));if(await(await c.match('/cache')).text()!==m)throw Error('cache');await navigator.serviceWorker.register('/sw.js');const ready=await navigator.serviceWorker.ready;await new Promise((ok,no)=>{const ch=new MessageChannel();ch.port1.onmessage=e=>e.data==='ACK'?ok():no();ready.active.postMessage('x',[ch.port2])})}const idb=db?await tx('readonly',s=>s.get('m')):null,cached=await caches.match('/cache'),reg=await navigator.serviceWorker.getRegistration();window.__AIQ_PROFILE_PERSISTENCE_READY__=true;AndroidResult.complete(JSON.stringify({local:localStorage.getItem('m')||'',idb:idb||'',cache:cached?await cached.text():'',sw:reg&&reg.active?'ACK':''}))})().catch(e=>AndroidResult.complete(JSON.stringify({error:String(e)})))</script>"""
