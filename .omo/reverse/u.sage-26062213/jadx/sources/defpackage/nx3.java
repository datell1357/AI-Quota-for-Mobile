package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nx3 {
    public final ff a;
    public final ay3 b;
    public final List c;
    public final int d;
    public final boolean e;
    public final int f;
    public final as0 g;
    public final hy1 h;
    public final qa1 i;
    public final long j;

    public nx3(ff ffVar, ay3 ay3Var, List list, int i, boolean z, int i2, as0 as0Var, hy1 hy1Var, qa1 qa1Var, long j) {
        this.a = ffVar;
        this.b = ay3Var;
        this.c = list;
        this.d = i;
        this.e = z;
        this.f = i2;
        this.g = as0Var;
        this.h = hy1Var;
        this.i = qa1Var;
        this.j = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nx3)) {
            return false;
        }
        nx3 nx3Var = (nx3) obj;
        return nt1.g(this.a, nx3Var.a) && nt1.g(this.b, nx3Var.b) && this.c.equals(nx3Var.c) && this.d == nx3Var.d && this.e == nx3Var.e && this.f == nx3Var.f && nt1.g(this.g, nx3Var.g) && this.h == nx3Var.h && nt1.g(this.i, nx3Var.i) && mf0.b(this.j, nx3Var.j);
    }

    public final int hashCode() {
        return Long.hashCode(this.j) + ((this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + xw1.j(this.f, xw1.n((((this.c.hashCode() + xw1.o(this.b, this.a.hashCode() * 31, 31)) * 31) + this.d) * 31, this.e, 31), 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        int i = this.f;
        return "TextLayoutInput(text=" + ((Object) this.a) + ", style=" + this.b + ", placeholders=" + this.c + ", maxLines=" + this.d + ", softWrap=" + this.e + ", overflow=" + (i == 1 ? "Clip" : i == 2 ? "Ellipsis" : i == 5 ? "MiddleEllipsis" : i == 3 ? "Visible" : i == 4 ? "StartEllipsis" : "Invalid") + ", density=" + this.g + ", layoutDirection=" + this.h + ", fontFamilyResolver=" + this.i + ", constraints=" + mf0.l(this.j) + ")";
    }
}
