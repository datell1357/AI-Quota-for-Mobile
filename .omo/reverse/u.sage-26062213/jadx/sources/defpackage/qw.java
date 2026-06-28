package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qw extends md2 implements oy1, eh3 {
    public pe1 B;

    @Override // defpackage.eh3
    public final void a0(ph3 ph3Var) {
        jl3 jl3Var;
        boolean z;
        mm2 mm2VarP = w80.P(this, 2);
        if (mm2VarP.W) {
            jl3Var = mm2VarP.U;
            z = mm2VarP.V;
        } else {
            o83 o83Var = n44.c;
            if (o83Var == null) {
                n44.c = new o83();
            } else {
                o83Var.a();
            }
            o83 o83Var2 = n44.c;
            o83Var2.getClass();
            o83Var2.A = mm2VarP.F.L;
            o83Var2.y = se0.H(mm2VarP.p);
            po3 po3VarX = k75.x();
            pe1 pe1VarE = po3VarX != null ? po3VarX.e() : null;
            po3 po3VarE = k75.E(po3VarX);
            try {
                this.B.k(o83Var2);
                k75.L(po3VarX, po3VarE, pe1VarE);
                jl3Var = o83Var2.w;
                z = o83Var2.x;
            } catch (Throwable th) {
                k75.L(po3VarX, po3VarE, pe1VarE);
                throw th;
            }
        }
        if (z) {
            nh3.d(ph3Var, jl3Var);
        }
    }

    @Override // defpackage.eh3
    public final boolean g() {
        return false;
    }

    @Override // defpackage.oy1
    public final eb2 h0(gb2 gb2Var, ya2 ya2Var, long j) {
        dv2 dv2VarE = ya2Var.e(j);
        return gb2Var.e0(dv2VarE.n, dv2VarE.o, h01.n, new oc(4, dv2VarE, this));
    }

    public final String toString() {
        return "BlockGraphicsLayerModifier(block=" + this.B + ")";
    }

    @Override // defpackage.md2
    public final boolean v0() {
        return false;
    }
}
