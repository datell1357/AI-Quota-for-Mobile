package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class as2 extends rd2 {
    public final zr2 b;

    public as2(zr2 zr2Var) {
        this.b = zr2Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        bs2 bs2Var = new bs2();
        bs2Var.D = this.b;
        return bs2Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof as2) {
            return nt1.g(((as2) obj).b, this.b);
        }
        return false;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        bs2 bs2Var = (bs2) md2Var;
        zr2 zr2Var = bs2Var.D;
        zr2 zr2Var2 = this.b;
        if (nt1.g(zr2Var2, zr2Var)) {
            return;
        }
        bs2Var.D = zr2Var2;
        bs2Var.H0();
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
