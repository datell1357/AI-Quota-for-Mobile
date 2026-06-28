package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class cp2 extends rd2 {
    public final pe1 b;

    public cp2(pe1 pe1Var) {
        this.b = pe1Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        dp2 dp2Var = new dp2();
        dp2Var.B = this.b;
        return dp2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof cp2) {
            return this.b == ((cp2) obj).b;
        }
        return false;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        ((dp2) md2Var).B = this.b;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
