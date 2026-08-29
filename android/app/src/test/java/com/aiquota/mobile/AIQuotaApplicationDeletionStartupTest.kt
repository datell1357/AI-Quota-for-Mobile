package com.aiquota.mobile

import android.app.Application
import android.app.Instrumentation
import android.content.ComponentName
import android.content.Context
import android.database.sqlite.SQLiteDatabase
import android.os.Bundle
import androidx.test.core.app.ApplicationProvider
import androidx.test.platform.app.InstrumentationRegistry
import androidx.work.Configuration
import androidx.work.WorkInfo
import androidx.work.WorkManager
import androidx.work.impl.WorkManagerImpl
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountAuthorityDatabase
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.AuthorityAccountSeed
import com.aiquota.mobile.accounts.MainProcessAccountAuthority
import com.aiquota.mobile.accounts.MainProcessAccountFeature
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderCardDeletionResult
import com.aiquota.mobile.accounts.ProviderCardDeletionStep
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.google.firebase.FirebaseApp
import com.google.firebase.FirebaseOptions
import com.google.firebase.appcheck.FirebaseAppCheck
import com.google.firebase.appcheck.debug.DebugAppCheckProviderFactory
import com.google.firebase.appcheck.internal.DefaultFirebaseAppCheck
import com.google.firebase.components.ComponentDiscoveryService
import java.lang.reflect.Modifier
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import org.junit.After
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertSame
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.Implementation
import org.robolectric.annotation.Implements
import org.robolectric.shadows.ShadowApplication
import org.robolectric.shadows.ShadowProcess

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [35], application = Application::class)
class AIQuotaApplicationMainEnabledDeletionTest : FinalApplicationRouteTest() {
    @Test
    fun finalOnCreateMainEnabledResumesExactPendingDeletionWithoutStartingComponents() {
        val before = seedPending()
        val app = startFinalApplication(mainProcessName)

        MainProcessAccountAuthority.open(app).use { authority ->
            assertEquals(ProviderCardDeletionStep.ERASED, authority.providerCardDeletion(Fixture.ID)?.step)
            assertEquals(AccountDeletionState.ERASED, authority.catalog(0, 10).records.single().deletionState)
            assertTrue(authority.displayVersion().value > before.version)
        }
        assertTrue(MainProcessAccountFeature.deletionApi().delete(Fixture.ID) is ProviderCardDeletionResult.Completed)
        assertNoStartedComponents(app)
        assertFirebaseInstalled()
        assertUpdateWorkScheduled(app)
    }
}

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [35], application = Application::class)
class AIQuotaApplicationNonMainDeletionTest : FinalApplicationRouteTest() {
    @Test
    fun finalOnCreateNonMainLeavesPendingDatabaseByteIdenticalAndSkipsMainStartup() {
        val before = seedPending()
        val app = startFinalApplication("$mainProcessName:worker")

        assertPendingUnchanged(app, before)
        assertThrows(IllegalStateException::class.java) { MainProcessAccountFeature.deletionApi() }
        assertNoStartedComponents(app)
        assertFirebaseAbsent()
        assertUpdateWorkAbsent(app)
    }
}

