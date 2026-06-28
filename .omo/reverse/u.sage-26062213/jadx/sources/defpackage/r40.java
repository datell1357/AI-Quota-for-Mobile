package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r40 extends rd2 {
    public final t3 b;

    public r40(t3 t3Var) {
        this.b = t3Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        q40 q40Var = new q40();
        q40Var.B = this.b;
        return q40Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof r40) {
            return this.b == ((r40) obj).b;
        }
        return false;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        q40 q40Var = (q40) md2Var;
        q40Var.B = this.b;
        w80.A(q40Var);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
