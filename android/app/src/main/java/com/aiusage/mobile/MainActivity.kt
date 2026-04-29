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
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.aiusage.mobile.sync.AIUsageApiClient
import com.aiusage.mobile.sync.PairingCodeUiState
import com.aiusage.mobile.sync.SnapshotRepository
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
    private val apiClient by lazy {
        AIUsageApiClient(BuildConfig.AI_USAGE_FUNCTIONS_BASE_URL.trimEnd('/'))
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MaterialTheme {
                AIUsageApp(
                    activity = this,
                    auth = auth,
                    apiClient = apiClient,
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
    apiClient: AIUsageApiClient,
    repository: SnapshotRepository
) {
    var currentUser by remember { mutableStateOf(auth.currentUser) }
    var authMessage by remember { mutableStateOf<String?>(null) }
    var pairingState by remember { mutableStateOf<PairingCodeUiState>(PairingCodeUiState.Idle) }
    var sampleSnapshotSaved by remember { mutableStateOf(false) }
    var signingIn by remember { mutableStateOf(false) }
    val coroutineScope = rememberCoroutineScope()

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
                pairingState = PairingCodeUiState.Idle
            }
        }
        auth.addAuthStateListener(listener)
        onDispose { auth.removeAuthStateListener(listener) }
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
            pairingState = pairingState,
            sampleSnapshotSaved = sampleSnapshotSaved,
            onGeneratePairingCode = {
                currentUser?.getIdToken(false)
                    ?.addOnSuccessListener { tokenResult ->
                        val idToken = tokenResult.token
                        if (idToken == null) {
                            pairingState = PairingCodeUiState.Failed("Missing Firebase ID token")
                            return@addOnSuccessListener
                        }

                        pairingState = PairingCodeUiState.Loading
                        coroutineScope.launch {
                            try {
                                val response = apiClient.createPairingCode(idToken)
                                pairingState = PairingCodeUiState.Ready(
                                    code = response.displayCode,
                                    expiresAt = response.expiresAt,
                                    helperText = "Expires in 10:00"
                                )
                            } catch (error: Throwable) {
                                pairingState = PairingCodeUiState.Failed(
                                    error.message ?: "Could not generate PC link code"
                                )
                            }
                        }
                    }
                    ?.addOnFailureListener { error ->
                        pairingState = PairingCodeUiState.Failed(
                            error.message ?: "Could not refresh Firebase ID token"
                        )
                    }
            },
            onSaveSampleSnapshot = {
                repository.saveForWidget(sampleSnapshotJson)
                sampleSnapshotSaved = true
            },
            onSignOut = {
                auth.signOut()
                GoogleSignIn.getClient(activity, activity.googleSignInOptions()).signOut()
                signingIn = false
                authMessage = null
                pairingState = PairingCodeUiState.Idle
            }
        )
    }
}

@Composable
private fun SignedInContent(
    user: FirebaseUser?,
    pairingState: PairingCodeUiState,
    sampleSnapshotSaved: Boolean,
    onGeneratePairingCode: () -> Unit,
    onSaveSampleSnapshot: () -> Unit,
    onSignOut: () -> Unit
) {
    Text(user?.email ?: user?.uid.orEmpty(), style = MaterialTheme.typography.bodyMedium)
    Text("No PC linked", style = MaterialTheme.typography.titleMedium)
    Button(onClick = onGeneratePairingCode, modifier = Modifier.fillMaxWidth()) {
        Text("Generate PC Link Code")
    }

    when (pairingState) {
        PairingCodeUiState.Idle -> Unit
        PairingCodeUiState.Loading -> Text("Signing in...")
        is PairingCodeUiState.Ready -> {
            Text(pairingState.code, style = MaterialTheme.typography.displaySmall)
            Text(pairingState.helperText)
        }
        is PairingCodeUiState.Failed -> Text(pairingState.message)
    }

    Button(onClick = onSaveSampleSnapshot, modifier = Modifier.fillMaxWidth()) {
        Text("Save sample snapshot")
    }

    if (sampleSnapshotSaved) {
        Text("Latest Snapshot", style = MaterialTheme.typography.titleMedium)
        ProviderRow("Codex", "42/100")
        ProviderRow("Claude", "auth_expired")
    }

    Button(onClick = onSignOut, modifier = Modifier.fillMaxWidth()) {
        Text("Sign out")
    }
}

@Composable
private fun ProviderRow(name: String, value: String) {
    Row(modifier = Modifier.fillMaxWidth()) {
        Text(name)
        Spacer(modifier = Modifier.weight(1f))
        Text(value)
    }
}

private const val sampleSnapshotJson = """
{
  "schemaVersion": 1,
  "providers": [
    { "providerId": "codex", "displayName": "Codex", "status": "ok" },
    { "providerId": "claude", "displayName": "Claude", "status": "error" }
  ]
}
"""
