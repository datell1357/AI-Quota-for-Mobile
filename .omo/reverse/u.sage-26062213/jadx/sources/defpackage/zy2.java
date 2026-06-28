package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zy2 {
    public final String a;
    public final int b;
    public final int c;
    public final boolean d;

    public zy2(int i, int i2, String str, boolean z) {
        this.a = str;
        this.b = i;
        this.c = i2;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zy2)) {
            return false;
        }
        zy2 zy2Var = (zy2) obj;
        return this.a.equals(zy2Var.a) && this.b == zy2Var.b && this.c == zy2Var.c && this.d == zy2Var.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + xw1.j(this.c, xw1.j(this.b, this.a.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        return "ProcessDetails(processName=" + this.a + ", pid=" + this.b + ", importance=" + this.c + ", isDefaultProcess=" + this.d + ')';
    }
}
