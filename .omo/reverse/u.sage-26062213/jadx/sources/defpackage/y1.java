package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y1 extends kt4 {
    public final AtomicReferenceFieldUpdater A;
    public final AtomicReferenceFieldUpdater B;
    public final AtomicReferenceFieldUpdater C;
    public final AtomicReferenceFieldUpdater D;
    public final AtomicReferenceFieldUpdater z;

    public y1(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        super(6);
        this.z = atomicReferenceFieldUpdater;
        this.A = atomicReferenceFieldUpdater2;
        this.B = atomicReferenceFieldUpdater3;
        this.C = atomicReferenceFieldUpdater4;
        this.D = atomicReferenceFieldUpdater5;
    }

    @Override // defpackage.kt4
    public final void Y(a2 a2Var, a2 a2Var2) {
        this.A.lazySet(a2Var, a2Var2);
    }

    @Override // defpackage.kt4
    public final void Z(a2 a2Var, Thread thread) {
        this.z.lazySet(a2Var, thread);
    }

    @Override // defpackage.kt4
    public final boolean q(b2 b2Var, x1 x1Var, x1 x1Var2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.C;
            if (atomicReferenceFieldUpdater.compareAndSet(b2Var, x1Var, x1Var2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(b2Var) == x1Var);
        return false;
    }

    @Override // defpackage.kt4
    public final boolean s(b2 b2Var, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.D;
            if (atomicReferenceFieldUpdater.compareAndSet(b2Var, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(b2Var) == obj);
        return false;
    }

    @Override // defpackage.kt4
    public final boolean t(b2 b2Var, a2 a2Var, a2 a2Var2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.B;
            if (atomicReferenceFieldUpdater.compareAndSet(b2Var, a2Var, a2Var2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(b2Var) == a2Var);
        return false;
    }
}
