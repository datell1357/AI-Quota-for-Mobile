package defpackage;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class x0 {
    public static /* synthetic */ boolean a(Unsafe unsafe, b1 b1Var, long j, a1 a1Var, a1 a1Var2) {
        while (!unsafe.compareAndSwapObject(b1Var, j, a1Var, a1Var2)) {
            if (unsafe.getObject(b1Var, j) != a1Var) {
                return false;
            }
        }
        return true;
    }
}
