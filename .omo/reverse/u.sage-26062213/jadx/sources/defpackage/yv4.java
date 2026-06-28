package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yv4 implements mu4 {
    public final /* synthetic */ int n;
    public static final /* synthetic */ yv4 o = new yv4(0);
    public static final /* synthetic */ yv4 p = new yv4(1);
    public static final /* synthetic */ yv4 q = new yv4(2);
    public static final /* synthetic */ yv4 r = new yv4(3);
    public static final /* synthetic */ yv4 s = new yv4(4);
    public static final /* synthetic */ yv4 t = new yv4(5);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ yv4 f429u = new yv4(6);
    public static final /* synthetic */ yv4 v = new yv4(7);
    public static final /* synthetic */ yv4 w = new yv4(8);
    public static final /* synthetic */ yv4 x = new yv4(9);
    public static final /* synthetic */ yv4 y = new yv4(10);
    public static final /* synthetic */ yv4 z = new yv4(11);
    public static final /* synthetic */ yv4 A = new yv4(12);
    public static final /* synthetic */ yv4 B = new yv4(13);
    public static final /* synthetic */ yv4 C = new yv4(14);
    public static final /* synthetic */ yv4 D = new yv4(15);
    public static final /* synthetic */ yv4 E = new yv4(16);
    public static final /* synthetic */ yv4 F = new yv4(17);
    public static final /* synthetic */ yv4 G = new yv4(18);
    public static final /* synthetic */ yv4 H = new yv4(19);
    public static final /* synthetic */ yv4 I = new yv4(20);
    public static final /* synthetic */ yv4 J = new yv4(21);
    public static final /* synthetic */ yv4 K = new yv4(22);
    public static final /* synthetic */ yv4 L = new yv4(23);
    public static final /* synthetic */ yv4 M = new yv4(24);
    public static final /* synthetic */ yv4 N = new yv4(25);
    public static final /* synthetic */ yv4 O = new yv4(26);
    public static final /* synthetic */ yv4 P = new yv4(27);
    public static final /* synthetic */ yv4 Q = new yv4(28);
    public static final /* synthetic */ yv4 R = new yv4(29);

    public /* synthetic */ yv4(int i) {
        this.n = i;
    }

    @Override // defpackage.mu4
    public final Object zza() {
        switch (this.n) {
            case 0:
                List list = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.monitoring.sample_period_millis", 29, 86400000L).get();
            case 1:
                List list2 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.sgtm.batch.retry_interval", 41, 1800000L).get();
            case 2:
                List list3 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.sgtm.batch.retry_max_count", 42, 10L).get()).longValue());
            case 3:
                List list4 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.sgtm.upload.batches_retrieval_limit", 46, 5L).get()).longValue());
            case 4:
                List list5 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.sgtm.upload.min_delay_after_broadcast", 49, 1000L).get();
            case 5:
                List list6 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.sgtm.batch.long_queuing_threshold", 40, 240000L).get();
            case 6:
                List list7 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.upload.backoff_period", 63, 43200000L).get();
            case 7:
                List list8 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.upload.interval", 65, 3600000L).get();
            case 8:
                List list9 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.upload.debug_upload_interval", 9, 1000L).get();
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                List list10 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.alarm_manager.minimum_interval", 27, 60000L).get();
            case 10:
                List list11 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.upload.refresh_blacklisted_config_interval", 34, 604800000L).get();
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                List list12 = e05.a;
                yp4.o.get();
                return (String) zp4.a.k("measurement.config.url_scheme", 8, "https").get();
            case 12:
                List list13 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.upload.retry_count", 76, 6L).get()).longValue());
            case 13:
                List list14 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.upload.google_signal_max_queue_time", 15, 605000L).get();
            case 14:
                List list15 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.audience.filter_result_max_count", 22, 200L).get()).longValue());
            case 15:
                List list16 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.service_client.reconnect_millis", 38, 1000L).get();
            case 16:
                List list17 = e05.a;
                cr4.o.get();
                return (String) dr4.a.k("measurement.test.string_flag", 5, "---").get();
            case 17:
                List list18 = e05.a;
                cr4.o.get();
                return (Long) dr4.a.i("measurement.test.long_flag", 4, -1L).get();
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                List list19 = e05.a;
                cr4.o.get();
                return Integer.valueOf((int) ((Long) dr4.a.i("measurement.test.int_flag", 3, -2L).get()).longValue());
            case 19:
                List list20 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.experiment.max_ids", 21, 50L).get()).longValue());
            case 20:
                List list21 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.upload.max_event_parameter_value_length", 19, 500L).get()).longValue());
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                List list22 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.sdk.attribution.cache.ttl", 61, 604800000L).get();
            case 22:
                List list23 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.upload.max_bundles", 67, 100L).get()).longValue());
            case ConnectionResult.API_DISABLED /* 23 */:
                List list24 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.dma_consent.max_daily_dcu_realtime_events", 18, 1L).get()).longValue());
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                List list25 = e05.a;
                yp4.o.get();
                return (String) zp4.a.k("measurement.rb.attribution.uri_authority", 56, "google-analytics.com").get();
            case 25:
                List list26 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.session.engagement_interval", 12, 3600000L).get();
            case 26:
                List list27 = e05.a;
                yp4.o.get();
                return (String) zp4.a.k("measurement.rb.attribution.user_properties", 80, "_npa,npa|_fot,fot").get();
            case 27:
                List list28 = e05.a;
                yp4.o.get();
                return (String) zp4.a.k("measurement.rb.attribution.query_parameters_to_remove", 59, "").get();
            case 28:
                List list29 = e05.a;
                yp4.o.get();
                return (Long) zp4.a.i("measurement.rb.attribution.max_queue_time", 57, 864000000L).get();
            default:
                List list30 = e05.a;
                yp4.o.get();
                return Integer.valueOf((int) ((Long) zp4.a.i("measurement.rb.attribution.client.min_time_after_boot_seconds", 55, 90L).get()).longValue());
        }
    }
}
