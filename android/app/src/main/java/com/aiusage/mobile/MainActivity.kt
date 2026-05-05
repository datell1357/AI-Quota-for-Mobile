package com.aiusage.mobile

import android.app.Activity.RESULT_OK
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.aiusage.mobile.sync.SnapshotDevice
import com.aiusage.mobile.sync.SnapshotProviderUsage
import com.aiusage.mobile.sync.SnapshotUsageLimitLine
import com.aiusage.mobile.sync.SnapshotRefreshResult
import com.aiusage.mobile.sync.SnapshotRepository
import com.aiusage.mobile.sync.SnapshotStatus
import com.google.android.gms.auth.api.signin.GoogleSignIn
import com.google.android.gms.auth.api.signin.GoogleSignInOptions
import com.google.android.gms.common.api.ApiException
import com.google.firebase.auth.FirebaseAuth
import com.google.firebase.auth.FirebaseUser
import com.google.firebase.auth.GoogleAuthProvider
import kotlinx.coroutines.launch

class MainActivity : ComponentActivity() {
    private val repository by lazy { SnapshotRepository(applicationContext) }
    private val auth by lazy { FirebaseAuth.getInstance() }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MaterialTheme {
                AIUsageApp(
                    activity = this,
                    auth = auth,
                    repository = repository
                )
            }
        }
    }

    fun googleSignInOptions(): GoogleSignInOptions {
        return GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN)
            .requestEmail()
            .requestIdToken(getString(R.string.default_web_client_id))
            .build()
    }
}

@Composable
fun AIUsageApp(
    activity: MainActivity,
    auth: FirebaseAuth,
    repository: SnapshotRepository
) {
    var currentUser by remember { mutableStateOf(auth.currentUser) }
    var authMessage by remember { mutableStateOf<String?>(null) }
    var signingIn by remember { mutableStateOf(false) }
    var refreshingSnapshot by remember { mutableStateOf(false) }
    var snapshotResult by remember { mutableStateOf<SnapshotRefreshResult?>(null) }
    var snapshotMessage by remember { mutableStateOf<String?>(null) }
    var deviceList by remember { mutableStateOf<List<SnapshotDevice>>(emptyList()) }
    var selectedDeviceId by remember { mutableStateOf<String?>(null) }
    var renameDraft by remember { mutableStateOf("") }
    var showSettings by remember { mutableStateOf(false) }
    val coroutineScope = rememberCoroutineScope()

    fun loadDevices(uid: String) {
        coroutineScope.launch {
            val devices = repository.listDevices(uid)
            deviceList = devices
            val selected = selectedDeviceId?.takeIf { id -> devices.any { it.deviceId == id } }
                ?: devices.firstOrNull()?.deviceId
            selectedDeviceId = selected
            renameDraft = devices.firstOrNull { it.deviceId == selected }?.deviceName.orEmpty()
        }
    }

    fun refreshLatestSnapshot(uid: String) {
        refreshingSnapshot = true
        snapshotMessage = null
        coroutineScope.launch {
            try {
                val result = repository.refreshLatestSnapshot(uid, selectedDeviceId)
                snapshotResult = result
                selectedDeviceId = result.deviceId ?: selectedDeviceId
                snapshotMessage = result.message
                loadDevices(uid)
            } catch (error: Throwable) {
                snapshotMessage = error.message ?: "Could not refresh latest snapshot"
            } finally {
                refreshingSnapshot = false
            }
        }
    }

    val googleLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.StartActivityForResult()
    ) { result ->
        if (result.resultCode != RESULT_OK) {
            signingIn = false
            authMessage = "Google sign-in was cancelled"
            return@rememberLauncherForActivityResult
        }

        val task = GoogleSignIn.getSignedInAccountFromIntent(result.data)
        try {
            val account = task.getResult(ApiException::class.java)
            val credential = GoogleAuthProvider.getCredential(account.idToken, null)
            auth.signInWithCredential(credential)
                .addOnSuccessListener {
                    signingIn = false
                    authMessage = null
                    currentUser = auth.currentUser
                }
                .addOnFailureListener { error ->
                    signingIn = false
                    authMessage = error.message ?: "Google sign-in failed"
                }
        } catch (error: ApiException) {
            signingIn = false
            authMessage = error.localizedMessage ?: "Google sign-in failed"
        }
    }

    DisposableEffect(auth) {
        val listener = FirebaseAuth.AuthStateListener { firebaseAuth ->
            currentUser = firebaseAuth.currentUser
            if (firebaseAuth.currentUser == null) {
                snapshotResult = null
                snapshotMessage = null
                deviceList = emptyList()
                selectedDeviceId = null
                renameDraft = ""
            }
        }
        auth.addAuthStateListener(listener)
        onDispose { auth.removeAuthStateListener(listener) }
    }

    LaunchedEffect(currentUser?.uid) {
        val uid = currentUser?.uid ?: return@LaunchedEffect
        loadDevices(uid)
        refreshLatestSnapshot(uid)
        repository.enqueueRefresh(uid)
    }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(Color(0xFFF8FAFC))
            .verticalScroll(rememberScrollState())
            .padding(20.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        authMessage?.let { Text(it, style = MaterialTheme.typography.bodyMedium) }

        if (currentUser == null) {
            Text("AI Usage", style = MaterialTheme.typography.headlineMedium)
            Button(
                onClick = {
                    signingIn = true
                    authMessage = null
                    val googleIntent = GoogleSignIn.getClient(
                        activity,
                        activity.googleSignInOptions()
                    ).signInIntent
                    googleLauncher.launch(googleIntent)
                },
                modifier = Modifier.fillMaxWidth()
            ) {
                Text(if (signingIn) "Signing in..." else "Continue with Google")
            }
            return@Column
        }

        SignedInContent(
            user = currentUser,
            deviceList = deviceList,
            selectedDeviceId = selectedDeviceId,
            renameDraft = renameDraft,
            snapshotResult = snapshotResult,
            snapshotMessage = snapshotMessage,
            refreshingSnapshot = refreshingSnapshot,
            showSettings = showSettings,
            onSelectDevice = { device ->
                selectedDeviceId = device.deviceId
                renameDraft = device.deviceName
                currentUser?.uid?.let(::refreshLatestSnapshot)
            },
            onRenameDraftChanged = { renameDraft = it },
            onSaveDeviceName = {
                val uid = currentUser?.uid ?: return@SignedInContent
                val deviceId = selectedDeviceId ?: return@SignedInContent
                coroutineScope.launch {
                    try {
                        repository.updateDeviceName(uid, deviceId, renameDraft)
                        snapshotMessage = "Device name updated"
                        loadDevices(uid)
                        refreshLatestSnapshot(uid)
                    } catch (error: Throwable) {
                        snapshotMessage = error.message ?: "Could not update device name"
                    }
                }
            },
            onRefreshSnapshot = {
                currentUser?.uid?.let(::refreshLatestSnapshot)
            },
            onToggleSettings = {
                showSettings = !showSettings
            },
            onSignOut = {
                auth.signOut()
                GoogleSignIn.getClient(activity, activity.googleSignInOptions()).signOut()
                signingIn = false
                authMessage = null
                snapshotResult = null
                snapshotMessage = null
                deviceList = emptyList()
                selectedDeviceId = null
                renameDraft = ""
                showSettings = false
            }
        )
    }
}

