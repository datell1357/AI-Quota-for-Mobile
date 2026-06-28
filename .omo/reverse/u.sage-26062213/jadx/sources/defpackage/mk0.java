package defpackage;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.server.response.FastParser;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import java.io.FileNotFoundException;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import javax.net.ssl.SSLPeerUnverifiedException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mk0 implements aa0, my0, bp2 {
    public final /* synthetic */ int n;

    public static /* synthetic */ void b() {
        throw new ClassCastException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void d(int i, String str) throws FastParser.ParseException {
        throw new FastParser.ParseException(str + ((char) i));
    }

    public static /* synthetic */ void e(Object obj, Object obj2, Object obj3) throws SSLPeerUnverifiedException {
        throw new SSLPeerUnverifiedException("Certificate for <" + obj + obj2 + obj3);
    }

    public static /* synthetic */ void f(Object obj, Object obj2, String str) {
        throw new IllegalStateException(str + obj + obj2);
    }

    public static /* synthetic */ void g(Object obj, String str) {
        throw new IllegalArgumentException(str + obj);
    }

    public static /* synthetic */ void h(String str) {
        throw new IndexOutOfBoundsException(str);
    }

    public static /* synthetic */ void i(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void k(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    public static /* synthetic */ void l(Object obj, String str) throws FileNotFoundException {
        throw new FileNotFoundException(str + obj);
    }

    @Override // defpackage.bp2
    public void c(Exception exc) {
        Log.e("FirebaseCrashlytics", "Error fetching settings.", exc);
    }

    @Override // defpackage.aa0
    public Object j(hg hgVar) {
        switch (this.n) {
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                Set setD = hgVar.d(z03.a(mo.class));
                dh1 dh1Var = dh1.o;
                if (dh1Var == null) {
                    synchronized (dh1.class) {
                        try {
                            dh1Var = dh1.o;
                            if (dh1Var == null) {
                                dh1Var = new dh1(0, false);
                                dh1.o = dh1Var;
                            }
                        } finally {
                        }
                        break;
                    }
                }
                return new tq0(setD, dh1Var);
            case 19:
                return (ScheduledExecutorService) ExecutorsRegistrar.a.get();
            case 20:
                return (ScheduledExecutorService) ExecutorsRegistrar.c.get();
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                return (ScheduledExecutorService) ExecutorsRegistrar.b.get();
            default:
                rz1 rz1Var = ExecutorsRegistrar.a;
                return h64.n;
        }
    }

    @Override // defpackage.my0
    public float a(float f) {
        return f;
    }
}
