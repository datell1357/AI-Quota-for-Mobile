package com.aiusage.mobile

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
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
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.aiusage.mobile.sync.SnapshotRepository

class MainActivity : ComponentActivity() {
    private val repository by lazy { SnapshotRepository(applicationContext) }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MaterialTheme {
                AIUsageApp(repository)
            }
        }
    }
}

@Composable
fun AIUsageApp(repository: SnapshotRepository) {
    var signedIn by remember { mutableStateOf(false) }
    var pairingCode by remember { mutableStateOf<String?>(null) }
    var sampleSnapshotSaved by remember { mutableStateOf(false) }

    Column(
        modifier = Modifier.padding(24.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        Text("AI Usage", style = MaterialTheme.typography.headlineMedium)

        if (!signedIn) {
            Button(onClick = { signedIn = true }, modifier = Modifier.fillMaxWidth()) {
                Text("Continue with Google")
            }
            Button(onClick = { signedIn = true }, modifier = Modifier.fillMaxWidth()) {
                Text("Continue with GitHub")
            }
            return@Column
        }

        Text("No PC linked", style = MaterialTheme.typography.titleMedium)
        Button(
            onClick = { pairingCode = "482 193" },
            modifier = Modifier.fillMaxWidth()
        ) {
            Text("Generate PC Link Code")
        }

        pairingCode?.let { code ->
            Text(code, style = MaterialTheme.typography.displaySmall)
            Text("Expires in 10:00")
        }

        Button(
            onClick = {
                repository.saveForWidget(sampleSnapshotJson)
                sampleSnapshotSaved = true
            },
            modifier = Modifier.fillMaxWidth()
        ) {
            Text("Save sample snapshot")
        }

        if (sampleSnapshotSaved) {
            Text("Latest Snapshot", style = MaterialTheme.typography.titleMedium)
            ProviderRow("Codex", "42/100")
            ProviderRow("Claude", "auth_expired")
        }
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
