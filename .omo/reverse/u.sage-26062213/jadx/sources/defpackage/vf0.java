package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class vf0 extends rd2 {
    public final pe1 b;

    public vf0(pe1 pe1Var) {
        this.b = pe1Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        wf0 wf0Var = new wf0();
        wf0Var.D = this.b;
        return wf0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof vf0) && ((vf0) obj).b == this.b;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        wf0 wf0Var = (wf0) md2Var;
        pe1 pe1Var = wf0Var.D;
        pe1 pe1Var2 = this.b;
        if (pe1Var2 != pe1Var) {
            wf0Var.D = pe1Var2;
            wf0Var.H0();
        }
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
