package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yf3 extends rd2 {
    public final lf3 b;
    public final boolean c;

    public yf3(lf3 lf3Var, boolean z) {
        this.b = lf3Var;
        this.c = z;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        hf3 hf3Var = new hf3();
        hf3Var.B = this.b;
        hf3Var.C = this.c;
        return hf3Var;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof yf3)) {
            return false;
        }
        yf3 yf3Var = (yf3) obj;
        return nt1.g(this.b, yf3Var.b) && this.c == yf3Var.c;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        hf3 hf3Var = (hf3) md2Var;
        hf3Var.B = this.b;
        hf3Var.C = this.c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + xw1.n(this.b.hashCode() * 31, false, 31);
    }
}
