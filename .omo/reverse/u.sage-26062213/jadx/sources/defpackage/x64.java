package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x64 extends ji0 {
    public static final x64 p = new x64();

    @Override // defpackage.ji0
    public final void n0(hi0 hi0Var, Runnable runnable) {
        zp0.q.p.j(runnable, true, false);
    }

    @Override // defpackage.ji0
    public final void o0(hi0 hi0Var, Runnable runnable) {
        zp0.q.p.j(runnable, true, true);
    }

    @Override // defpackage.ji0
    public final ji0 q0(int i) {
        c75.p(i);
        return i >= uw3.d ? this : super.q0(i);
    }

    @Override // defpackage.ji0
    public final String toString() {
        return "Dispatchers.IO";
    }
}
