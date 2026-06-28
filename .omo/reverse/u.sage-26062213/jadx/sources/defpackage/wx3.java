package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wx3 extends rd2 {
    public final String b;
    public final ay3 c;
    public final qa1 d;
    public final int e;
    public final boolean f;
    public final int g;
    public final int h;

    public wx3(String str, ay3 ay3Var, qa1 qa1Var, int i, boolean z, int i2, int i3) {
        this.b = str;
        this.c = ay3Var;
        this.d = qa1Var;
        this.e = i;
        this.f = z;
        this.g = i2;
        this.h = i3;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        zx3 zx3Var = new zx3();
        zx3Var.B = this.b;
        zx3Var.C = this.c;
        zx3Var.D = this.d;
        zx3Var.E = this.e;
        zx3Var.F = this.f;
        zx3Var.G = this.g;
        zx3Var.H = this.h;
        return zx3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wx3)) {
            return false;
        }
        wx3 wx3Var = (wx3) obj;
        return nt1.g(this.b, wx3Var.b) && nt1.g(this.c, wx3Var.c) && nt1.g(this.d, wx3Var.d) && this.e == wx3Var.e && this.f == wx3Var.f && this.g == wx3Var.g && this.h == wx3Var.h;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0084 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.rd2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(defpackage.md2 r11) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wx3.f(md2):void");
    }

    public final int hashCode() {
        return (((xw1.n(xw1.j(this.e, (this.d.hashCode() + xw1.o(this.c, this.b.hashCode() * 31, 31)) * 31, 31), this.f, 31) + this.g) * 31) + this.h) * 31;
    }
}
