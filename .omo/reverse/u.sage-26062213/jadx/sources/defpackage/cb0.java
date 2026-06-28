package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cb0 extends nq0 {
    public final qi0 c;
    public df1 d;
    public zy e;
    public ir3 f;
    public boolean g;

    public cb0(qi0 qi0Var, lx2 lx2Var) {
        super(lx2Var);
        this.c = qi0Var;
        this.d = new kc(2, null, 1);
    }

    @Override // defpackage.nq0
    public final void g() {
        zy zyVar = this.e;
        if (zyVar != null) {
            zyVar.g(new CancellationException("onBack cancelled"), true);
        }
        ir3 ir3Var = this.f;
        if (ir3Var != null) {
            ir3Var.j(null);
        }
        this.e = null;
        this.f = null;
        this.g = false;
    }

    @Override // defpackage.nq0
    public final void h() {
        if (this.e != null && !this.g) {
            g();
        }
        dh0 dh0Var = null;
        if (this.e == null) {
            this.g = false;
            this.e = ix.c(-2, 4, vy.n);
            this.f = ca.y(this.c, null, null, new n(this, dh0Var, 11), 3);
        }
        zy zyVar = this.e;
        if (zyVar != null) {
            zyVar.a(null);
        }
        this.g = false;
    }

    @Override // defpackage.nq0
    public final void i(sp spVar) {
        zy zyVar = this.e;
        if (zyVar != null) {
            zyVar.n(spVar);
        }
    }

    @Override // defpackage.nq0
    public final void j() {
        g();
        if (super.e()) {
            this.g = true;
            this.e = ix.c(-2, 4, vy.n);
            this.f = ca.y(this.c, null, null, new n(this, null, 11), 3);
        }
    }

    public final void l(boolean z) {
        ir3 ir3Var;
        if (!z && super.e() && (ir3Var = this.f) != null && !ir3Var.b()) {
            g();
        }
        ((up) this.a).e(z);
        ((tp) this.b).g(z);
    }
}
