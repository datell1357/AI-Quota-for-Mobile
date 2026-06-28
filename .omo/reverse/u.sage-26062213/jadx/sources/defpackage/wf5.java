package defpackage;

import android.os.SystemClock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class wf5 {
    public static final dz3 a;

    static {
        n00 n00Var;
        try {
            SystemClock.elapsedRealtimeNanos();
            n00Var = new n00(1);
        } catch (Throwable unused) {
            SystemClock.elapsedRealtime();
            n00Var = new n00(2);
        }
        a = n00Var;
    }
}
