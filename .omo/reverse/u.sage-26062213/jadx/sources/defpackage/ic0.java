package defpackage;

import android.graphics.PathMeasure;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ic0 extends xx1 implements ne1 {
    public static final ic0 A;
    public static final ic0 B;
    public static final ic0 C;
    public static final ic0 D;
    public static final ic0 p;
    public static final ic0 q;
    public static final ic0 r;
    public static final ic0 s;
    public static final ic0 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final ic0 f135u;
    public static final ic0 v;
    public static final ic0 w;
    public static final ic0 x;
    public static final ic0 y;
    public static final ic0 z;
    public final /* synthetic */ int o;

    static {
        int i = 0;
        p = new ic0(i, 0);
        q = new ic0(i, 1);
        r = new ic0(i, 2);
        s = new ic0(i, 3);
        t = new ic0(i, 4);
        f135u = new ic0(i, 5);
        v = new ic0(i, 6);
        w = new ic0(i, 7);
        x = new ic0(i, 8);
        y = new ic0(i, 9);
        z = new ic0(i, 10);
        A = new ic0(i, 11);
        B = new ic0(i, 12);
        C = new ic0(i, 13);
        D = new ic0(i, 14);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ic0(int i, int i2) {
        super(i);
        this.o = i2;
    }

    @Override // defpackage.ne1
    public final Object a() {
        switch (this.o) {
            case 0:
                return Boolean.FALSE;
            case 1:
                return null;
            case 2:
                return new jc0();
            case 3:
                return null;
            case 4:
                kc0.b("LocalTextToolbar");
                throw null;
            case 5:
                kc0.b("LocalUriHandler");
                throw null;
            case 6:
                kc0.b("LocalViewConfiguration");
                throw null;
            case 7:
                kc0.b("LocalWindowInfo");
                throw null;
            case 8:
                return Boolean.TRUE;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return Boolean.FALSE;
            case 10:
                return Boolean.FALSE;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return new xy1(3);
            case 12:
                return new tb(new PathMeasure());
            case 13:
                return null;
            default:
                return t64.a;
        }
    }
}
