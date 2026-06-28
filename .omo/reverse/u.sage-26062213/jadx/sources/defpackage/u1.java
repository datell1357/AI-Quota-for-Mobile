package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u1 {
    public static final u1 c;
    public static final u1 d;
    public final boolean a;
    public final Throwable b;

    static {
        if (b2.q) {
            d = null;
            c = null;
        } else {
            d = new u1(null, false);
            c = new u1(null, true);
        }
    }

    public u1(Throwable th, boolean z) {
        this.a = z;
        this.b = th;
    }
}
