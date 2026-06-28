package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t14 extends po3 {
    public final po3 e;
    public final boolean f;
    public final boolean g;
    public pe1 h;
    public final long i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t14(po3 po3Var, pe1 pe1Var, boolean z, boolean z2) {
        pe1 pe1VarE;
        super(0L, uo3.r);
        jd3 jd3Var = wo3.a;
        this.e = po3Var;
        this.f = z;
        this.g = z2;
        this.h = wo3.k(pe1Var, (po3Var == null || (pe1VarE = po3Var.e()) == null) ? wo3.j.e : pe1VarE, z);
        this.i = c75.w();
    }

    @Override // defpackage.po3
    public final void c() {
        po3 po3Var;
        this.c = true;
        if (!this.g || (po3Var = this.e) == null) {
            return;
        }
        po3Var.c();
    }

    @Override // defpackage.po3
    public final uo3 d() {
        return v().d();
    }

    @Override // defpackage.po3
    public final pe1 e() {
        return this.h;
    }

    @Override // defpackage.po3
    public final boolean f() {
        return v().f();
    }

    @Override // defpackage.po3
    public final long g() {
        return v().g();
    }

    @Override // defpackage.po3
    public final pe1 i() {
        return null;
    }

    @Override // defpackage.po3
    public final void k() {
        ix.Z();
        throw null;
    }

    @Override // defpackage.po3
    public final void l() {
        ix.Z();
        throw null;
    }

    @Override // defpackage.po3
    public final void m() {
        v().m();
    }

    @Override // defpackage.po3
    public final void n(bs3 bs3Var) {
        v().n(bs3Var);
    }

    @Override // defpackage.po3
    public final po3 u(pe1 pe1Var) {
        pe1 pe1VarK = wo3.k(pe1Var, this.h, true);
        return !this.f ? wo3.g(v().u(null), pe1VarK, true) : v().u(pe1VarK);
    }

    public final po3 v() {
        po3 po3Var = this.e;
        return po3Var == null ? wo3.j : po3Var;
    }
}
