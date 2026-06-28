package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t0 extends gg4 {
    public static final AtomicReferenceFieldUpdater H = AtomicReferenceFieldUpdater.newUpdater(a1.class, Thread.class, "a");
    public static final AtomicReferenceFieldUpdater I = AtomicReferenceFieldUpdater.newUpdater(a1.class, a1.class, "b");
    public static final AtomicReferenceFieldUpdater J = AtomicReferenceFieldUpdater.newUpdater(b1.class, a1.class, "p");
    public static final AtomicReferenceFieldUpdater K = AtomicReferenceFieldUpdater.newUpdater(b1.class, p0.class, "o");
    public static final AtomicReferenceFieldUpdater L = AtomicReferenceFieldUpdater.newUpdater(b1.class, Object.class, "n");

    @Override // defpackage.gg4
    public final void P(a1 a1Var, a1 a1Var2) {
        I.lazySet(a1Var, a1Var2);
    }

    @Override // defpackage.gg4
    public final void Q(a1 a1Var, Thread thread) {
        H.lazySet(a1Var, thread);
    }

    @Override // defpackage.gg4
    public final boolean j(s0 s0Var, p0 p0Var, p0 p0Var2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = K;
            if (atomicReferenceFieldUpdater.compareAndSet(s0Var, p0Var, p0Var2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(s0Var) == p0Var);
        return false;
    }

    @Override // defpackage.gg4
    public final boolean k(b1 b1Var, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = L;
            if (atomicReferenceFieldUpdater.compareAndSet(b1Var, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(b1Var) == obj);
        return false;
    }

    @Override // defpackage.gg4
    public final boolean l(b1 b1Var, a1 a1Var, a1 a1Var2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = J;
            if (atomicReferenceFieldUpdater.compareAndSet(b1Var, a1Var, a1Var2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(b1Var) == a1Var);
        return false;
    }

    @Override // defpackage.gg4
    public final p0 x(s0 s0Var) {
        return (p0) K.getAndSet(s0Var, p0.d);
    }

    @Override // defpackage.gg4
    public final a1 y(s0 s0Var) {
        return (a1) J.getAndSet(s0Var, a1.c);
    }
}
