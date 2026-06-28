package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m64 extends ji0 {
    public static final m64 p = new m64();

    @Override // defpackage.ji0
    public final void n0(hi0 hi0Var, Runnable runnable) {
        vh4 vh4Var = (vh4) hi0Var.K(vh4.p);
        if (vh4Var != null) {
            vh4Var.o = true;
        } else {
            p61.s("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
        }
    }

    @Override // defpackage.ji0
    public final ji0 q0(int i) {
        throw new UnsupportedOperationException("limitedParallelism is not supported for Dispatchers.Unconfined");
    }

    @Override // defpackage.ji0
    public final String toString() {
        return "Dispatchers.Unconfined";
    }
}
