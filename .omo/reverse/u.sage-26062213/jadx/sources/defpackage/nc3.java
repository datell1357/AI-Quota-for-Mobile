package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nc3 implements n22, AutoCloseable {
    public final String n;
    public final mc3 o;
    public boolean p;

    public nc3(String str, mc3 mc3Var) {
        this.n = str;
        this.o = mc3Var;
    }

    @Override // defpackage.n22
    public final void B(p22 p22Var, f22 f22Var) {
        if (f22Var == f22.ON_DESTROY) {
            this.p = false;
            p22Var.getLifecycle().b(this);
        }
    }

    public final void b(h22 h22Var, uc3 uc3Var) {
        uc3Var.getClass();
        h22Var.getClass();
        if (this.p) {
            k21.n("Already attached to lifecycleOwner");
            return;
        }
        this.p = true;
        h22Var.a(this);
        uc3Var.c(this.n, (mc1) this.o.b.f);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
    }
}
