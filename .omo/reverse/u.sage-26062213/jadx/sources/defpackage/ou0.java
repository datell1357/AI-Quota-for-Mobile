package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ou0 implements AutoCloseable {
    public final nu0 n;
    public boolean o;
    public final /* synthetic */ qu0 p;

    public ou0(qu0 qu0Var, nu0 nu0Var) {
        this.p = qu0Var;
        this.n = nu0Var;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.o) {
            return;
        }
        this.o = true;
        qu0 qu0Var = this.p;
        synchronized (qu0Var.f283u) {
            nu0 nu0Var = this.n;
            int i = nu0Var.h - 1;
            nu0Var.h = i;
            if (i == 0 && nu0Var.f) {
                qu0Var.N(nu0Var);
            }
        }
    }
}
