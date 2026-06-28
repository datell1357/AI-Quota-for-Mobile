package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zv4 implements mu4 {
    public final /* synthetic */ int n;
    public static final /* synthetic */ zv4 o = new zv4(0);
    public static final /* synthetic */ zv4 p = new zv4(1);
    public static final /* synthetic */ zv4 q = new zv4(2);
    public static final /* synthetic */ zv4 r = new zv4(3);
    public static final /* synthetic */ zv4 s = new zv4(4);
    public static final /* synthetic */ zv4 t = new zv4(5);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ zv4 f446u = new zv4(6);
    public static final /* synthetic */ zv4 v = new zv4(7);
    public static final /* synthetic */ zv4 w = new zv4(8);
    public static final /* synthetic */ zv4 x = new zv4(9);
    public static final /* synthetic */ zv4 y = new zv4(10);
    public static final /* synthetic */ zv4 z = new zv4(11);
    public static final /* synthetic */ zv4 A = new zv4(12);
    public static final /* synthetic */ zv4 B = new zv4(13);
    public static final /* synthetic */ zv4 C = new zv4(14);
    public static final /* synthetic */ zv4 D = new zv4(15);
    public static final /* synthetic */ zv4 E = new zv4(16);
    public static final /* synthetic */ zv4 F = new zv4(17);
    public static final /* synthetic */ zv4 G = new zv4(18);
    public static final /* synthetic */ zv4 H = new zv4(19);
    public static final /* synthetic */ zv4 I = new zv4(20);
    public static final /* synthetic */ zv4 J = new zv4(21);
    public static final /* synthetic */ zv4 K = new zv4(22);
    public static final /* synthetic */ zv4 L = new zv4(23);
    public static final /* synthetic */ zv4 M = new zv4(24);
    public static final /* synthetic */ zv4 N = new zv4(25);
    public static final /* synthetic */ zv4 O = new zv4(26);
    public static final /* synthetic */ zv4 P = new zv4(27);
    public static final /* synthetic */ zv4 Q = new zv4(28);
    public static final /* synthetic */ zv4 R = new zv4(29);

    public /* synthetic */ zv4(int i) {
        this.n = i;
    }

    @Override // defpackage.mu4
    public final Object zza() {
        switch (this.n) {
            case 0:
                List list = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.sgtm.upload.retry_max_wait", 52, 21600000L).get();
            case 1:
                List list2 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.sgtm.batch.retry_max_wait", 43, 21600000L).get();
            case 2:
                List list3 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.sgtm.upload.max_queued_batches", 47, 5000L).get()).longValue());
            case 3:
                List list4 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.sgtm.upload.min_delay_after_startup", 50, 5000L).get();
            case 4:
                List list5 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.sgtm.upload.min_delay_after_background", 48, 600000L).get();
            case 5:
                List list6 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.config.cache_time", 5, 86400000L).get();
            case 6:
                List list7 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.upload.window_interval", 79, 3600000L).get();
            case 7:
                List list8 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.upload.realtime_upload_interval", 33, 10000L).get();
            case 8:
                List list9 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.upload.minimum_delay", 28, 500L).get();
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                List list10 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.upload.stale_data_deletion_interval", 53, 86400000L).get();
            case 10:
                List list11 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.upload.initial_upload_delay_time", 64, 15000L).get();
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                List list12 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.upload.retry_time", 77, 1800000L).get();
            case 12:
                List list13 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.upload.max_queue_time", 73, 518400000L).get();
            case 13:
                List list14 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.lifetimevalue.max_currency_tracked", 17, 4L).get()).longValue());
            case 14:
                List list15 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.service_client.idle_disconnect_millis", 36, 5000L).get();
            case 15:
                List list16 = e05.a;
                cr4.o.get();
                return (Boolean) dr4.a.e("measurement.test.boolean_flag", 0, false).get();
            case 16:
                List list17 = e05.a;
                yp4.o.get();
                return (String) zp4.a.k("measurement.config.url_authority", 7, "app-measurement.com").get();
            case 17:
                List list18 = e05.a;
                cr4.o.get();
                return (Long) dr4.a.i("measurement.test.cached_long_flag", 1, -1L).get();
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                List list19 = e05.a;
                cr4.o.get();
                pc4 pc4Var = dr4.a;
                AtomicReferenceArray atomicReferenceArray = (AtomicReferenceArray) pc4Var.o;
                na5 na5Var = (na5) atomicReferenceArray.get(2);
                if (na5Var == null) {
                    fa5 fa5Var = new fa5("measurement.test.double_flag", (sb5) ((ra3) pc4Var.p).o);
                    while (true) {
                        if (atomicReferenceArray.compareAndSet(2, null, fa5Var)) {
                            na5Var = fa5Var;
                        } else if (atomicReferenceArray.get(2) != null) {
                            na5Var = (na5) atomicReferenceArray.get(2);
                            na5Var.getClass();
                        }
                    }
                }
                return (Double) na5Var.get();
            case 19:
                List list20 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.upload.max_item_scoped_custom_parameters", 23, 27L).get()).longValue());
            case 20:
                List list21 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.max_bundles_per_iteration", 3, 100L).get()).longValue());
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                List list22 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.redaction.app_instance_id.ttl", 62, 7200000L).get();
            case 22:
                List list23 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.rb.attribution.client.min_ad_services_version", 26, 7L).get()).longValue());
            case ConnectionResult.API_DISABLED /* 23 */:
                List list24 = e05.a;
                yp4.o.get();
                return (String) zp4.a.k("measurement.rb.attribution.uri_scheme", 60, "https").get();
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                List list25 = e05.a;
                yp4.o.get();
                return (String) zp4.a.k("measurement.rb.attribution.uri_path", 58, "privacy-sandbox/register-app-conversion").get();
            case 25:
                List list26 = e05.a;
                yp4.o.get();
                return (String) zp4.a.k("measurement.rb.attribution.app_allowlist", 32, "").get();
            case 26:
                List list27 = e05.a;
                yp4.o.get();
                return (String) zp4.a.k("measurement.rb.attribution.event_params", 13, "value|currency").get();
            case 27:
                List list28 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.upload.max_batch_size", 75, 65536L).get()).longValue());
            case 28:
                List list29 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.rb.attribution.max_retry_delay_seconds", 54, 16L).get()).longValue());
            default:
                List list30 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.rb.attribution.max_trigger_uris_queried_at_once", 25, 0L).get()).longValue());
        }
    }
}
