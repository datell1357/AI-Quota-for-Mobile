package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class it1 {
    public final int a;
    public final int b;
    public final eh c;

    public it1(int i, int i2, eh ehVar) {
        this.a = i;
        this.b = i2;
        this.c = ehVar;
        if (i < 0) {
            dr1.a("startIndex should be >= 0");
        }
        if (i2 > 0) {
            return;
        }
        dr1.a("size should be > 0");
    }
}
