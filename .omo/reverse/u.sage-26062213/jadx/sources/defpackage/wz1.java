package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class wz1 extends rd2 {
    public final x02 b;
    public final zx c;
    public final hr2 d;

    public wz1(x02 x02Var, zx zxVar, hr2 hr2Var) {
        this.b = x02Var;
        this.c = zxVar;
        this.d = hr2Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        zz1 zz1Var = new zz1();
        zz1Var.B = this.b;
        zz1Var.C = this.c;
        zz1Var.D = this.d;
        return zz1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wz1)) {
            return false;
        }
        wz1 wz1Var = (wz1) obj;
        return nt1.g(this.b, wz1Var.b) && nt1.g(this.c, wz1Var.c) && this.d == wz1Var.d;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        zz1 zz1Var = (zz1) md2Var;
        zz1Var.B = this.b;
        zz1Var.C = this.c;
        zz1Var.D = this.d;
    }

    public final int hashCode() {
        return this.d.hashCode() + xw1.n((this.c.hashCode() + (this.b.hashCode() * 31)) * 31, false, 31);
    }
}
