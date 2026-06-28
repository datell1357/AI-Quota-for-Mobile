package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class g0 extends bv1 implements dh0, qi0 {
    public final hi0 r;

    public g0(hi0 hi0Var, boolean z) {
        super(z);
        Q((tu1) hi0Var.K(mj1.W));
        this.r = hi0Var.F(this);
    }

    @Override // defpackage.bv1
    public final void P(v00 v00Var) {
        qj0.N(this.r, v00Var);
    }

    @Override // defpackage.bv1
    public final void c0(Object obj) {
        if (!(obj instanceof c90)) {
            r0(obj);
        } else {
            c90 c90Var = (c90) obj;
            q0(c90Var.a, c90.b.get(c90Var) == 1);
        }
    }

    @Override // defpackage.qi0
    public final hi0 d() {
        return this.r;
    }

    @Override // defpackage.dh0
    public final hi0 e() {
        return this.r;
    }

    @Override // defpackage.dh0
    public final void g(Object obj) {
        Throwable thA = g83.a(obj);
        if (thA != null) {
            obj = new c90(thA, false);
        }
        Object objW = W(obj);
        if (objW == cv1.b) {
            return;
        }
        q(objW);
    }

    public final void s0(ti0 ti0Var, g0 g0Var, df1 df1Var) {
        Object objF;
        int iOrdinal = ti0Var.ordinal();
        t64 t64Var = t64.a;
        if (iOrdinal == 0) {
            try {
                tu0.a(dm0.A(dm0.s(g0Var, this, df1Var)), t64Var);
                return;
            } finally {
                th = th;
                if (th instanceof ru0) {
                    th = ((ru0) th).n;
                }
                g(gg4.q(th));
            }
        }
        if (iOrdinal != 1) {
            if (iOrdinal == 2) {
                df1Var.getClass();
                dm0.A(dm0.s(g0Var, this, df1Var)).g(t64Var);
                return;
            }
            if (iOrdinal != 3) {
                p61.x();
                return;
            }
            try {
                hi0 hi0Var = this.r;
                Object objC = iy3.c(hi0Var, null);
                try {
                    if (df1Var instanceof dr) {
                        n44.R(2, df1Var);
                        objF = df1Var.f(g0Var, this);
                    } else {
                        objF = dm0.O(df1Var, g0Var, this);
                    }
                    iy3.a(hi0Var, objC);
                    if (objF != ri0.n) {
                        g(objF);
                    }
                } catch (Throwable th) {
                    iy3.a(hi0Var, objC);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    @Override // defpackage.bv1
    public final String w() {
        return getClass().getSimpleName().concat(" was cancelled");
    }

    public void r0(Object obj) {
    }

    public void q0(Throwable th, boolean z) {
    }
}