@RunWith(RobolectricTestRunner::class)
@Config(
    sdk = [35],
    application = Application::class,
    shadows = [DisabledMultiAccountStartupGateShadow::class],
)
class AIQuotaApplicationFeatureDisabledDeletionTest : FinalApplicationRouteTest() {
    @Test
    fun finalOnCreateMainProductionGateDisabledLeavesPendingDatabaseByteIdentical() {
        val before = seedPending()
        val app = startFinalApplication(mainProcessName)

        assertPendingUnchanged(app, before)
        assertThrows(IllegalStateException::class.java) { MainProcessAccountFeature.deletionApi() }
        assertNoStartedComponents(app)
        assertFirebaseInstalled()
        assertUpdateWorkScheduled(app)
    }
}

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [35], application = Application::class)
class AIQuotaApplicationGlmIsolatedDeletionTest : FinalApplicationRouteTest() {
    @Test
    fun finalOnCreateRealGlmProcessDetectionReturnsBeforeMainStartup() {
        val before = seedPending()
        val app = startFinalApplication("$mainProcessName:glm_webview")

        assertPendingUnchanged(app, before)
        assertThrows(IllegalStateException::class.java) { MainProcessAccountFeature.deletionApi() }
        assertNoStartedComponents(app)
        assertFirebaseAbsent()
        assertUpdateWorkAbsent(app)
    }
}

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [35], application = Application::class)
class AIQuotaApplicationFinalArchitectureTest {
    @Test
    fun applicationIsFinalAndHasNoOverridableStartupHooks() {
        assertTrue(Modifier.isFinal(AIQuotaApplication::class.java.modifiers))
        val overridable = AIQuotaApplication::class.java.declaredMethods.filter { method ->
            Modifier.isProtected(method.modifiers) && !Modifier.isFinal(method.modifiers)
        }
        assertTrue(overridable.isEmpty())
        assertTrue(Modifier.isFinal(MultiAccountStartupGate::class.java.modifiers))
    }
}

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [35], application = Application::class)
class FinalApplicationRouteLifecycleTest : FinalApplicationRouteTest() {
    @Test
    fun teardownTerminatesOwnedWorkManagerExecutorsAndClearsDelegate() {
        startFinalApplication(mainProcessName)
        val workManager = WorkManagerImpl.getInstance(base)
        val workerExecutor = workManager.configuration.executor as ExecutorService
        val taskExecutor = workManager.configuration.taskExecutor as ExecutorService

        tearDownRoute()

        assertEquals(2, workStatesAtTeardown.size)
        assertTrue(workStatesAtTeardown.all { it == WorkInfo.State.CANCELLED })
        assertTrue("WorkManager worker executor survived fixture teardown", workerExecutor.isTerminated)
        assertTrue("WorkManager task executor survived fixture teardown", taskExecutor.isTerminated)
        assertFalse("WorkManager delegate survived fixture teardown", WorkManagerImpl.isInitialized())
    }

    @Test
    fun teardownDeletesFirebaseAppCreatedByFixture() {
        assertTrue(FirebaseApp.getApps(base).any { it.name == FirebaseApp.DEFAULT_APP_NAME })

        tearDownRoute()

        assertTrue("Firebase app created by fixture survived teardown", FirebaseApp.getApps(base).isEmpty())
    }

    @Test
    fun teardownClosesWorkManagerDatabase() {
        val workManager = WorkManagerImpl.getInstance(base)
        workManager.getWorkInfosForUniqueWork("fixture-opens-database").get(10, TimeUnit.SECONDS)
        val workDatabase = workManager.javaClass.getMethod("getWorkDatabase").invoke(workManager)
        assertTrue(workDatabase.javaClass.getMethod("isOpen").invoke(workDatabase) as Boolean)

        tearDownRoute()

        assertFalse(
            "WorkManager database survived fixture teardown",
            workDatabase.javaClass.getMethod("isOpen").invoke(workDatabase) as Boolean,
        )
    }
}

@Implements(MultiAccountStartupGate::class)
class DisabledMultiAccountStartupGateShadow {
    companion object {
        @Implementation
        @JvmStatic
        fun isEnabled(): Boolean = false
    }
}

open class FinalApplicationRouteTest {
    protected lateinit var base: Application
    protected var workStatesAtTeardown: List<WorkInfo.State> = emptyList()
    private var workerExecutor: ExecutorService? = null
    private var taskExecutor: ExecutorService? = null
    private var workManager: WorkManagerImpl? = null
    private var workManagerTaskExecutor: WorkManagerTaskExecutor? = null
    private var ownedFirebaseApp: FirebaseApp? = null

    @Before
    fun setUpRoute() {
        base = ApplicationProvider.getApplicationContext()
        installFirebaseComponentMetadata()
        workerExecutor = Executors.newSingleThreadExecutor()
        taskExecutor = Executors.newSingleThreadExecutor()
        val workConfiguration = Configuration.Builder()
            .setExecutor(checkNotNull(workerExecutor))
            .setTaskExecutor(checkNotNull(taskExecutor))
            .build()
        workManagerTaskExecutor = WorkManagerTaskExecutor(workConfiguration.taskExecutor)
        val createTestWorkManager = Class.forName("androidx.work.impl.WorkManagerImplExtKt")
            .getMethod(
                "createTestWorkManager",
                Context::class.java,
                Configuration::class.java,
                androidx.work.impl.utils.taskexecutor.TaskExecutor::class.java,
            )
        workManager = createTestWorkManager.invoke(
            null,
            base,
            workConfiguration,
            checkNotNull(workManagerTaskExecutor),
        ) as WorkManagerImpl
        WorkManagerImpl.setDelegate(checkNotNull(workManager))
        if (FirebaseApp.getApps(base).none { it.name == FirebaseApp.DEFAULT_APP_NAME }) {
            ownedFirebaseApp = FirebaseApp.initializeApp(
                base,
                FirebaseOptions.Builder()
                    .setApplicationId("1:123456789:android:robolectric")
                    .setApiKey("robolectric-api-key")
                    .setProjectId("robolectric-project")
                    .build(),
            )
        }
        appCheck().resetAppCheckState()
        MainProcessAccountFeature.resetForTest()
        Fixture.cleanup(base)
        setProcess(mainProcessName)
    }

