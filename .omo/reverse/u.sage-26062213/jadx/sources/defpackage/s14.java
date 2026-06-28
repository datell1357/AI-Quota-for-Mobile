package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s14 extends og2 {
    public final og2 o;
    public final boolean p;
    public final boolean q;
    public pe1 r;
    public pe1 s;
    public final long t;

    /* JADX WARN: Illegal instructions before constructor call */
    public s14(og2 og2Var, pe1 pe1Var, pe1 pe1Var2, boolean z, boolean z2) {
        pe1 pe1VarI;
        pe1 pe1VarE;
        jd3 jd3Var = wo3.a;
        super(0L, uo3.r, wo3.k(pe1Var, (og2Var == null || (pe1VarE = og2Var.e()) == null) ? wo3.j.e : pe1VarE, z), wo3.l(pe1Var2, (og2Var == null || (pe1VarI = og2Var.i()) == null) ? wo3.j.f : pe1VarI));
        this.o = og2Var;
        this.p = z;
        this.q = z2;
        this.r = this.e;
        this.s = this.f;
        this.t = c75.w();
    }

    @Override // defpackage.og2
    public final void B(lg2 lg2Var) {
        ix.Z();
        throw null;
    }

    @Override // defpackage.og2
    public final og2 C(pe1 pe1Var, pe1 pe1Var2) {
        pe1 pe1VarK = wo3.k(pe1Var, this.r, true);
        pe1 pe1VarL = wo3.l(pe1Var2, this.s);
        return !this.p ? new s14(D().C(null, pe1VarL), pe1VarK, pe1VarL, false, true) : D().C(pe1VarK, pe1VarL);
    }

    public final og2 D() {
        og2 og2Var = this.o;
        return og2Var == null ? wo3.j : og2Var;
    }

    @Override // defpackage.og2, defpackage.po3
    public final void c() {
        og2 og2Var;
        this.c = true;
        if (!this.q || (og2Var = this.o) == null) {
            return;
        }
        og2Var.c();
    }

    @Override // defpackage.po3
    public final uo3 d() {
        return D().d();
    }

    @Override // defpackage.og2, defpackage.po3
    public final pe1 e() {
        return this.r;
    }

    @Override // defpackage.og2, defpackage.po3
    public final boolean f() {
        return D().f();
    }

    @Override // defpackage.po3
    public final long g() {
        return D().g();
    }

    @Override // defpackage.og2, defpackage.po3
    public final int h() {
        return D().h();
    }

    @Override // defpackage.og2, defpackage.po3
    public final pe1 i() {
        return this.s;
    }

    @Override // defpackage.og2, defpackage.po3
    public final void k() {
        ix.Z();
        throw null;
    }

    @Override // defpackage.og2, defpackage.po3
    public final void l() {
        ix.Z();
        throw null;
    }

    @Override // defpackage.og2, defpackage.po3
    public final void m() {
        D().m();
    }

    @Override // defpackage.og2, defpackage.po3
    public final void n(bs3 bs3Var) {
        D().n(bs3Var);
    }

    @Override // defpackage.po3
    public final void r(uo3 uo3Var) {
        ix.Z();
        throw null;
    }

    @Override // defpackage.po3
    public final void s(long j) {
        ix.Z();
        throw null;
    }

    @Override // defpackage.og2, defpackage.po3
    public final void t(int i) {
        D().t(i);
    }

    @Override // defpackage.og2, defpackage.po3
    public final po3 u(pe1 pe1Var) {
        pe1 pe1VarK = wo3.k(pe1Var, this.r, true);
        return !this.p ? wo3.g(D().u(null), pe1VarK, true) : D().u(pe1VarK);
    }

    @Override // defpackage.og2
    public final zf5 w() {
        return D().w();
    }

    @Override // defpackage.og2
    public final lg2 x() {
        return D().x();
    }

    @Override // defpackage.og2
    /* JADX INFO: renamed from: y */
    public final pe1 e() {
        return this.r;
    }
}
