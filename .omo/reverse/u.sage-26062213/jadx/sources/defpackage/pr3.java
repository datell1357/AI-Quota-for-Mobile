package defpackage;

import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.internal.RemoteCall;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pr3 implements om3, a14, k8, ka4, gi0, ro4, mu4, RemoteCall {
    public static final /* synthetic */ pr3 o = new pr3(19);
    public static final /* synthetic */ pr3 p = new pr3(21);
    public static final /* synthetic */ pr3 q = new pr3(22);
    public static final /* synthetic */ pr3 r = new pr3(23);
    public static final /* synthetic */ pr3 s = new pr3(24);
    public static final /* synthetic */ pr3 t = new pr3(25);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ pr3 f264u = new pr3(26);
    public static final /* synthetic */ pr3 v = new pr3(27);
    public static final /* synthetic */ pr3 w = new pr3(28);
    public static final /* synthetic */ pr3 x = new pr3(29);
    public final /* synthetic */ int n;

    public static void f(pb3 pb3Var, Object obj) {
        int i;
        og4 og4Var = (og4) obj;
        pb3Var.getClass();
        String str = og4Var.a;
        int i2 = 1;
        pb3Var.P(1, str);
        pb3Var.h(2, ug4.i(og4Var.b));
        pb3Var.P(3, og4Var.c);
        pb3Var.P(4, og4Var.d);
        zl0 zl0Var = zl0.b;
        pb3Var.k(5, bi4.L(og4Var.e));
        pb3Var.k(6, bi4.L(og4Var.f));
        pb3Var.h(7, og4Var.g);
        pb3Var.h(8, og4Var.h);
        pb3Var.h(9, og4Var.i);
        pb3Var.h(10, og4Var.k);
        jq jqVar = og4Var.l;
        jqVar.getClass();
        int iOrdinal = jqVar.ordinal();
        if (iOrdinal == 0) {
            i = 0;
        } else {
            if (iOrdinal != 1) {
                p61.x();
                return;
            }
            i = 1;
        }
        pb3Var.h(11, i);
        pb3Var.h(12, og4Var.m);
        pb3Var.h(13, og4Var.n);
        pb3Var.h(14, og4Var.o);
        pb3Var.h(15, og4Var.p);
        pb3Var.h(16, og4Var.q ? 1L : 0L);
        jr2 jr2Var = og4Var.r;
        jr2Var.getClass();
        int iOrdinal2 = jr2Var.ordinal();
        if (iOrdinal2 == 0) {
            i2 = 0;
        } else if (iOrdinal2 != 1) {
            p61.x();
            return;
        }
        pb3Var.h(17, i2);
        pb3Var.h(18, og4Var.s);
        pb3Var.h(19, og4Var.t);
        pb3Var.h(20, og4Var.f243u);
        pb3Var.h(21, og4Var.v);
        pb3Var.h(22, og4Var.w);
        String str2 = og4Var.x;
        if (str2 == null) {
            pb3Var.e(23);
        } else {
            pb3Var.P(23, str2);
        }
        Boolean bool = og4Var.y;
        if ((bool != null ? Integer.valueOf(bool.booleanValue() ? 1 : 0) : null) == null) {
            pb3Var.e(24);
        } else {
            pb3Var.h(24, r1.intValue());
        }
        lf0 lf0Var = og4Var.j;
        pb3Var.h(25, ug4.g(lf0Var.a));
        pb3Var.k(26, ug4.b(lf0Var.b));
        pb3Var.h(27, lf0Var.c ? 1L : 0L);
        pb3Var.h(28, lf0Var.d ? 1L : 0L);
        pb3Var.h(29, lf0Var.e ? 1L : 0L);
        pb3Var.h(30, lf0Var.f ? 1L : 0L);
        pb3Var.h(31, lf0Var.g);
        pb3Var.h(32, lf0Var.h);
        pb3Var.k(33, ug4.h(lf0Var.i));
        pb3Var.P(34, str);
    }

    public static wu4 g(cc4 cc4Var, zb4 zb4Var, int i) {
        if ((i & 2) != 0) {
            zb4Var = cc4Var instanceof ej1 ? ((ej1) cc4Var).getDefaultViewModelProviderFactory() : vq0.b;
        }
        vk0 defaultViewModelCreationExtras = cc4Var instanceof ej1 ? ((ej1) cc4Var).getDefaultViewModelCreationExtras() : tk0.b;
        zb4Var.getClass();
        defaultViewModelCreationExtras.getClass();
        return new wu4(cc4Var.getViewModelStore(), zb4Var, defaultViewModelCreationExtras);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static sz3 h(String str) {
        str.getClass();
        int iHashCode = str.hashCode();
        if (iHashCode != 79201641) {
            if (iHashCode != 79923350) {
                switch (iHashCode) {
                    case -503070503:
                        if (str.equals("TLSv1.1")) {
                            return sz3.TLS_1_1;
                        }
                        break;
                    case -503070502:
                        if (str.equals("TLSv1.2")) {
                            return sz3.TLS_1_2;
                        }
                        break;
                    case -503070501:
                        if (str.equals("TLSv1.3")) {
                            return sz3.TLS_1_3;
                        }
                        break;
                }
            } else if (str.equals("TLSv1")) {
                return sz3.TLS_1_0;
            }
        } else if (str.equals("SSLv3")) {
            return sz3.SSL_3_0;
        }
        k21.f("Unexpected TLS version: ".concat(str));
        return null;
    }

    public static final boolean l() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public void accept(Object obj, Object obj2) {
        ju4 ju4Var = new ju4(1, (pw3) obj2);
        cu4 cu4Var = (cu4) ((yt4) obj).getService();
        Parcel parcelZza = cu4Var.zza();
        iv4.d(parcelZza, ju4Var);
        cu4Var.zzc(3, parcelZza);
    }

    @Override // defpackage.ro4
    public boolean b(Class cls) {
        return false;
    }

    @Override // defpackage.ro4
    public bp4 d(Class cls) {
        throw new IllegalStateException("This should never be called.");
    }

    @Override // defpackage.om3
    public a81 e(vt3 vt3Var) {
        return new mt(3, new d93(vt3Var, null, 8));
    }

    public long i() {
        switch (this.n) {
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return SystemClock.elapsedRealtime();
            default:
                return System.currentTimeMillis();
        }
    }

    @Override // defpackage.k8
    public void j(Bundle bundle) {
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Skipping logging Crashlytics event to Firebase, no Firebase Analytics", null);
        }
    }

    @Override // defpackage.ka4
    public int k() {
        return 0;
    }

    @Override // defpackage.ka4
    public int o() {
        return 0;
    }

    @Override // defpackage.ia4
    public bf p(long j, bf bfVar, bf bfVar2, bf bfVar3) {
        return j < 0 ? bfVar : bfVar2;
    }

    public String toString() {
        switch (this.n) {
            case 0:
                return "SharingStarted.Lazily";
            case 1:
                return "ReusedSlotId";
            default:
                return super.toString();
        }
    }

    @Override // defpackage.mu4
    public Object zza() {
        switch (this.n) {
            case 19:
                return new Boolean(((Boolean) gq4.a.get()).booleanValue());
            case 20:
            default:
                List list = e05.a;
                yp4.o.get();
                return (String) zp4.a.k("measurement.sgtm.upload.backoff_http_codes", 45, "404,429,503,504").get();
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                return new Boolean(((Boolean) mq4.a.get()).booleanValue());
            case 22:
                List list2 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.app_uninstalled_additional_ad_id_cache_time", 1, 3600000L).get();
            case ConnectionResult.API_DISABLED /* 23 */:
                List list3 = e05.a;
                yp4.o.get();
                return (String) zp4.a.k("measurement.edpb.events_cached_in_no_data_mode", 14, "_f,_v,_cmp").get();
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                List list4 = e05.a;
                return (String) kq4.b.get();
            case 25:
                List list5 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.upload.max_error_events_per_day", 69, 1000L).get()).longValue());
            case 26:
                List list6 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.upload.max_conversions_per_day", 68, 10000L).get()).longValue());
            case 27:
                List list7 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.store.max_stored_events_per_app", 20, 100000L).get()).longValue());
            case 28:
                List list8 = e05.a;
                yp4.o.get();
                return (String) zp4.a.k("measurement.sgtm.google_signal.url", 16, "https://app-measurement.com/s/d").get();
        }
    }

    public /* synthetic */ pr3(int i) {
        this.n = i;
    }

    @Override // defpackage.ia4
    public bf m(long j, bf bfVar, bf bfVar2, bf bfVar3) {
        return bfVar3;
    }
}
