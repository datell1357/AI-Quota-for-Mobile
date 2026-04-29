import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var session: SessionViewModel
    @EnvironmentObject private var snapshotStore: SnapshotStore

    var body: some View {
        NavigationStack {
            Group {
                switch session.state {
                case .signedOut:
                    SignInView()
                case .signedIn:
                    if snapshotStore.devices.isEmpty {
                        PairingView()
                    } else {
                        SnapshotListView()
                    }
                }
            }
            .navigationTitle("AI Usage")
        }
    }
}

struct SignInView: View {
    var body: some View {
        VStack(spacing: 12) {
            Button("Continue with Google") {}
            Button("Continue with GitHub") {}
        }
        .buttonStyle(.borderedProminent)
        .padding()
    }
}

struct PairingView: View {
    @State private var code: String?

    var body: some View {
        VStack(spacing: 16) {
            Text("No PC linked")
                .font(.headline)
            Button("Generate PC Link Code") {
                code = "482 193"
            }
            if let code {
                Text(code)
                    .font(.system(size: 42, weight: .semibold, design: .monospaced))
                Text("Expires in 10:00")
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
    }
}

struct SnapshotListView: View {
    @EnvironmentObject private var snapshotStore: SnapshotStore

    var body: some View {
        List(snapshotStore.providers) { provider in
            VStack(alignment: .leading, spacing: 6) {
                HStack {
                    Text(provider.displayName)
                        .font(.headline)
                    Spacer()
                    Text(provider.status.rawValue)
                        .font(.caption)
                }
                ForEach(provider.lines) { line in
                    Text("\(line.label): \(line.displayValue)")
                        .foregroundStyle(.secondary)
                }
            }
        }
        .refreshable {
            await snapshotStore.refreshLatestSnapshot()
        }
    }
}

