package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s23 {
    public final t82 a;
    public final d90 b;
    public final Object c = new Object();

    public s23(t82 t82Var, d90 d90Var) {
        this.a = t82Var;
        this.b = d90Var;
    }

    public final void a(long j) {
        synchronized (this.c) {
            x23 x23Var = (x23) this.a.c;
            x23Var.n = j;
            x23Var.h(j);
        }
    }
}
