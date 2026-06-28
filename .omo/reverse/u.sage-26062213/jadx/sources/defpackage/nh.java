package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nh extends dm0 {
    public static volatile nh Q;
    public static final mh R = new mh(0);
    public final rq0 P;

    public nh() {
        super(27);
        this.P = new rq0();
    }

    public static nh T() {
        if (Q != null) {
            return Q;
        }
        synchronized (nh.class) {
            try {
                if (Q == null) {
                    Q = new nh();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return Q;
    }
}
