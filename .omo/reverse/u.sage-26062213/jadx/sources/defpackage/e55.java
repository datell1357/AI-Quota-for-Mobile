package defpackage;

import com.google.android.gms.common.api.CommonStatusCodes;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public enum e55 implements tn4 {
    o(0),
    p(1),
    q(2),
    r(3),
    s(4),
    t(5),
    f79u(6),
    v(7),
    w(8),
    x(20),
    y(21),
    z(22);

    public final int n;

    e55(int i) {
        this.n = i;
    }

    public static e55 a(int i) {
        switch (i) {
            case 0:
                return o;
            case 1:
                return p;
            case 2:
                return q;
            case 3:
                return r;
            case 4:
                return s;
            case 5:
                return t;
            case 6:
                return f79u;
            case 7:
                return v;
            case 8:
                return w;
            default:
                switch (i) {
                    case 20:
                        return x;
                    case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                        return y;
                    case 22:
                        return z;
                    default:
                        return null;
                }
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
