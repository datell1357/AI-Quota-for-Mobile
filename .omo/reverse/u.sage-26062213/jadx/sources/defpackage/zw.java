package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zw {
    public gb a = null;
    public y8 b = null;
    public x20 c = null;
    public sb d = null;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zw)) {
            return false;
        }
        zw zwVar = (zw) obj;
        return nt1.g(this.a, zwVar.a) && nt1.g(this.b, zwVar.b) && nt1.g(this.c, zwVar.c) && nt1.g(this.d, zwVar.d);
    }

    public final int hashCode() {
        gb gbVar = this.a;
        int iHashCode = (gbVar == null ? 0 : gbVar.hashCode()) * 31;
        y8 y8Var = this.b;
        int iHashCode2 = (iHashCode + (y8Var == null ? 0 : y8Var.hashCode())) * 31;
        x20 x20Var = this.c;
        int iHashCode3 = (iHashCode2 + (x20Var == null ? 0 : x20Var.hashCode())) * 31;
        sb sbVar = this.d;
        return iHashCode3 + (sbVar != null ? sbVar.hashCode() : 0);
    }

    public final String toString() {
        return "BorderCache(imageBitmap=" + this.a + ", canvas=" + this.b + ", canvasDrawScope=" + this.c + ", borderPath=" + this.d + ")";
    }
}