    private fun installFirebaseComponentMetadata() {
        val component = ComponentName(base, ComponentDiscoveryService::class.java)
        val packageManager = shadowOf(base.packageManager)
        val service = packageManager.addServiceIfNotPresent(component).apply {
            applicationInfo = base.applicationInfo
            packageName = base.packageName
            name = ComponentDiscoveryService::class.java.name
            metaData = Bundle().apply {
                listOf(
                    "com.google.firebase.auth.FirebaseAuthRegistrar",
                    "com.google.firebase.functions.FirebaseFunctionsKtxRegistrar",
                    "com.google.firebase.functions.FunctionsRegistrar",
                    "com.google.firebase.iid.Registrar",
                    "com.google.firebase.appcheck.debug.FirebaseAppCheckDebugRegistrar",
                    "com.google.firebase.appcheck.playintegrity.FirebaseAppCheckPlayIntegrityRegistrar",
                    "com.google.firebase.appcheck.FirebaseAppCheckKtxRegistrar",
                    "com.google.firebase.appcheck.FirebaseAppCheckRegistrar",
                    "com.google.firebase.installations.FirebaseInstallationsKtxRegistrar",
                    "com.google.firebase.installations.FirebaseInstallationsRegistrar",
                    "com.google.firebase.ktx.FirebaseCommonLegacyRegistrar",
                    "com.google.firebase.FirebaseCommonKtxRegistrar",
                ).forEach { registrar ->
                    putString(
                        "com.google.firebase.components:$registrar",
                        "com.google.firebase.components.ComponentRegistrar",
                    )
                }
            }
        }
        packageManager.addOrUpdateService(service)
    }

    @After
    fun tearDownRoute() {
        MainProcessAccountFeature.resetForTest()
        val manager = workManager
        if (manager != null) {
            WorkManager.getInstance(base).cancelAllWork().result.get(10, TimeUnit.SECONDS)
            workStatesAtTeardown = listOf(
                "ai_quota_app_update_check_now",
                "ai_quota_app_update_check",
            ).flatMap { name ->
                manager.getWorkInfosForUniqueWork(name).get(10, TimeUnit.SECONDS)
            }.map { it.state }
            val workDatabase = manager.javaClass.getMethod("getWorkDatabase").invoke(manager)
            workDatabase.javaClass.getMethod("close").invoke(workDatabase)
            WorkManagerImpl.setDelegate(null)
            workManager = null
            workManagerTaskExecutor = null
        }
        ownedFirebaseApp?.delete()
        ownedFirebaseApp = null
        shutdown(workerExecutor)
        workerExecutor = null
        shutdown(taskExecutor)
        taskExecutor = null
        Fixture.cleanup(base)
    }

    private fun shutdown(executor: ExecutorService?) {
        executor ?: return
        executor.shutdown()
        check(executor.awaitTermination(10, TimeUnit.SECONDS)) {
            "Owned WorkManager executor did not terminate"
        }
    }

    protected fun seedPending(): Fixture.State = Fixture.seed(base)

    protected fun startFinalApplication(processName: String): AIQuotaApplication {
        setProcess(processName)
        val instrumentation = InstrumentationRegistry.getInstrumentation()
        val application = instrumentation.newApplication(
            AIQuotaApplication::class.java.classLoader,
            AIQuotaApplication::class.java.name,
            base,
        ) as AIQuotaApplication
        instrumentation.callApplicationOnCreate(application)
        return application
    }

    protected fun assertPendingUnchanged(context: Context, before: Fixture.State) {
        setProcess(mainProcessName)
        MainProcessAccountAuthority.open(context).use { authority ->
            assertArrayEquals(before.bytes, authority.canonicalDumpForTest())
            assertEquals(before.version, authority.displayVersion().value)
            assertEquals(
                ProviderCardDeletionStep.COMPATIBILITY_CLEARED,
                authority.providerCardDeletion(Fixture.ID)?.step,
            )
            assertEquals(
                AccountDeletionState.ERASURE_PENDING,
                authority.catalog(0, 10).records.single().deletionState,
            )
        }
    }

