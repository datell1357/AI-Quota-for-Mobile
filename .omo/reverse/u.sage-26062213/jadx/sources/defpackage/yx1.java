package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yx1 implements m53, ki0 {
    public final hi0 n;
    public final df1 o;
    public final bh0 p;
    public ir3 q;

    public yx1(hi0 hi0Var, df1 df1Var) {
        this.n = hi0Var;
        this.o = df1Var;
        this.p = dm0.c(hi0Var.F(this));
    }

    @Override // defpackage.hi0
    public final hi0 F(hi0 hi0Var) {
        return ca.B(this, hi0Var);
    }

    @Override // defpackage.hi0
    public final fi0 K(gi0 gi0Var) {
        return ca.r(this, gi0Var);
    }

    @Override // defpackage.ki0
    public final void L(hi0 hi0Var, Throwable th) throws Throwable {
        cc0 cc0Var = (cc0) hi0Var.K(cc0.o);
        if (cc0Var != null) {
            mt1.W(th, new h4(8, cc0Var, this));
        }
        ki0 ki0Var = (ki0) this.n.K(w13.t);
        if (ki0Var == null) {
            throw th;
        }
        ki0Var.L(hi0Var, th);
    }

    @Override // defpackage.hi0
    public final Object R(df1 df1Var, Object obj) {
        return df1Var.f(obj, this);
    }

    @Override // defpackage.hi0
    public final hi0 Y(gi0 gi0Var) {
        return ca.z(this, gi0Var);
    }

    @Override // defpackage.m53
    public final void a() {
        ir3 ir3Var = this.q;
        if (ir3Var != null) {
            CancellationException cancellationException = new CancellationException("Old job was still running!");
            cancellationException.initCause(null);
            ir3Var.j(cancellationException);
        }
        this.q = ca.y(this.p, null, null, this.o, 3);
    }

    @Override // defpackage.m53
    public final void c() {
        ir3 ir3Var = this.q;
        if (ir3Var != null) {
            ir3Var.u(new xb1(1));
        }
        this.q = null;
    }

    @Override // defpackage.m53
    public final void e() {
        ir3 ir3Var = this.q;
        if (ir3Var != null) {
            ir3Var.u(new xb1(1));
        }
        this.q = null;
    }

    @Override // defpackage.fi0
    public final gi0 getKey() {
        return w13.t;
    }
}
