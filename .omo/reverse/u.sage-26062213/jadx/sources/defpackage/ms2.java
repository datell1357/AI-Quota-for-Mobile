package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ms2 {
    public final nb a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final float f;
    public final float g;

    public ms2(nb nbVar, int i, int i2, int i3, int i4, float f, float f2) {
        this.a = nbVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = f;
        this.g = f2;
    }

    public final int a(int i) {
        int i2 = this.c;
        int i3 = this.b;
        return ix.k(i, i3, i2) - i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ms2) {
            ms2 ms2Var = (ms2) obj;
            if (this.a == ms2Var.a && this.b == ms2Var.b && this.c == ms2Var.c && this.d == ms2Var.d && this.e == ms2Var.e && Float.compare(this.f, ms2Var.f) == 0 && Float.compare(this.g, ms2Var.g) == 0) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.g) + di0.l(this.f, xw1.j(this.e, xw1.j(this.d, xw1.j(this.c, xw1.j(this.b, this.a.hashCode() * 31, 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "ParagraphInfo(paragraph=" + this.a + ", startIndex=" + this.b + ", endIndex=" + this.c + ", startLineIndex=" + this.d + ", endLineIndex=" + this.e + ", top=" + this.f + ", bottom=" + this.g + ")";
    }
}
