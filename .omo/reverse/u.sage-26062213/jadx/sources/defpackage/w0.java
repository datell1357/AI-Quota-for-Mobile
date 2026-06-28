package defpackage;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class w0 {
    public static /* synthetic */ boolean a(Unsafe unsafe, b1 b1Var, long j, Object obj, Object obj2) {
        while (!unsafe.compareAndSwapObject(b1Var, j, obj, obj2)) {
            if (unsafe.getObject(b1Var, j) != obj) {
                return false;
            }
        }
        return true;
    }
}
