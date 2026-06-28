package defpackage;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class v0 {
    public static /* synthetic */ boolean a(Unsafe unsafe, s0 s0Var, long j, p0 p0Var, p0 p0Var2) {
        while (!unsafe.compareAndSwapObject(s0Var, j, p0Var, p0Var2)) {
            if (unsafe.getObject(s0Var, j) != p0Var) {
                return false;
            }
        }
        return true;
    }
}
