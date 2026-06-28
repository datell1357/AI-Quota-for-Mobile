package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bk2 {
    public final int a;
    public final float b;
    public final float c;
    public final float d;
    public final long e;

    public bk2(int i, float f, float f2, float f3, long j) {
        this.a = i;
        this.b = f;
        this.c = f2;
        this.d = f3;
        this.e = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && bk2.class == obj.getClass()) {
            bk2 bk2Var = (bk2) obj;
            return this.c == bk2Var.c && this.d == bk2Var.d && this.b == bk2Var.b && this.a == bk2Var.a && this.e == bk2Var.e;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.e) + xw1.j(this.a, di0.l(this.b, di0.l(this.d, Float.hashCode(this.c) * 31, 31), 31), 31);
    }

    public final String toString() {
        return "NavigationEvent(touchX=" + this.c + ", touchY=" + this.d + ", progress=" + this.b + ", swipeEdge=" + this.a + ", frameTimeMillis=" + this.e + ')';
    }
}
