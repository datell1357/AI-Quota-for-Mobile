package defpackage;

import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.firebase.analytics.connector.internal.AnalyticsConnectorRegistrar;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ls3 implements gi0, uk0, aa0, mu4 {
    public static ls3 o;
    public static ls3 p;
    public final /* synthetic */ int n;
    public static final /* synthetic */ ls3 q = new ls3(14);
    public static final /* synthetic */ ls3 r = new ls3(18);
    public static final /* synthetic */ ls3 s = new ls3(19);
    public static final /* synthetic */ ls3 t = new ls3(20);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ ls3 f190u = new ls3(21);
    public static final /* synthetic */ ls3 v = new ls3(22);
    public static final /* synthetic */ ls3 w = new ls3(23);
    public static final /* synthetic */ ls3 x = new ls3(24);
    public static final /* synthetic */ ls3 y = new ls3(25);
    public static final /* synthetic */ ls3 z = new ls3(26);
    public static final /* synthetic */ ls3 A = new ls3(27);
    public static final /* synthetic */ ls3 B = new ls3(28);
    public static final /* synthetic */ ls3 C = new ls3(29);

    public ls3() {
        this.n = 13;
        List list = Collections.EMPTY_LIST;
    }

    public static final jd a(int i, String str) {
        WeakHashMap weakHashMap = qe4.v;
        return new jd(i, str);
    }

    public static final int b(int i, long j) {
        int i2 = on4.c;
        return ((int) (j >> (i * 15))) & 32767;
    }

    public static final y94 c(int i, String str) {
        WeakHashMap weakHashMap = qe4.v;
        return new y94(new ur1(0, 0, 0, 0), str);
    }

    public static qe4 d(ag1 ag1Var) {
        qe4 qe4Var;
        View view = (View) ag1Var.j(ea.f);
        WeakHashMap weakHashMap = qe4.v;
        synchronized (weakHashMap) {
            try {
                Object qe4Var2 = weakHashMap.get(view);
                if (qe4Var2 == null) {
                    qe4Var2 = new qe4(view);
                    weakHashMap.put(view, qe4Var2);
                }
                qe4Var = (qe4) qe4Var2;
            } catch (Throwable th) {
                throw th;
            }
        }
        boolean zH = ag1Var.h(qe4Var) | ag1Var.h(view);
        Object objK = ag1Var.K();
        if (zH || objK == rb0.a) {
            objK = new q14(4, qe4Var, view);
            ag1Var.g0(objK);
        }
        zf5.a(qe4Var, (pe1) objK, ag1Var);
        return qe4Var;
    }

    public static final do4 f(long j, Object obj) {
        do4 do4Var = (do4) qp4.i(j, obj);
        if (((tm4) do4Var).n) {
            return do4Var;
        }
        int size = do4Var.size();
        do4 do4VarF = do4Var.F(size == 0 ? 10 : size + size);
        qp4.j(obj, j, do4VarF);
        return do4VarF;
    }

    public static final lo4 g(Object obj, Object obj2) {
        lo4 lo4VarA = (lo4) obj;
        lo4 lo4Var = (lo4) obj2;
        if (!lo4Var.isEmpty()) {
            if (!lo4VarA.n) {
                lo4VarA = lo4VarA.a();
            }
            lo4VarA.d();
            if (!lo4Var.isEmpty()) {
                lo4VarA.putAll(lo4Var);
            }
        }
        return lo4VarA;
    }

    public boolean e(CharSequence charSequence) {
        return charSequence instanceof hx2;
    }

    @Override // defpackage.aa0
    public /* synthetic */ Object j(hg hgVar) {
        return AnalyticsConnectorRegistrar.lambda$getComponents$0(hgVar);
    }

    @Override // defpackage.mu4
    public Object zza() {
        switch (this.n) {
            case 19:
                return new Boolean(((Boolean) gq4.b.get()).booleanValue());
            case 20:
                return new Boolean(((Boolean) iq4.a.get()).booleanValue());
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                return new Boolean(((Boolean) sq4.a.get()).booleanValue());
            case 22:
                List list = e05.a;
                yp4.o.get();
                return (String) zp4.a.k("measurement.gbraid_campaign.campaign_params_triggering_info_update", 4, "gclid,gbraid,gad_campaignid").get();
            case ConnectionResult.API_DISABLED /* 23 */:
                List list2 = e05.a;
                return (String) kq4.a.get();
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                List list3 = e05.a;
                return (String) kq4.c.get();
            case 25:
                List list4 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.upload.max_public_events_per_day", 72, 50000L).get()).longValue());
            case 26:
                List list5 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.upload.max_realtime_events_per_day", 74, 10L).get()).longValue());
            case 27:
                List list6 = e05.a;
                yp4.o.get();
                return (String) zp4.a.k("measurement.upload.url", 78, "https://app-measurement.com/a").get();
            case 28:
                List list7 = e05.a;
                yp4.o.get();
                return (String) zp4.a.k("measurement.sgtm.service_upload_apps_list", 44, "").get();
            default:
                List list8 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.sgtm.upload.retry_interval", 51, 600000L).get();
        }
    }

    public /* synthetic */ ls3(int i) {
        this.n = i;
    }
}
