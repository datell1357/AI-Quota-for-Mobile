package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class mx0 extends rd2 {
    public final pe1 b;

    public mx0(pe1 pe1Var) {
        this.b = pe1Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        nx0 nx0Var = new nx0();
        nx0Var.B = this.b;
        return nx0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof mx0) {
            return this.b == ((mx0) obj).b;
        }
        return false;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        ((nx0) md2Var).B = this.b;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
