package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i22 implements n22, qi0 {
    public final h22 n;
    public final hi0 o;

    public i22(h22 h22Var, hi0 hi0Var) {
        hi0Var.getClass();
        this.n = h22Var;
        this.o = hi0Var;
        if (((r22) h22Var).d == g22.n) {
            n44.S(hi0Var, null);
        }
    }

    @Override // defpackage.n22
    public final void B(p22 p22Var, f22 f22Var) {
        h22 h22Var = this.n;
        if (((r22) h22Var).d.compareTo(g22.n) <= 0) {
            h22Var.b(this);
            n44.S(this.o, null);
        }
    }

    @Override // defpackage.qi0
    public final hi0 d() {
        return this.o;
    }
}
