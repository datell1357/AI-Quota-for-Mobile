package com.aiusage.mobile

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
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
    Button(onClick = { repository.refreshLatestSnapshot() }) {
        Text("Generate PC Link Code")
    }
}