@Composable
private fun SignedInContent(
    user: FirebaseUser?,
    deviceList: List<SnapshotDevice>,
    selectedDeviceId: String?,
    renameDraft: String,
    snapshotResult: SnapshotRefreshResult?,
    snapshotMessage: String?,
    refreshingSnapshot: Boolean,
    showSettings: Boolean,
    onSelectDevice: (SnapshotDevice) -> Unit,
    onRenameDraftChanged: (String) -> Unit,
    onSaveDeviceName: () -> Unit,
    onRefreshSnapshot: () -> Unit,
    onToggleSettings: () -> Unit,
    onSignOut: () -> Unit
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column {
            Text("AI Usage", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
            Text(
                snapshotResult?.deviceName ?: deviceList.firstOrNull { it.deviceId == selectedDeviceId }?.deviceName ?: "No PC linked",
                style = MaterialTheme.typography.bodyMedium,
                color = Color(0xFF64748B)
            )
        }
        Spacer(modifier = Modifier.weight(1f))
        Button(onClick = onToggleSettings) {
            Text(if (showSettings) "Close" else "⚙ Settings")
        }
    }

    if (showSettings) {
        SettingsPanel(
            user = user,
            deviceList = deviceList,
            selectedDeviceId = selectedDeviceId,
            renameDraft = renameDraft,
            snapshotResult = snapshotResult,
            snapshotMessage = snapshotMessage,
            refreshingSnapshot = refreshingSnapshot,
            onSelectDevice = onSelectDevice,
            onRenameDraftChanged = onRenameDraftChanged,
            onSaveDeviceName = onSaveDeviceName,
            onRefreshSnapshot = onRefreshSnapshot,
            onSignOut = onSignOut
        )
    } else {
        LimitDashboard(
            snapshotResult = snapshotResult,
            snapshotMessage = snapshotMessage,
            refreshingSnapshot = refreshingSnapshot,
            onRefreshSnapshot = onRefreshSnapshot
        )
    }
}

