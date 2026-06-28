package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x04 {
    public final long a;
    public final long b;
    public final boolean c;

    public x04(long j, long j2, boolean z) {
        this.a = j;
        this.b = j2;
        this.c = z;
    }

    public final x04 a(x04 x04Var) {
        return new x04(go2.e(this.a, x04Var.a), Math.max(this.b, x04Var.b), this.c || x04Var.c);
    }
}
