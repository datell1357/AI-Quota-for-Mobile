package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qg2 extends ib0 {
    public final ws2 b;
    public final ws2 c;

    public qg2(Object obj) {
        super(2);
        this.b = ca.A(obj);
        this.c = ca.A(obj);
    }

    @Override // defpackage.ib0
    public final Object l() {
        return this.b.getValue();
    }

    @Override // defpackage.ib0
    public final Object m() {
        return this.c.getValue();
    }

    @Override // defpackage.ib0
    public final void q(Object obj) {
        this.b.setValue(obj);
    }

    @Override // defpackage.ib0
    public final void s() {
    }

    @Override // defpackage.ib0
    public final void r(n14 n14Var) {
    }
}
