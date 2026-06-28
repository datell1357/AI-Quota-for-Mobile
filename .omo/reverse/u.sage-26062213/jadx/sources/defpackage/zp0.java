package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zp0 extends j31 {
    public static final zp0 q;
    public pi0 p;

    static {
        int i = uw3.c;
        int i2 = uw3.d;
        long j = uw3.e;
        String str = uw3.a;
        zp0 zp0Var = new zp0();
        zp0Var.p = new pi0(i, i2, j, str);
        q = zp0Var;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // defpackage.ji0
    public final void n0(hi0 hi0Var, Runnable runnable) {
        pi0.r(this.p, runnable, 6);
    }

    @Override // defpackage.ji0
    public final void o0(hi0 hi0Var, Runnable runnable) {
        pi0.r(this.p, runnable, 2);
    }

    @Override // defpackage.ji0
    public final ji0 q0(int i) {
        c75.p(i);
        return i >= uw3.c ? this : super.q0(i);
    }

    @Override // defpackage.ji0
    public final String toString() {
        return "Dispatchers.Default";
    }
}
