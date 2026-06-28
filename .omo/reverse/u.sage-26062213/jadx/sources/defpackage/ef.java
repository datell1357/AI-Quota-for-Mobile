package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ef {
    public final Object a;
    public final int b;
    public final int c;
    public final String d;

    public ef(Object obj, int i, int i2, String str) {
        this.a = obj;
        this.b = i;
        this.c = i2;
        this.d = str;
        if (i <= i2) {
            return;
        }
        br1.a("Reversed range is not supported");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ef)) {
            return false;
        }
        ef efVar = (ef) obj;
        return nt1.g(this.a, efVar.a) && this.b == efVar.b && this.c == efVar.c && nt1.g(this.d, efVar.d);
    }

    public final int hashCode() {
        Object obj = this.a;
        return this.d.hashCode() + xw1.j(this.c, xw1.j(this.b, (obj == null ? 0 : obj.hashCode()) * 31, 31), 31);
    }

    public final String toString() {
        return "Range(item=" + this.a + ", start=" + this.b + ", end=" + this.c + ", tag=" + this.d + ")";
    }

    public ef(int i, int i2, Object obj) {
        this(obj, i, i2, "");
    }
}
