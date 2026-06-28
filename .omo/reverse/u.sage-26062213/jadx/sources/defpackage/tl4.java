package defpackage;

import com.google.android.gms.common.Feature;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class tl4 {
    public static final Feature a;
    public static final Feature b;
    public static final Feature c;
    public static final Feature d;
    public static final Feature e;
    public static final Feature f;
    public static final Feature g;
    public static final Feature h;
    public static final Feature i;
    public static final Feature[] j;

    static {
        Feature feature = new Feature("auth_blockstore", 3L);
        a = feature;
        Feature feature2 = new Feature("blockstore_data_transfer", 1L);
        Feature feature3 = new Feature("blockstore_notify_app_restore", 1L);
        Feature feature4 = new Feature("blockstore_store_bytes_with_options", 2L);
        b = feature4;
        Feature feature5 = new Feature("blockstore_is_end_to_end_encryption_available", 1L);
        c = feature5;
        Feature feature6 = new Feature("blockstore_enable_cloud_backup", 1L);
        d = feature6;
        Feature feature7 = new Feature("blockstore_delete_bytes", 2L);
        e = feature7;
        Feature feature8 = new Feature("blockstore_retrieve_bytes_with_options", 3L);
        f = feature8;
        Feature feature9 = new Feature("auth_clear_restore_credential", 1L);
        g = feature9;
        Feature feature10 = new Feature("auth_create_restore_credential", 1L);
        h = feature10;
        Feature feature11 = new Feature("auth_get_restore_credential", 1L);
        i = feature11;
        j = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6, feature7, feature8, feature9, feature10, feature11};
    }
}
