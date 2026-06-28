package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gx {
    public final String a;
    public final String b;
    public final int c;

    public gx(String str, int i, String str2) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gx)) {
            return false;
        }
        gx gxVar = (gx) obj;
        return nt1.g(this.a, gxVar.a) && this.b.equals(gxVar.b) && this.c == gxVar.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + xw1.m(this.a.hashCode() * 31, this.b, 31);
    }

    public final String toString() {
        return xw1.p(this.c, ")", di0.B("BottomNavigationItem(route=", this.a, ", label=", this.b, ", iconRes="));
    }
}
