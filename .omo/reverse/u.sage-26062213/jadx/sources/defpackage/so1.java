package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class so1 {
    public static int k;
    public static final b21 l = new b21(8);
    public final String a;
    public final float b;
    public final float c;
    public final float d;
    public final float e;
    public final da4 f;
    public final long g;
    public final int h;
    public final boolean i;
    public final int j;

    public so1(String str, float f, float f2, float f3, float f4, da4 da4Var, long j, int i, boolean z) {
        int i2;
        synchronized (l) {
            i2 = k;
            k = i2 + 1;
        }
        this.a = str;
        this.b = f;
        this.c = f2;
        this.d = f3;
        this.e = f4;
        this.f = da4Var;
        this.g = j;
        this.h = i;
        this.i = z;
        this.j = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof so1)) {
            return false;
        }
        so1 so1Var = (so1) obj;
        return nt1.g(this.a, so1Var.a) && cw0.b(this.b, so1Var.b) && cw0.b(this.c, so1Var.c) && this.d == so1Var.d && this.e == so1Var.e && this.f.equals(so1Var.f) && t70.c(this.g, so1Var.g) && this.h == so1Var.h && this.i == so1Var.i;
    }

    public final int hashCode() {
        int iHashCode = (this.f.hashCode() + di0.l(this.e, di0.l(this.d, di0.l(this.c, di0.l(this.b, this.a.hashCode() * 31, 31), 31), 31), 31)) * 31;
        int i = t70.g;
        return Boolean.hashCode(this.i) + xw1.j(this.h, xw1.l(iHashCode, 31, this.g), 31);
    }
}
