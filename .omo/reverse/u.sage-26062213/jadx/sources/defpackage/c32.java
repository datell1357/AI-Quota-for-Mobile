package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c32 extends ji0 implements hr0 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f40u = AtomicIntegerFieldUpdater.newUpdater(c32.class, "runningWorkers$volatile");
    public final /* synthetic */ hr0 p;
    public final ji0 q;
    public final int r;
    private volatile /* synthetic */ int runningWorkers$volatile;
    public final j72 s;
    public final Object t;

    /* JADX WARN: Multi-variable type inference failed */
    public c32(ji0 ji0Var, int i) {
        hr0 hr0Var = ji0Var instanceof hr0 ? (hr0) ji0Var : null;
        this.p = hr0Var == null ? ro0.a : hr0Var;
        this.q = ji0Var;
        this.r = i;
        this.s = new j72();
        this.t = new Object();
    }

    @Override // defpackage.ji0
    public final void n0(hi0 hi0Var, Runnable runnable) {
        Runnable runnableR0;
        this.s.a(runnable);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f40u;
        if (atomicIntegerFieldUpdater.get(this) >= this.r || !s0() || (runnableR0 = r0()) == null) {
            return;
        }
        try {
            tu0.b(this.q, this, new rf1(7, (Object) this, (Object) runnableR0, false));
        } catch (Throwable th) {
            atomicIntegerFieldUpdater.decrementAndGet(this);
            throw th;
        }
    }

    @Override // defpackage.ji0
    public final void o0(hi0 hi0Var, Runnable runnable) {
        Runnable runnableR0;
        this.s.a(runnable);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f40u;
        if (atomicIntegerFieldUpdater.get(this) >= this.r || !s0() || (runnableR0 = r0()) == null) {
            return;
        }
        try {
            this.q.o0(this, new rf1(7, (Object) this, (Object) runnableR0, false));
        } catch (Throwable th) {
            atomicIntegerFieldUpdater.decrementAndGet(this);
            throw th;
        }
    }

    @Override // defpackage.ji0
    public final ji0 q0(int i) {
        c75.p(i);
        return i >= this.r ? this : super.q0(i);
    }

    @Override // defpackage.hr0
    public final jv0 r(long j, oz3 oz3Var, hi0 hi0Var) {
        return this.p.r(j, oz3Var, hi0Var);
    }

    public final Runnable r0() {
        while (true) {
            Runnable runnable = (Runnable) this.s.d();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.t) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f40u;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.s.c() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }

    public final boolean s0() {
        synchronized (this.t) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f40u;
            if (atomicIntegerFieldUpdater.get(this) >= this.r) {
                return false;
            }
            atomicIntegerFieldUpdater.incrementAndGet(this);
            return true;
        }
    }

    @Override // defpackage.ji0
    public final String toString() {
        return this.q + ".limitedParallelism(" + this.r + ')';
    }

    @Override // defpackage.hr0
    public final void z(long j, o20 o20Var) {
        this.p.z(j, o20Var);
    }
}
