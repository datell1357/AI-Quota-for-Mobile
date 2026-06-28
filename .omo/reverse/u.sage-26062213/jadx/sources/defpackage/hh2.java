package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hh2 extends uh3 implements fh2 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater w = AtomicReferenceFieldUpdater.newUpdater(hh2.class, Object.class, "owner$volatile");
    public static final /* synthetic */ long x = sa5.a.objectFieldOffset(hh2.class.getDeclaredField("owner$volatile"));
    private volatile /* synthetic */ Object owner$volatile;

    public hh2() {
        super(1);
        this.owner$volatile = ih2.a;
    }

    @Override // defpackage.fh2
    public final void b(Object obj) {
        while (this.f()) {
            w.getClass();
            Unsafe unsafe = sa5.a;
            long j = x;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            sg0 sg0Var = ih2.a;
            if (objectVolatile != sg0Var) {
                if (objectVolatile != obj && obj != null) {
                    p61.u("This mutex is locked by ", objectVolatile, ", but ", obj, " is expected");
                    return;
                }
                while (true) {
                    Unsafe unsafe2 = sa5.a;
                    hh2 hh2Var = this;
                    if (unsafe2.compareAndSwapObject(hh2Var, x, objectVolatile, sg0Var)) {
                        hh2Var.d();
                        return;
                    } else {
                        if (unsafe2.getObjectVolatile(hh2Var, j) != objectVolatile) {
                            this = hh2Var;
                            break;
                        }
                        this = hh2Var;
                    }
                }
            }
        }
        k21.n("This mutex is not locked");
    }

    public final boolean f() {
        return Math.max(uh3.t.get(this), 0) == 0;
    }

    public final boolean g() {
        int iH = h();
        if (iH == 0) {
            return true;
        }
        if (iH == 1) {
            return false;
        }
        if (iH != 2) {
            k21.n("unexpected");
            return false;
        }
        p61.e("This mutex is already locked by the specified owner: null");
        return false;
    }

    public final int h() {
        int i;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = uh3.t;
            int i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = this.n;
            if (i2 > i3) {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i > i3) {
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i3));
            } else {
                if (i2 <= 0) {
                    return 1;
                }
                if (atomicIntegerFieldUpdater.compareAndSet(this, i2, i2 - 1)) {
                    w.getClass();
                    sa5.a.putObjectVolatile(this, x, (Object) null);
                    return 0;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0022, code lost:
    
        r0.h(r1, r4.o);
     */
    @Override // defpackage.fh2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(defpackage.fh0 r5) {
        /*
            r4 = this;
            boolean r0 = r4.g()
            t64 r1 = defpackage.t64.a
            if (r0 == 0) goto L9
            goto L3b
        L9:
            dh0 r5 = defpackage.dm0.A(r5)
            o20 r5 = defpackage.kt4.J(r5)
            gh2 r0 = new gh2     // Catch: java.lang.Throwable -> L3c
            r0.<init>(r4, r5)     // Catch: java.lang.Throwable -> L3c
        L16:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r2 = defpackage.uh3.t     // Catch: java.lang.Throwable -> L3c
            int r2 = r2.getAndDecrement(r4)     // Catch: java.lang.Throwable -> L3c
            int r3 = r4.n     // Catch: java.lang.Throwable -> L3c
            if (r2 > r3) goto L16
            if (r2 <= 0) goto L28
            mn0 r4 = r4.o     // Catch: java.lang.Throwable -> L3c
            r0.h(r1, r4)     // Catch: java.lang.Throwable -> L3c
            goto L2e
        L28:
            boolean r2 = r4.c(r0)     // Catch: java.lang.Throwable -> L3c
            if (r2 == 0) goto L16
        L2e:
            java.lang.Object r4 = r5.v()
            ri0 r5 = defpackage.ri0.n
            if (r4 != r5) goto L37
            goto L38
        L37:
            r4 = r1
        L38:
            if (r4 != r5) goto L3b
            return r4
        L3b:
            return r1
        L3c:
            r4 = move-exception
            r5.E()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hh2.j(fh0):java.lang.Object");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Mutex@");
        sb.append(qn0.u(this));
        sb.append("[isLocked=");
        sb.append(f());
        sb.append(",owner=");
        w.getClass();
        sb.append(sa5.a.getObjectVolatile(this, x));
        sb.append(']');
        return sb.toString();
    }
}
