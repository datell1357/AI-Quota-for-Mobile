package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nz1 extends rd2 {
    public final float b;
    public final boolean c;

    public nz1(float f, boolean z) {
        this.b = f;
        this.c = z;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        oz1 oz1Var = new oz1();
        oz1Var.B = this.b;
        oz1Var.C = this.c;
        return oz1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        nz1 nz1Var = obj instanceof nz1 ? (nz1) obj : null;
        return nz1Var != null && this.b == nz1Var.b && this.c == nz1Var.c;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        oz1 oz1Var = (oz1) md2Var;
        oz1Var.B = this.b;
        oz1Var.C = this.c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + (Float.hashCode(this.b) * 31);
    }
}
