package defpackage;

import java.util.Set;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class k7 extends r0 {
    public static final zf5 w;
    public static final q12 x = new q12(k7.class);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile Set f161u;
    public volatile int v;

    static {
        Throwable th;
        zf5 j7Var;
        try {
            j7Var = new i7();
            th = null;
        } catch (Throwable th2) {
            th = th2;
            j7Var = new j7();
        }
        w = j7Var;
        if (th != null) {
            x.a().log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
    }
}
