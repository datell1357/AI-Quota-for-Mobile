package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import java.lang.reflect.Method;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l6 implements ne1 {
    public final /* synthetic */ int n;

    public /* synthetic */ l6(int i) {
        this.n = i;
    }

    @Override // defpackage.ne1
    public final Object a() {
        Class<?> returnType;
        int i = this.n;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                t1 t1Var = s13.n;
                return Integer.valueOf(s13.n.a().nextInt(2147418112) + 65536);
            case 1:
                return UUID.randomUUID().toString();
            case 2:
                ds2 ds2Var = x7.a;
                return bo0.a;
            case 3:
                lc0 lc0Var = eg.a;
                return gq0.a;
            case 4:
                lc0 lc0Var2 = eg.a;
                return w13.v;
            case 5:
                is3 is3Var = nv.a;
                return null;
            case 6:
                is3 is3Var2 = a80.a;
                return Boolean.TRUE;
            case 7:
                return t64Var;
            case 8:
                is3 is3Var3 = dc0.a;
                return null;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                wb0.b("Unexpected call to default provider");
                throw new v00(6);
            case 10:
                return Float.valueOf(1.0f);
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return new Handler(Looper.getMainLooper());
            case 12:
                try {
                    Method declaredMethod = SQLiteDatabase.class.getDeclaredMethod("getThreadSession", null);
                    declaredMethod.setAccessible(true);
                    return declaredMethod;
                } catch (Throwable unused) {
                    return null;
                }
            case 13:
                try {
                    String[] strArr = ee1.o;
                    Method method = (Method) ee1.q.getValue();
                    if (method == null || (returnType = method.getReturnType()) == null) {
                        return null;
                    }
                    Class cls = Integer.TYPE;
                    return returnType.getDeclaredMethod("beginTransaction", cls, SQLiteTransactionListener.class, cls, CancellationSignal.class);
                } catch (Throwable unused2) {
                    return null;
                }
            case 14:
                throw new IllegalStateException("CompositionLocal LocalHostDefaultProvider not present");
            case 15:
                zp0 zp0Var = zu0.a;
                return n92.a.s;
            case 16:
                return (l23) n94.a.getValue();
            case 17:
                lc0 lc0Var3 = wp1.a;
                return oo0.a;
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                is3 is3Var4 = wr1.a;
                return null;
            case 19:
                ck1 ck1Var = at1.a;
                return Boolean.TRUE;
            case 20:
                return new cw0(48.0f);
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
            case 22:
                return t64Var;
            case ConnectionResult.API_DISABLED /* 23 */:
                return vw1.b;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                return mw1.b;
            case 25:
                return hw1.b;
            case 26:
                return rw1.b;
            case 27:
                return nv1.b;
            case 28:
                return new n12(0, 0);
            default:
                lc0 lc0Var4 = r52.a;
                return null;
        }
    }

    public /* synthetic */ l6(bu1 bu1Var, int i) {
        this.n = i;
    }
}
