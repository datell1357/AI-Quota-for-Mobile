package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ha4 extends fa4 {
    public final float A;
    public final String n;
    public final List o;
    public final int p;
    public final zf5 q;
    public final float r;
    public final zf5 s;
    public final float t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final float f125u;
    public final int v;
    public final int w;
    public final float x;
    public final float y;
    public final float z;

    public ha4(String str, List list, int i, zf5 zf5Var, float f, zf5 zf5Var2, float f2, float f3, int i2, int i3, float f4, float f5, float f6, float f7) {
        this.n = str;
        this.o = list;
        this.p = i;
        this.q = zf5Var;
        this.r = f;
        this.s = zf5Var2;
        this.t = f2;
        this.f125u = f3;
        this.v = i2;
        this.w = i3;
        this.x = f4;
        this.y = f5;
        this.z = f6;
        this.A = f7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ha4.class != obj.getClass()) {
            return false;
        }
        ha4 ha4Var = (ha4) obj;
        return this.n.equals(ha4Var.n) && nt1.g(this.q, ha4Var.q) && this.r == ha4Var.r && nt1.g(this.s, ha4Var.s) && this.t == ha4Var.t && this.f125u == ha4Var.f125u && this.v == ha4Var.v && this.w == ha4Var.w && this.x == ha4Var.x && this.y == ha4Var.y && this.z == ha4Var.z && this.A == ha4Var.A && this.p == ha4Var.p && nt1.g(this.o, ha4Var.o);
    }

    public final int hashCode() {
        int iHashCode = (this.o.hashCode() + (this.n.hashCode() * 31)) * 31;
        zf5 zf5Var = this.q;
        int iL = di0.l(this.r, (iHashCode + (zf5Var != null ? zf5Var.hashCode() : 0)) * 31, 31);
        zf5 zf5Var2 = this.s;
        return Integer.hashCode(this.p) + di0.l(this.A, di0.l(this.z, di0.l(this.y, di0.l(this.x, xw1.j(this.w, xw1.j(this.v, di0.l(this.f125u, di0.l(this.t, (iL + (zf5Var2 != null ? zf5Var2.hashCode() : 0)) * 31, 31), 31), 31), 31), 31), 31), 31), 31);
    }
}
