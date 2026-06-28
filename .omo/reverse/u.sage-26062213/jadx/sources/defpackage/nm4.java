package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public enum nm4 implements tn4 {
    o(0),
    p(1),
    q(2),
    r(6),
    s(4),
    t(5),
    f226u(3);

    public final int n;

    nm4(int i) {
        this.n = i;
    }

    public static nm4 a(int i) {
        switch (i) {
            case 0:
                return o;
            case 1:
                return p;
            case 2:
                return q;
            case 3:
                return f226u;
            case 4:
                return s;
            case 5:
                return t;
            case 6:
                return r;
            default:
                return null;
        }
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.n);
    }

    @Override // defpackage.tn4
    public final int zza() {
        return this.n;
    }
}