    protected fun assertNoStartedComponents(application: Application) {
        assertNull(shadowOf(application).nextStartedActivity)
        assertNull(shadowOf(application).nextStartedService)
    }

    protected fun assertFirebaseInstalled() {
        assertSame(
            DebugAppCheckProviderFactory.getInstance(),
            appCheck().installedAppCheckProviderFactory,
        )
    }

    protected fun assertFirebaseAbsent() {
        assertNull(appCheck().installedAppCheckProviderFactory)
    }

    private fun appCheck(): DefaultFirebaseAppCheck =
        FirebaseAppCheck.getInstance() as DefaultFirebaseAppCheck

    protected fun assertUpdateWorkScheduled(context: Context) {
        val workManager = WorkManager.getInstance(context)
        assertFalse(
            workManager.getWorkInfosForUniqueWork("ai_quota_app_update_check_now")
                .get(10, TimeUnit.SECONDS)
                .isEmpty()
        )
        assertFalse(
            workManager.getWorkInfosForUniqueWork("ai_quota_app_update_check")
                .get(10, TimeUnit.SECONDS)
                .isEmpty()
        )
    }

    protected fun assertUpdateWorkAbsent(context: Context) {
        val workManager = WorkManager.getInstance(context)
        assertTrue(
            workManager.getWorkInfosForUniqueWork("ai_quota_app_update_check_now")
                .get(10, TimeUnit.SECONDS)
                .isEmpty()
        )
        assertTrue(
            workManager.getWorkInfosForUniqueWork("ai_quota_app_update_check")
                .get(10, TimeUnit.SECONDS)
                .isEmpty()
        )
    }

    private fun setProcess(name: String) {
        ShadowApplication.setProcessName(name)
        ShadowProcess.setProcessName(name)
    }

    protected val mainProcessName: String
        get() = base.applicationInfo.processName
}

object Fixture {
    val ID = ProviderAccountId(ProviderId.CURSOR, AccountKey.reservedDefault())

    data class State(val bytes: ByteArray, val version: Long)

    fun seed(context: Context): State {
        cleanup(context)
        MainProcessAccountAuthority.open(context).use { authority ->
            authority.register(
                AuthorityAccountSeed(
                    AccountRecord(
                        ID,
                        AccountState.ACTIVE,
                        AccountAuthState.SIGNED_OUT,
                        AccountDeletionState.NONE,
                        AccountGeneration.of(1),
                        SessionRevision.of(1),
                    ),
                    ProviderUsageSnapshot(
                        providerId = ID.providerId,
                        connectionState = ProviderConnectionState.DISCONNECTED,
                        updatedAt = "2026-08-28T00:00:00Z",
                        statusUpdatedAt = "2026-08-28T00:00:00Z",
                    ),
                )
            )
        }
        raw(context).use { db ->
            db.execSQL(
                "UPDATE accounts SET state='DELETED',auth_state='SIGNED_OUT',deletion_state='ERASURE_PENDING' " +
                    "WHERE provider_id=? AND account_key=?",
                arrayOf(ID.providerId.storageId, ID.accountKey.storageValue()),
            )
            db.execSQL(
                "UPDATE provider_card_catalog SET active_rank=NULL WHERE provider_id=? AND account_key=?",
                arrayOf(ID.providerId.storageId, ID.accountKey.storageValue()),
            )
            db.execSQL(
                "INSERT INTO provider_card_deletion_journal(" +
                    "provider_id,account_key,step,failure,journal_revision,authority_version) " +
                    "VALUES(?,?,'COMPATIBILITY_CLEARED',NULL,9,1)",
                arrayOf(ID.providerId.storageId, ID.accountKey.storageValue()),
            )
        }
        return MainProcessAccountAuthority.open(context).use { authority ->
            State(authority.canonicalDumpForTest(), authority.displayVersion().value)
        }
    }

    fun cleanup(context: Context) {
        context.deleteDatabase(AccountAuthorityDatabase.DEFAULT_DATABASE_NAME)
    }

    private fun raw(context: Context): SQLiteDatabase = SQLiteDatabase.openDatabase(
        context.getDatabasePath(AccountAuthorityDatabase.DEFAULT_DATABASE_NAME).path,
        null,
        SQLiteDatabase.OPEN_READWRITE,
    )
}
