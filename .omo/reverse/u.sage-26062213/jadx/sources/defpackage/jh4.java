package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class jh4 extends rd2 {
    public final ju0 b;
    public final df1 c;
    public final Object d;

    public jh4(ju0 ju0Var, df1 df1Var, Object obj) {
        this.b = ju0Var;
        this.c = df1Var;
        this.d = obj;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        lh4 lh4Var = new lh4();
        lh4Var.B = this.b;
        lh4Var.C = this.c;
        return lh4Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || jh4.class != obj.getClass()) {
            return false;
        }
        jh4 jh4Var = (jh4) obj;
        return this.b == jh4Var.b && this.d.equals(jh4Var.d);
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        lh4 lh4Var = (lh4) md2Var;
        lh4Var.B = this.b;
        lh4Var.C = this.c;
    }

    public final int hashCode() {
        return this.d.hashCode() + xw1.n(this.b.hashCode() * 31, false, 31);
    }
}
