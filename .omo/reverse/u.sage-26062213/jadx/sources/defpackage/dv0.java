package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class dv0 extends rd2 {
    public final dh b;

    public dv0(dh dhVar) {
        this.b = dhVar;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        ev0 ev0Var = new ev0();
        ev0Var.B = this.b;
        return ev0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof dv0) && nt1.g(this.b, ((dv0) obj).b);
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        ev0 ev0Var = (ev0) md2Var;
        dh dhVar = ev0Var.B;
        dh dhVar2 = this.b;
        if (nt1.g(dhVar, dhVar2) || !ev0Var.n.A) {
            return;
        }
        dh dhVar3 = ev0Var.B;
        dhVar3.i();
        dhVar3.b = null;
        dhVar2.getClass();
        ev0Var.B = dhVar2;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "DisplayingDisappearingItemsElement(animator=" + this.b + ")";
    }
}
