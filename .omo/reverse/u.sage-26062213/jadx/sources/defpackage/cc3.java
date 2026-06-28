package defpackage;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cc3 implements qz1, Serializable {
    public static final AtomicReferenceFieldUpdater p = AtomicReferenceFieldUpdater.newUpdater(cc3.class, Object.class, "o");
    public static final /* synthetic */ long q = sa5.a.objectFieldOffset(cc3.class.getDeclaredField("o"));
    public volatile ne1 n;
    public volatile Object o;

    @Override // defpackage.qz1
    public final Object getValue() {
        cc3 cc3Var;
        Object obj = this.o;
        qv3 qv3Var = qv3.q;
        if (obj != qv3Var) {
            return obj;
        }
        ne1 ne1Var = this.n;
        if (ne1Var != null) {
            Object objA = ne1Var.a();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p;
            while (true) {
                atomicReferenceFieldUpdater.getClass();
                Unsafe unsafe = sa5.a;
                long j = q;
                cc3Var = this;
                if (unsafe.compareAndSwapObject(cc3Var, j, qv3Var, objA)) {
                    cc3Var.n = null;
                    return objA;
                }
                if (unsafe.getObjectVolatile(cc3Var, j) != qv3Var) {
                    break;
                }
                this = cc3Var;
            }
        } else {
            cc3Var = this;
        }
        return cc3Var.o;
    }

    public final String toString() {
        return this.o != qv3.q ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
