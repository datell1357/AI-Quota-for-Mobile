package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class iy1 extends rd2 {
    public final ff1 b;

    public iy1(ff1 ff1Var) {
        this.b = ff1Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        ny1 ny1Var = new ny1();
        ny1Var.B = this.b;
        return ny1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof iy1) {
            return this.b == ((iy1) obj).b;
        }
        return false;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        ((ny1) md2Var).B = this.b;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
