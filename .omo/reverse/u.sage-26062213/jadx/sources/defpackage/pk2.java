package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pk2 extends po3 {
    public final pe1 e;
    public final po3 f;

    public pk2(long j, uo3 uo3Var, pe1 pe1Var, po3 po3Var) {
        super(j, uo3Var);
        this.e = pe1Var;
        this.f = po3Var;
        po3Var.k();
    }

    @Override // defpackage.po3
    public final void c() {
        po3 po3Var = this.f;
        if (this.c) {
            return;
        }
        if (this.b != po3Var.g()) {
            a();
        }
        po3Var.l();
        this.c = true;
        synchronized (wo3.c) {
            o();
        }
    }

    @Override // defpackage.po3
    public final pe1 e() {
        return this.e;
    }

    @Override // defpackage.po3
    public final boolean f() {
        return true;
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
    public final void n(bs3 bs3Var) {
        jd3 jd3Var = wo3.a;
        throw new IllegalStateException("Cannot modify a state object in a read-only snapshot");
    }

    @Override // defpackage.po3
    public final po3 u(pe1 pe1Var) {
        return new pk2(this.b, this.a, wo3.k(pe1Var, this.e, true), this.f);
    }

    @Override // defpackage.po3
    public final void m() {
    }
}
