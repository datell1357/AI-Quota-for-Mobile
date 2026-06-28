package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class o74 extends rd2 {
    public final float b;
    public final float c;

    public o74(float f, float f2) {
        this.b = f;
        this.c = f2;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        p74 p74Var = new p74();
        p74Var.B = this.b;
        p74Var.C = this.c;
        return p74Var;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof o74)) {
            return false;
        }
        o74 o74Var = (o74) obj;
        return cw0.b(this.b, o74Var.b) && cw0.b(this.c, o74Var.c);
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        p74 p74Var = (p74) md2Var;
        p74Var.B = this.b;
        p74Var.C = this.c;
    }

    public final int hashCode() {
        return Float.hashCode(this.c) + (Float.hashCode(this.b) * 31);
    }
}
