package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ak1 extends rd2 {
    public final aw b;

    public ak1(aw awVar) {
        this.b = awVar;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        bk1 bk1Var = new bk1();
        bk1Var.B = this.b;
        return bk1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        ak1 ak1Var = obj instanceof ak1 ? (ak1) obj : null;
        if (ak1Var == null) {
            return false;
        }
        return this.b.equals(ak1Var.b);
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        ((bk1) md2Var).B = this.b;
    }

    public final int hashCode() {
        return Float.hashCode(this.b.a);
    }
}
