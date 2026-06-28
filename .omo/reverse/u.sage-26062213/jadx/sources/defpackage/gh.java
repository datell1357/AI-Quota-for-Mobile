package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gh extends rd2 implements ch3 {
    public final boolean b;
    public final pe1 c;

    public gh(pe1 pe1Var, boolean z) {
        this.b = z;
        this.c = pe1Var;
    }

    @Override // defpackage.ch3
    public final bh3 d() {
        bh3 bh3Var = new bh3();
        bh3Var.p = this.b;
        this.c.k(bh3Var);
        return bh3Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        return new ai0(this.b, false, this.c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gh)) {
            return false;
        }
        gh ghVar = (gh) obj;
        return this.b == ghVar.b && this.c == ghVar.c;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        ai0 ai0Var = (ai0) md2Var;
        ai0Var.B = this.b;
        ai0Var.D = this.c;
    }

    public final int hashCode() {
        return this.c.hashCode() + (Boolean.hashCode(this.b) * 31);
    }
}
