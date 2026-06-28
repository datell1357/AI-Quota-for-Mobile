package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class br0 extends ji0 {
    public static final /* synthetic */ AtomicIntegerFieldUpdater r = AtomicIntegerFieldUpdater.newUpdater(br0.class, "q");
    public final ji0 p;
    public volatile /* synthetic */ int q = 1;

    public br0(ji0 ji0Var) {
        this.p = ji0Var;
    }

    @Override // defpackage.ji0
    public final void n0(hi0 hi0Var, Runnable runnable) {
        r0().n0(hi0Var, runnable);
    }

    @Override // defpackage.ji0
    public final void o0(hi0 hi0Var, Runnable runnable) throws ru0 {
        r0().o0(hi0Var, runnable);
    }

    @Override // defpackage.ji0
    public final boolean p0(hi0 hi0Var) {
        return r0().p0(hi0Var);
    }

    @Override // defpackage.ji0
    public final ji0 q0(int i) {
        return r0().q0(i);
    }

    public final ji0 r0() {
        return r.get(this) == 1 ? zu0.b : this.p;
    }

    @Override // defpackage.ji0
    public final String toString() {
        return "DeferredDispatchCoroutineDispatcher(delegate=" + this.p + ")";
    }
}
