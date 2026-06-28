package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vb3 implements dh0, si0 {
    public static final AtomicReferenceFieldUpdater o = AtomicReferenceFieldUpdater.newUpdater(vb3.class, Object.class, "result");
    public static final /* synthetic */ long p = sa5.a.objectFieldOffset(vb3.class.getDeclaredField("result"));
    public final dh0 n;
    private volatile Object result;

    public vb3(dh0 dh0Var) {
        ri0 ri0Var = ri0.n;
        this.n = dh0Var;
        this.result = ri0Var;
    }

    @Override // defpackage.si0
    public final si0 c() {
        dh0 dh0Var = this.n;
        if (dh0Var instanceof si0) {
            return (si0) dh0Var;
        }
        return null;
    }

    @Override // defpackage.dh0
    public final hi0 e() {
        return this.n.e();
    }

    @Override // defpackage.dh0
    public final void g(Object obj) {
        vb3 vb3Var;
        Object obj2;
        Unsafe unsafe;
        long j;
        while (true) {
            Object obj3 = this.result;
            ri0 ri0Var = ri0.o;
            if (obj3 == ri0Var) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = o;
                while (true) {
                    atomicReferenceFieldUpdater.getClass();
                    Unsafe unsafe2 = sa5.a;
                    long j2 = p;
                    vb3Var = this;
                    obj2 = obj;
                    if (unsafe2.compareAndSwapObject(vb3Var, j2, ri0Var, obj2)) {
                        return;
                    }
                    if (unsafe2.getObjectVolatile(vb3Var, j2) != ri0Var) {
                        break;
                    }
                    this = vb3Var;
                    obj = obj2;
                }
            } else {
                vb3Var = this;
                obj2 = obj;
                ri0 ri0Var2 = ri0.n;
                if (obj3 != ri0Var2) {
                    k21.n("Already resumed");
                    return;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = o;
                ri0 ri0Var3 = ri0.p;
                do {
                    atomicReferenceFieldUpdater2.getClass();
                    unsafe = sa5.a;
                    j = p;
                    if (unsafe.compareAndSwapObject(vb3Var, j, ri0Var2, ri0Var3)) {
                        vb3Var.n.g(obj2);
                        return;
                    }
                } while (unsafe.getObjectVolatile(vb3Var, j) == ri0Var2);
            }
            this = vb3Var;
            obj = obj2;
        }
    }

    public final String toString() {
        return "SafeContinuation for " + this.n;
    }
}
