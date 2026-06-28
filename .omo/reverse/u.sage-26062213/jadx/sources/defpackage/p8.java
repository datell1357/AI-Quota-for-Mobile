package defpackage;

import android.content.Context;
import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.os.StrictMode;
import android.security.NetworkSecurityPolicy;
import android.util.CloseGuard;
import android.util.Log;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p8 extends iv2 implements xg0 {
    public static final boolean e;
    public Context c;
    public final ArrayList d;

    static {
        e = Build.VERSION.SDK_INT >= 29;
    }

    public p8() {
        int i = 0;
        ArrayList arrayListX = ji.X(new kp3[]{Build.VERSION.SDK_INT >= 29 ? new q8() : null, new dr0(ec.e), new dr0(ze0.a), new dr0(jx.a)});
        ArrayList arrayList = new ArrayList();
        int size = arrayListX.size();
        while (i < size) {
            Object obj = arrayListX.get(i);
            i++;
            if (((kp3) obj).b()) {
                arrayList.add(obj);
            }
        }
        this.d = arrayList;
    }

    @Override // defpackage.xg0
    public final void a(Context context) {
        this.c = context;
    }

    @Override // defpackage.xg0
    public final Context b() {
        return this.c;
    }

    @Override // defpackage.iv2
    public final zf5 c(X509TrustManager x509TrustManager) {
        X509TrustManagerExtensions x509TrustManagerExtensions;
        try {
            x509TrustManagerExtensions = new X509TrustManagerExtensions(x509TrustManager);
        } catch (IllegalArgumentException unused) {
            x509TrustManagerExtensions = null;
        }
        a9 a9Var = x509TrustManagerExtensions != null ? new a9(x509TrustManager, x509TrustManagerExtensions) : null;
        if (a9Var != null) {
            return a9Var;
        }
        StrictMode.noteSlowCall("buildTrustRootIndex");
        X509Certificate[] acceptedIssuers = x509TrustManager.getAcceptedIssuers();
        return new hu(new qv((X509Certificate[]) Arrays.copyOf(acceptedIssuers, acceptedIssuers.length)));
    }

    @Override // defpackage.iv2
    public final void d(SSLSocket sSLSocket, String str, List list) {
        Object obj;
        list.getClass();
        ArrayList arrayList = this.d;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i);
            i++;
            if (((kp3) obj).c(sSLSocket)) {
                break;
            }
        }
        kp3 kp3Var = (kp3) obj;
        if (kp3Var != null) {
            kp3Var.d(sSLSocket, str, list);
        }
    }

    @Override // defpackage.iv2
    public final String f(SSLSocket sSLSocket) {
        Object obj;
        ArrayList arrayList = this.d;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i);
            i++;
            if (((kp3) obj).c(sSLSocket)) {
                break;
            }
        }
        kp3 kp3Var = (kp3) obj;
        if (kp3Var != null) {
            return kp3Var.a(sSLSocket);
        }
        return null;
    }

    @Override // defpackage.iv2
    public final Object g() {
        if (Build.VERSION.SDK_INT < 30) {
            return super.g();
        }
        CloseGuard closeGuardE = a3.e();
        closeGuardE.open("response.body().close()");
        return closeGuardE;
    }

    @Override // defpackage.iv2
    public final boolean h(String str) {
        str.getClass();
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str);
    }

    @Override // defpackage.iv2
    public final void i(int i, String str, Throwable th) {
        if (i == 5) {
            boolean z = wb.e;
            Log.w("OkHttp", str, th);
        } else {
            boolean z2 = wb.e;
            Log.i("OkHttp", str, th);
        }
    }

    @Override // defpackage.iv2
    public final void j(Object obj, String str) {
        if (Build.VERSION.SDK_INT < 30) {
            super.j(obj, str);
        } else {
            obj.getClass();
            a3.f(obj).warnIfOpen();
        }
    }

    @Override // defpackage.iv2
    public final SSLContext k() throws NoSuchAlgorithmException {
        StrictMode.noteSlowCall("newSSLContext");
        SSLContext sSLContext = SSLContext.getInstance(rb3.TLS);
        sSLContext.getClass();
        return sSLContext;
    }
}
