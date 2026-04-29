package com.aiusage.mobile

import android.app.Activity.RESULT_OK
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.aiusage.mobile.sync.SnapshotDevice
import com.aiusage.mobile.sync.SnapshotProviderLine
import com.aiusage.mobile.sync.SnapshotRefreshResult
import com.aiusage.mobile.sync.SnapshotRepository
import com.aiusage.mobile.sync.SnapshotStatus
import com.google.android.gms.auth.api.signin.GoogleSignIn
import com.google.android.gms.auth.api.signin.GoogleSignInOptions
import com.google.android.gms.common.api.ApiException
import com.google.firebase.auth.FirebaseAuth
import com.google.firebase.auth.FirebaseUser
import com.google.firebase.auth.GoogleAuthProvider
import com.google.firebase.auth.OAuthProvider
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
        modifier = Modifier.padding(24.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        Text("AI Usage", style = MaterialTheme.typography.headlineMedium)
        authMessage?.let { Text(it, style = MaterialTheme.typography.bodyMedium) }

        if (currentUser == null) {
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
            Button(
                onClick = {
                    signingIn = true
                    authMessage = null
                    val provider = OAuthProvider.newBuilder("github.com")
                    val pendingResult = auth.pendingAuthResult
                    if (pendingResult != null) {
                        pendingResult
                            .addOnSuccessListener {
                                signingIn = false
                                currentUser = auth.currentUser
                            }
                            .addOnFailureListener { error ->
                                signingIn = false
                                authMessage = error.message ?: "GitHub sign-in failed"
                            }
                    } else {
                        auth.startActivityForSignInWithProvider(activity, provider.build())
                            .addOnSuccessListener {
                                signingIn = false
                                currentUser = auth.currentUser
                            }
                            .addOnFailureListener { error ->
                                signingIn = false
                                authMessage = error.message ?: "GitHub sign-in failed"
                            }
                    }
                },
                modifier = Modifier.fillMaxWidth()
            ) {
                Text("Continue with GitHub")
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

    snapshotResult?.updatedAt?.takeIf { it.isNotBlank() }?.let {
        Text("Updated at $it")
    }

    if (!snapshotResult?.providers.isNullOrEmpty()) {
        Text("Latest Snapshot", style = MaterialTheme.typography.titleMedium)
        snapshotResult.providers.forEach { provider ->
            ProviderRow(provider)
        }
    }

    Button(onClick = onSignOut, modifier = Modifier.fillMaxWidth()) {
        Text("Sign out")
    }
}

@Composable
private fun ProviderRow(line: SnapshotProviderLine) {
    Row(modifier = Modifier.fillMaxWidth()) {
        Text(line.providerName)
        Spacer(modifier = Modifier.weight(1f))
        Text(line.summary)
    }
}
