package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class cs2 extends rd2 {
    public final zr2 b;

    public cs2(zr2 zr2Var) {
        this.b = zr2Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        fs2 fs2Var = new fs2();
        fs2Var.B = this.b;
        return fs2Var;
    }

    public final boolean equals(Object obj) {
        cs2 cs2Var = obj instanceof cs2 ? (cs2) obj : null;
        if (cs2Var == null) {
            return false;
        }
        return nt1.g(this.b, cs2Var.b);
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        ((fs2) md2Var).B = this.b;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
