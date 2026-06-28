package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a60 extends rd2 implements ch3 {
    public final pe1 b;

    public a60(pe1 pe1Var) {
        this.b = pe1Var;
    }

    @Override // defpackage.ch3
    public final bh3 d() {
        bh3 bh3Var = new bh3();
        bh3Var.p = false;
        bh3Var.q = true;
        this.b.k(bh3Var);
        return bh3Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        return new ai0(false, true, this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a60) {
            return this.b == ((a60) obj).b;
        }
        return false;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        ((ai0) md2Var).D = this.b;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
