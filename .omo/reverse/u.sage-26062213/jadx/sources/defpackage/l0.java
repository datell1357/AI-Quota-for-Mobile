package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l0 {
    public static final l0 c;
    public static final l0 d;
    public final boolean a;
    public final Throwable b;

    static {
        if (b1.s) {
            d = null;
            c = null;
        } else {
            d = new l0(null, false);
            c = new l0(null, true);
        }
    }

    public l0(Throwable th, boolean z) {
        this.a = z;
        this.b = th;
    }
}