@Composable
private fun LimitDashboard(
    snapshotResult: SnapshotRefreshResult?,
    snapshotMessage: String?,
    refreshingSnapshot: Boolean,
    onRefreshSnapshot: () -> Unit
) {
    Text("Usage Limits", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
    Text(snapshotResult?.status?.name ?: SnapshotStatus.NotLinked.name, color = Color(0xFF64748B))

    if (snapshotResult?.providers.isNullOrEmpty()) {
        Text(snapshotMessage ?: "No active AI usage limits to show")
    } else {
        snapshotResult.providers.forEach { provider ->
            ProviderLimitCard(provider)
        }
    }

    snapshotResult?.updatedAt?.takeIf { it.isNotBlank() }?.let {
        Row(modifier = Modifier.fillMaxWidth()) {
            Text("Updates soon", color = Color(0xFF64748B))
            Spacer(modifier = Modifier.weight(1f))
            Text("Updated at $it", color = Color(0xFF64748B))
        }
    }

    Button(onClick = onRefreshSnapshot, modifier = Modifier.fillMaxWidth()) {
        Text(if (refreshingSnapshot) "Refreshing snapshot..." else "Refresh latest snapshot")
    }
}

@Composable
private fun ProviderLimitCard(provider: SnapshotProviderUsage) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(8.dp),
        color = Color.White,
        tonalElevation = 1.dp
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Text(provider.providerName, style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                Spacer(modifier = Modifier.weight(1f))
                provider.plan?.takeIf { it.isNotBlank() }?.let {
                    Text(it, color = Color(0xFF475569))
                }
            }
            provider.lines.forEach { line ->
                ProviderLimitLine(line)
            }
            if (provider.status != "ok") {
                Text(provider.status, color = Color(0xFFDC2626))
            }
        }
    }
}

@Composable
private fun ProviderLimitLine(line: SnapshotUsageLimitLine) {
    Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Text(line.label, style = MaterialTheme.typography.bodyLarge)
            Spacer(modifier = Modifier.weight(1f))
            line.resetText?.let { Text(it, color = Color(0xFF64748B)) }
        }
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(12.dp)
                .clip(RoundedCornerShape(6.dp))
                .background(Color(0xFFE5E7EB))
        ) {
            LinearProgressIndicator(
                progress = { line.remainingRatio ?: 0f },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(12.dp),
                color = Color(0xFF111827),
                trackColor = Color.Transparent
            )
        }
        Text(line.remainingText, color = Color(0xFF64748B))
    }
}

@Composable
private fun SettingsPanel(
    user: FirebaseUser?,
    deviceList: List<SnapshotDevice>,
    selectedDeviceId: String?,
    renameDraft: String,
    snapshotResult: SnapshotRefreshResult?,
    snapshotMessage: String?,
    refreshingSnapshot: Boolean,
    onSelectDevice: (SnapshotDevice) -> Unit,
    onRenameDraftChanged: (String) -> Unit,
    onSaveDeviceName: () -> Unit,
    onRefreshSnapshot: () -> Unit,
    onSignOut: () -> Unit
) {
    Text(user?.email ?: user?.uid.orEmpty(), style = MaterialTheme.typography.bodyMedium)

    Text("Connected devices", style = MaterialTheme.typography.titleMedium)
    if (deviceList.isEmpty()) {
        Text("No PC linked")
    } else {
        deviceList.forEach { device ->
            Button(
                onClick = { onSelectDevice(device) },
                modifier = Modifier.fillMaxWidth()
            ) {
                Row(modifier = Modifier.fillMaxWidth()) {
                    Text(device.deviceName)
                    Spacer(modifier = Modifier.weight(1f))
                    Text(device.status.name)
                }
            }
        }
    }

    Text("Selected device", style = MaterialTheme.typography.titleMedium)
    Text(snapshotResult?.deviceName ?: deviceList.firstOrNull { it.deviceId == selectedDeviceId }?.deviceName ?: "No PC linked")

    Text("Rename selected device", style = MaterialTheme.typography.titleMedium)
    OutlinedTextField(
        value = renameDraft,
        onValueChange = onRenameDraftChanged,
        modifier = Modifier.fillMaxWidth(),
        label = { Text("Device name") }
    )
    Button(
        onClick = onSaveDeviceName,
        modifier = Modifier.fillMaxWidth()
    ) {
        Text("Save device name")
    }

    Text("Snapshot status", style = MaterialTheme.typography.titleMedium)
    Text(snapshotResult?.status?.name ?: SnapshotStatus.NotLinked.name)

    Button(onClick = onRefreshSnapshot, modifier = Modifier.fillMaxWidth()) {
        Text(if (refreshingSnapshot) "Refreshing snapshot..." else "Refresh latest snapshot")
    }

    snapshotMessage?.let { Text(it) }

    Button(onClick = onSignOut, modifier = Modifier.fillMaxWidth()) {
        Text("Sign out")
    }
}
