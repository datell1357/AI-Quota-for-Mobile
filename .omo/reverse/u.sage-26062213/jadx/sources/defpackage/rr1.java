package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class rr1 extends rd2 {
    public final hd4 b;

    public rr1(hd4 hd4Var) {
        this.b = hd4Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        tr1 tr1Var = new tr1();
        tr1Var.D = this.b;
        return tr1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof rr1) {
            return nt1.g(((rr1) obj).b, this.b);
        }
        return false;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        tr1 tr1Var = (tr1) md2Var;
        hd4 hd4Var = tr1Var.D;
        hd4 hd4Var2 = this.b;
        if (nt1.g(hd4Var2, hd4Var)) {
            return;
        }
        tr1Var.D = hd4Var2;
        tr1Var.H0();
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
