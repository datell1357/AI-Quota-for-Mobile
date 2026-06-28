package defpackage;

import android.os.Looper;
import android.view.Choreographer;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class da extends xx1 implements ne1 {
    public static final da A;
    public static final da B;
    public static final da C;
    public static final da D;
    public static final da E;
    public static final da F;
    public static final da G;
    public static final da H;
    public static final da I;
    public static final da J;
    public static final da K;
    public static final da L;
    public static final da M;
    public static final da N;
    public static final da O;
    public static final da P;
    public static final da Q;
    public static final da R;
    public static final da S;
    public static final da p;
    public static final da q;
    public static final da r;
    public static final da s;
    public static final da t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final da f66u;
    public static final da v;
    public static final da w;
    public static final da x;
    public static final da y;
    public static final da z;
    public final /* synthetic */ int o;

    static {
        int i = 0;
        p = new da(i, 0);
        q = new da(i, 1);
        r = new da(i, 2);
        s = new da(i, 3);
        t = new da(i, 4);
        f66u = new da(i, 5);
        v = new da(i, 6);
        w = new da(i, 7);
        x = new da(i, 8);
        y = new da(i, 9);
        z = new da(i, 10);
        A = new da(i, 11);
        B = new da(i, 12);
        C = new da(i, 13);
        D = new da(i, 14);
        E = new da(i, 15);
        F = new da(i, 16);
        G = new da(i, 17);
        H = new da(i, 18);
        I = new da(i, 19);
        J = new da(i, 20);
        K = new da(i, 21);
        L = new da(i, 22);
        M = new da(i, 23);
        N = new da(i, 24);
        O = new da(i, 25);
        P = new da(i, 26);
        Q = new da(i, 27);
        R = new da(i, 28);
        S = new da(i, 29);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ da(int i, int i2) {
        super(i);
        this.o = i2;
    }

    @Override // defpackage.ne1
    public final Object a() {
        Choreographer choreographer;
        int i = this.o;
        int i2 = 2;
        t64 t64Var = t64.a;
        dh0 dh0Var = null;
        switch (i) {
            case 0:
                ea.a("LocalConfiguration");
                throw null;
            case 1:
                ea.a("LocalContext");
                throw null;
            case 2:
                ea.a("LocalImageVectorCache");
                throw null;
            case 3:
                ea.a("LocalResourceIdCache");
                throw null;
            case 4:
                ea.a("LocalView");
                throw null;
            case 5:
                return UUID.randomUUID();
            case 6:
                return Boolean.FALSE;
            case 7:
                return "DEFAULT_TEST_TAG";
            case 8:
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    choreographer = Choreographer.getInstance();
                } else {
                    zp0 zp0Var = zu0.a;
                    choreographer = (Choreographer) ca.H(n92.a, new kc(i2, dh0Var, 0));
                }
                nc ncVar = new nc(choreographer, w80.p(Looper.getMainLooper()));
                return ca.B(ncVar, ncVar.y);
            case ConnectionResult.SERVICE_INVALID /* 9 */:
            case 10:
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return t64Var;
            case 12:
                return new xy1(2);
            case 13:
            case 14:
                return null;
            case 15:
                kc0.b("LocalAutofillManager");
                throw null;
            case 16:
                kc0.b("LocalAutofillTree");
                throw null;
            case 17:
                kc0.b("LocalClipboard");
                throw null;
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                kc0.b("LocalClipboardManager");
                throw null;
            case 19:
                return Boolean.TRUE;
            case 20:
                kc0.b("LocalDensity");
                throw null;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                kc0.b("LocalFocusManager");
                throw null;
            case 22:
                kc0.b("LocalFontFamilyResolver");
                throw null;
            case ConnectionResult.API_DISABLED /* 23 */:
                kc0.b("LocalFontLoader");
                throw null;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                kc0.b("LocalGraphicsContext");
                throw null;
            case 25:
                kc0.b("LocalHapticFeedback");
                throw null;
            case 26:
                kc0.b("LocalInputManager");
                throw null;
            case 27:
                kc0.b("LocalLayoutDirection");
                throw null;
            case 28:
                return null;
            default:
                kc0.b("LocalProvidableLocaleList");
                throw null;
        }
    }
}
