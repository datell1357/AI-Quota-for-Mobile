package defpackage;

import android.accounts.Account;
import android.app.Service;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Region;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.auth.blockstore.DeleteBytesRequest;
import com.google.android.gms.auth.blockstore.StoreBytesData;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.AppMeasurementReceiver;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ra3 implements r20, cf, RemoteCall, ro4, yb5, cu3 {
    public final /* synthetic */ int n;
    public Object o;

    public ra3(int i) {
        this.n = i;
        switch (i) {
            case 1:
                this.o = new Region();
                break;
            case 3:
                break;
            case 7:
                this.o = new ThreadLocal();
                break;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                this.o = new t82();
                break;
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                this.o = new HashMap();
                break;
            default:
                this.o = new LinkedHashSet();
                break;
        }
    }

    public static void c(Object... objArr) {
        for (ra3 ra3Var : ez3.b) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            ra3Var.getClass();
            c(objArrCopyOf);
        }
    }

    public static void f(Object... objArr) {
        for (ra3 ra3Var : ez3.b) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            ra3Var.getClass();
            f(objArrCopyOf);
        }
    }

    public static void g(Object... objArr) {
        for (ra3 ra3Var : ez3.b) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            ra3Var.getClass();
            g(objArrCopyOf);
        }
    }

    public static void h(Object... objArr) {
        for (ra3 ra3Var : ez3.b) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            ra3Var.getClass();
            h(objArrCopyOf);
        }
    }

    public static void l(Object... objArr) {
        for (ra3 ra3Var : ez3.b) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            ra3Var.getClass();
            l(objArrCopyOf);
        }
    }

    public static void m(Object... objArr) {
        for (ra3 ra3Var : ez3.b) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            ra3Var.getClass();
            m(objArrCopyOf);
        }
    }

    public static void n(Object... objArr) {
        for (ra3 ra3Var : ez3.b) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            ra3Var.getClass();
            n(objArrCopyOf);
        }
    }

    public static ra3 p(String str) {
        return new ra3(16, (TextUtils.isEmpty(str) || str.length() > 1) ? u55.UNINITIALIZED : y55.e(str.charAt(0)));
    }

    public long a(long j) {
        t82 t82Var = (t82) this.o;
        t82Var.getClass();
        if (ra4.b(j) <= 0.0f || ra4.c(j) <= 0.0f) {
            ar1.b("maximumVelocity should be a positive value. You specified=".concat(ra4.f(j)));
        }
        return is0.g(((ta4) t82Var.b).c(ra4.b(j)), ((ta4) t82Var.c).c(ra4.c(j)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public void accept(Object obj, Object obj2) {
        int i = 0;
        switch (this.n) {
            case 13:
                oj4 oj4Var = (oj4) this.o;
                pj4 pj4Var = (pj4) obj;
                nj4 nj4Var = new nj4(oj4Var, (pw3) obj2);
                ik4 ik4Var = (ik4) pj4Var.getService();
                ApiMetadata apiMetadataA = tj4.a(pj4Var.getContext());
                String str = oj4Var.a;
                Parcel parcelZba = ik4Var.zba();
                int i2 = bk4.a;
                parcelZba.writeStrongBinder(nj4Var.asBinder());
                parcelZba.writeString(str);
                bk4.b(parcelZba, apiMetadataA);
                ik4Var.zbb(2, parcelZba);
                break;
            case 15:
                ProxyRequest proxyRequest = (ProxyRequest) this.o;
                ju4 ju4Var = new ju4(i, (pw3) obj2);
                cu4 cu4Var = (cu4) ((yt4) obj).getService();
                Parcel parcelZza = cu4Var.zza();
                iv4.d(parcelZza, ju4Var);
                iv4.c(parcelZza, proxyRequest);
                cu4Var.zzc(1, parcelZza);
                break;
            case 19:
                int i3 = w65.a;
                n65 n65Var = new n65((pw3) obj2);
                y65 y65Var = (y65) ((a75) obj).getService();
                byte[] bArrA = ((l85) this.o).a();
                Parcel parcelF = y65Var.F();
                ku4.c(parcelF, n65Var);
                parcelF.writeByteArray(bArrA);
                y65Var.G(31, parcelF);
                break;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                le5 le5Var = new le5(1, (pw3) obj2);
                h05 h05Var = (h05) ((zy4) obj).getService();
                DeleteBytesRequest deleteBytesRequest = (DeleteBytesRequest) this.o;
                Parcel parcelObtainAndWriteInterfaceToken = h05Var.obtainAndWriteInterfaceToken();
                int i4 = kv4.a;
                parcelObtainAndWriteInterfaceToken.writeStrongBinder(le5Var.asBinder());
                kv4.b(parcelObtainAndWriteInterfaceToken, deleteBytesRequest);
                h05Var.transactAndReadExceptionReturnVoid(13, parcelObtainAndWriteInterfaceToken);
                break;
            case 25:
                le5 le5Var2 = new le5(0, (pw3) obj2);
                h05 h05Var2 = (h05) ((zy4) obj).getService();
                StoreBytesData storeBytesData = (StoreBytesData) this.o;
                Parcel parcelObtainAndWriteInterfaceToken2 = h05Var2.obtainAndWriteInterfaceToken();
                int i5 = kv4.a;
                parcelObtainAndWriteInterfaceToken2.writeStrongBinder(le5Var2.asBinder());
                kv4.b(parcelObtainAndWriteInterfaceToken2, storeBytesData);
                h05Var2.transactAndReadExceptionReturnVoid(10, parcelObtainAndWriteInterfaceToken2);
                break;
            case 26:
                Account account = (Account) this.o;
                hb5 hb5Var = (hb5) ((l45) obj).getService();
                zk4 zk4Var = new zk4(0, (pw3) obj2);
                Parcel parcelZza2 = hb5Var.zza();
                iv4.d(parcelZza2, zk4Var);
                iv4.c(parcelZza2, account);
                hb5Var.zzc(6, parcelZza2);
                break;
            default:
                AccountChangeEventsRequest accountChangeEventsRequest = (AccountChangeEventsRequest) this.o;
                af5 af5Var = new af5(1, (pw3) obj2);
                hb5 hb5Var2 = (hb5) ((l45) obj).getService();
                Parcel parcelZza3 = hb5Var2.zza();
                iv4.d(parcelZza3, af5Var);
                iv4.c(parcelZza3, accountChangeEventsRequest);
                hb5Var2.zzc(4, parcelZza3);
                break;
        }
    }

    @Override // defpackage.ro4
    public boolean b(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (((ro4[]) this.o)[i].b(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.ro4
    public bp4 d(Class cls) {
        for (int i = 0; i < 2; i++) {
            ro4 ro4Var = ((ro4[]) this.o)[i];
            if (ro4Var.b(cls)) {
                return ro4Var.d(cls);
            }
        }
        p61.s("No factory is available for message type: ".concat(cls.getName()));
        return null;
    }

    @Override // defpackage.yb5
    public void e(String str, String str2, Bundle bundle) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        m75 m75Var = (m75) this.o;
        if (zIsEmpty) {
            m75Var.z("auto", "_err", bundle);
        } else {
            m75Var.getClass();
            k21.n("Unexpected call on client side");
        }
    }

    @Override // defpackage.cu3
    public Object get() {
        Context context = (Context) ((hg) this.o).a;
        Object obj = o75.j;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo("com.google.android.gms", 0);
            applicationInfo.getClass();
            return new fy2(applicationInfo);
        } catch (PackageManager.NameNotFoundException unused) {
            return g.n;
        }
    }

    public mk3 i(JSONObject jSONObject) throws JSONException {
        rk3 qz0Var;
        int i = jSONObject.getInt("settings_version");
        if (i != 3) {
            Log.e("FirebaseCrashlytics", "Could not determine SettingsJsonTransform for settings version " + i + ". Using default settings values.", null);
            qz0Var = new qv3(27);
        } else {
            qz0Var = new qz0(29);
        }
        return qz0Var.g((ls3) this.o, jSONObject);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object j(defpackage.n30 r21, defpackage.ne1 r22) {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ra3.j(n30, ne1):java.lang.Object");
    }

    public void k(ns1 ns1Var) {
        ((Region) this.o).set(ns1Var.a, ns1Var.b, ns1Var.c, ns1Var.d);
    }

    public da5 o(String str, boolean z) {
        return new da5(str, (sb5) this.o, z);
    }

    @Override // defpackage.r20
    public void onCancel() {
        ((pq3) this.o).a();
    }

    @Override // defpackage.cf
    public s71 get(int i) {
        switch (this.n) {
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return ((y71[]) this.o)[i];
            default:
                return (s71) this.o;
        }
    }

    public /* synthetic */ ra3(GoogleApi googleApi, Parcelable parcelable, int i) {
        this.n = i;
        this.o = parcelable;
    }

    public ra3(Service service) {
        this.n = 22;
        Preconditions.checkNotNull(service);
        this.o = service;
    }

    public ra3(AppMeasurementReceiver appMeasurementReceiver) {
        this.n = 17;
        Preconditions.checkNotNull(appMeasurementReceiver);
        this.o = appMeasurementReceiver;
    }

    public /* synthetic */ ra3(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    public ra3(fc3 fc3Var) {
        this.n = 12;
        this.o = new WeakReference(fc3Var);
    }

    public ra3(gi4 gi4Var) {
        this.n = 6;
        this.o = new ThreadPoolExecutor(0, Api.BaseClientBuilder.API_PRIORITY_OTHER, 60L, TimeUnit.SECONDS, new SynchronousQueue(), gi4Var);
    }

    public ra3(float f, float f2, bf bfVar) {
        this.n = 9;
        int iB = bfVar.b();
        y71[] y71VarArr = new y71[iB];
        for (int i = 0; i < iB; i++) {
            y71VarArr[i] = new y71(f, f2, bfVar.a(i));
        }
        this.o = y71VarArr;
    }
}
