package defpackage;

import com.google.android.gms.common.Feature;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class a65 {
    public static final Feature a;
    public static final Feature b;
    public static final Feature c;
    public static final Feature[] d;

    static {
        Feature feature = new Feature("commit_to_configuration_v2_api", 1L, true);
        a = feature;
        Feature feature2 = new Feature("get_serving_version_api", 1L, true);
        Feature feature3 = new Feature("get_experiment_tokens_api", 1L, true);
        Feature feature4 = new Feature("register_flag_update_listener_api", 2L, true);
        b = feature4;
        Feature feature5 = new Feature("sync_after_api", 1L, true);
        Feature feature6 = new Feature("sync_after_for_application_api", 1L, true);
        Feature feature7 = new Feature("set_app_wide_properties_api", 1L, true);
        Feature feature8 = new Feature("set_runtime_properties_api", 1L, true);
        Feature feature9 = new Feature("get_storage_info_api", 1L, true);
        c = feature9;
        d = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6, feature7, feature8, feature9};
    }
}
