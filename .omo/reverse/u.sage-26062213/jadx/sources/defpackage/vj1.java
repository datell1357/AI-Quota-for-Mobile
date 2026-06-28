package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vj1 {
    public final long a;
    public final long b;
    public final float c;
    public final long d;
    public final long e;

    public vj1(long j, long j2, float f, long j3, long j4) {
        this.a = j;
        this.b = j2;
        this.c = f;
        this.d = j3;
        this.e = j4;
    }

    public final String toString() {
        return "HistoricalChange(uptimeMillis=" + this.a + ", position=" + go2.g(this.b) + ", scaleFactor=" + this.c + ", panOffset=" + go2.g(this.d) + ")";
    }
}
