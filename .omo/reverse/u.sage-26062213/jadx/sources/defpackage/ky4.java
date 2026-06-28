package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.RemoteCall;
import java.util.List;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ky4 implements mu4, RemoteCall, zn4, cu3 {
    public final /* synthetic */ int n;
    public static final /* synthetic */ ky4 o = new ky4(0);
    public static final /* synthetic */ ky4 p = new ky4(1);
    public static final /* synthetic */ ky4 q = new ky4(2);
    public static final /* synthetic */ ky4 r = new ky4(3);
    public static final /* synthetic */ ky4 s = new ky4(4);
    public static final /* synthetic */ ky4 t = new ky4(5);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ ky4 f175u = new ky4(6);
    public static final /* synthetic */ ky4 v = new ky4(7);
    public static final /* synthetic */ ky4 w = new ky4(8);
    public static final /* synthetic */ ky4 x = new ky4(9);
    public static final /* synthetic */ ky4 y = new ky4(10);
    public static final /* synthetic */ ky4 z = new ky4(11);
    public static final /* synthetic */ ky4 A = new ky4(12);
    public static final /* synthetic */ ky4 B = new ky4(13);
    public static final /* synthetic */ ky4 C = new ky4(14);
    public static final /* synthetic */ ky4 D = new ky4(15);
    public static final /* synthetic */ ky4 E = new ky4(16);
    public static final /* synthetic */ ky4 F = new ky4(17);
    public static final /* synthetic */ ky4 G = new ky4(24);

    public static kf5 b(String str) {
        boolean z2;
        rf5 rf5VarT;
        nf5 nf5Var = mf5.e;
        qf5 qf5VarC = ye5.c();
        rf5 rf5Var = qf5VarC.b;
        int i = 1;
        if (rf5Var == jf5.t) {
            rf5Var = null;
            ye5.b(qf5VarC, null);
            z2 = true;
        } else {
            z2 = false;
        }
        if (rf5Var == null) {
            UUID uuidB = ze5.c.b();
            String strB = te5.b(uuidB);
            qo3 qo3Var = hf5.t;
            np1 np1Var = (np1) ye5.a.get();
            if (!np1Var.isEmpty()) {
                np1Var.forEach(new gf5(i));
            }
            rf5VarT = new if5(uuidB, strB, str, nf5Var, qo3Var, qf5VarC);
        } else {
            rf5VarT = rf5Var instanceof ve5 ? ((ve5) rf5Var).t(str, nf5Var, false, qf5VarC) : rf5Var.q(str, nf5Var, qf5VarC);
        }
        ye5.b(qf5VarC, rf5VarT);
        return new kf5(rf5VarT, z2);
    }

    public ky0 a(Context context, String str, jy0 jy0Var) {
        int iA;
        int i = 0;
        switch (this.n) {
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                ky0 ky0Var = new ky0();
                int iB = jy0Var.b(context, str);
                ky0Var.b = iB;
                if (iB != 0) {
                    ky0Var.d = -1;
                } else {
                    int iA2 = jy0Var.a(context, str, true);
                    ky0Var.c = iA2;
                    if (iA2 != 0) {
                        ky0Var.d = 1;
                    }
                }
                return ky0Var;
            case 19:
                ky0 ky0Var2 = new ky0();
                ky0Var2.b = jy0Var.b(context, str);
                int iA3 = jy0Var.a(context, str, true);
                ky0Var2.c = iA3;
                int i2 = ky0Var2.b;
                if (i2 == 0) {
                    if (iA3 != 0) {
                    }
                    ky0Var2.d = i;
                    return ky0Var2;
                }
                i = i2;
                i = i >= iA3 ? -1 : 1;
                ky0Var2.d = i;
                return ky0Var2;
            default:
                ky0 ky0Var3 = new ky0();
                int iB2 = jy0Var.b(context, str);
                ky0Var3.b = iB2;
                if (iB2 != 0) {
                    iA = jy0Var.a(context, str, false);
                    ky0Var3.c = iA;
                } else {
                    iA = jy0Var.a(context, str, true);
                    ky0Var3.c = iA;
                }
                int i3 = ky0Var3.b;
                if (i3 == 0) {
                    if (iA != 0) {
                    }
                    ky0Var3.d = i;
                    return ky0Var3;
                }
                i = i3;
                i = i >= iA ? -1 : 1;
                ky0Var3.d = i;
                return ky0Var3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public void accept(Object obj, Object obj2) {
        ga5 ga5Var = new ga5((pw3) obj2);
        l25 l25Var = (l25) ((bf5) obj).getService();
        Parcel parcelE = l25Var.E();
        int i = jv4.a;
        parcelE.writeStrongBinder(ga5Var.asBinder());
        l25Var.F(3, parcelE);
    }

    @Override // defpackage.cu3
    public /* synthetic */ Object get() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        boolean z2 = false;
        try {
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            int i = runningAppProcessInfo.importance;
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 17);
            sb.append("Memory state is: ");
            sb.append(i);
            Log.i("PhenotypeProcessReaper", sb.toString());
            if (runningAppProcessInfo.importance >= 400) {
                z2 = true;
            }
        } catch (RuntimeException e) {
            Log.w("PhenotypeProcessReaper", "Failed to retrieve memory state, not killing process.", e);
        }
        return new Boolean(z2);
    }

    @Override // defpackage.mu4
    public Object zza() {
        switch (this.n) {
            case 0:
                List list = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.rb.max_trigger_registrations_per_day", 24, 1000L).get()).longValue());
            case 1:
                List list2 = e05.a;
                yp4.o.get();
                return (Boolean) zp4.a.e("measurement.config.notify_trigger_uris_on_backgrounded", 31, true).get();
            case 2:
                List list3 = e05.a;
                yp4.o.get();
                return (Boolean) zp4.a.e("measurement.config.default_flag_values", 10, true).get();
            case 3:
                List list4 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.upload.max_bundle_size", 66, 65536L).get()).longValue());
            case 4:
                List list5 = e05.a;
                return (Boolean) qq4.a.get();
            case 5:
                List list6 = e05.a;
                return (Boolean) wq4.a.get();
            case 6:
                List list7 = e05.a;
                return (Boolean) zr4.a.get();
            case 7:
                List list8 = e05.a;
                return Integer.valueOf((int) ((Long) bq4.a.get()).longValue());
            case 8:
                List list9 = e05.a;
                return (Boolean) oq4.b.get();
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                List list10 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.upload.max_events_per_bundle", 70, 1000L).get()).longValue());
            case 10:
                List list11 = e05.a;
                er4.o.get();
                return (Boolean) fr4.a.e("measurement.rb.attribution.service", 6, true).get();
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                List list12 = e05.a;
                er4.o.get();
                return (Boolean) fr4.a.e("measurement.rb.attribution.uuid_generation", 8, true).get();
            case 12:
                List list13 = e05.a;
                er4.o.get();
                return (Boolean) fr4.a.e("measurement.rb.attribution.service.enable_max_trigger_uris_queried_at_once", 4, true).get();
            case 13:
                List list14 = e05.a;
                er4.o.get();
                return (Boolean) fr4.a.e("measurement.rb.attribution.service.trigger_uris_high_priority", 2, true).get();
            case 14:
                List list15 = e05.a;
                return (Boolean) jr4.a.get();
            case 15:
                List list16 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.ad_id_cache_time", 0, 10000L).get();
            case 16:
                return new Boolean(((Boolean) uq4.b.get()).booleanValue());
            default:
                return new Boolean(((Boolean) lr4.a.get()).booleanValue());
        }
    }

    public /* synthetic */ ky4(int i) {
        this.n = i;
    }
}
