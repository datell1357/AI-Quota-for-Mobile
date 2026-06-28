package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class np extends md2 {
    public vy3 B;
    public final /* synthetic */ op C;

    public np(op opVar) {
        this.C = opVar;
    }

    @Override // defpackage.md2
    public final void y0() {
        op opVar = this.C;
        opVar.b = this;
        if (opVar.c != null) {
            this.B = qj0.T(this, 0L, 0L, new m(2, this, opVar));
        }
    }

    @Override // defpackage.md2
    public final void z0() {
        op opVar = this.C;
        if (opVar.b == this) {
            opVar.b = null;
        }
        vy3 vy3Var = this.B;
        if (vy3Var != null) {
            vy3Var.b();
        }
        this.B = null;
    }
}
