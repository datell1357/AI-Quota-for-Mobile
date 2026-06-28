package defpackage;

import android.os.SystemClock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n00 extends dz3 {
    public final /* synthetic */ int b;

    @Override // defpackage.dz3
    public final long a() {
        switch (this.b) {
            case 0:
                return 0L;
            case 1:
                return SystemClock.elapsedRealtimeNanos();
            default:
                return SystemClock.elapsedRealtime() * 1000000;
        }
    }
}
