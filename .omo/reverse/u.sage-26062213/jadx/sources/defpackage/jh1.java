package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jh1 extends og2 {
    @Override // defpackage.og2
    public final og2 C(pe1 pe1Var, pe1 pe1Var2) {
        return (og2) ((po3) wo3.e(new yg1(new ih1(0, pe1Var, pe1Var2), 1)));
    }

    @Override // defpackage.og2, defpackage.po3
    public final void c() {
        synchronized (wo3.c) {
            o();
        }
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
        wo3.a();
    }

    @Override // defpackage.og2, defpackage.po3
    public final po3 u(pe1 pe1Var) {
        return (a23) ((po3) wo3.e(new yg1(new ly(3, pe1Var), 1)));
    }

    @Override // defpackage.og2
    public final zf5 w() {
        throw new IllegalStateException("Cannot apply the global snapshot directly. Call Snapshot.advanceGlobalSnapshot");
    }
}
