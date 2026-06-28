package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sp {
    public final float a;
    public final float b;
    public final float c;
    public final int d;
    public final long e;

    public sp(bk2 bk2Var) {
        bk2Var.getClass();
        float f = bk2Var.c;
        float f2 = bk2Var.d;
        float f3 = bk2Var.b;
        int i = bk2Var.a;
        long j = bk2Var.e;
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = i;
        this.e = j;
    }

    public final String toString() {
        return "BackEventCompat(touchX=" + this.a + ", touchY=" + this.b + ", progress=" + this.c + ", swipeEdge=" + this.d + ", frameTimeMillis=" + this.e + ')';
    }
}
