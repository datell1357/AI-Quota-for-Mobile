package defpackage;

import com.google.android.gms.common.Feature;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class qj4 {
    public static final Feature a;
    public static final Feature b;
    public static final Feature c;
    public static final Feature d;
    public static final Feature e;
    public static final Feature f;
    public static final Feature g;
    public static final Feature h;
    public static final Feature[] i;

    static {
        Feature feature = new Feature("auth_api_credentials_begin_sign_in", 9L, true);
        Feature feature2 = new Feature("auth_api_credentials_sign_out", 2L, true);
        a = feature2;
        Feature feature3 = new Feature("auth_api_credentials_authorize", 1L, true);
        b = feature3;
        Feature feature4 = new Feature("auth_api_credentials_revoke_access", 1L, true);
        c = feature4;
        Feature feature5 = new Feature("auth_api_credentials_clear_token", 1L, true);
        d = feature5;
        Feature feature6 = new Feature("auth_api_credentials_save_password", 4L, true);
        e = feature6;
        Feature feature7 = new Feature("auth_api_credentials_get_sign_in_intent", 6L, true);
        f = feature7;
        Feature feature8 = new Feature("auth_api_credentials_save_account_linking_token", 3L, true);
        g = feature8;
        Feature feature9 = new Feature("auth_api_credentials_get_phone_number_hint_intent", 3L, true);
        h = feature9;
        i = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6, feature7, feature8, feature9, new Feature("auth_api_credentials_verify_with_google", 1L, true), new Feature("auth_api_credentials_credential_provider", 1L, true), new Feature("auth_api_credentials_save_webauthn_credential_specifics", 1L, true), new Feature("auth_api_credentials_delete_webauthn_credential_specifics", 1L, false), new Feature("auth_api_credentials_list_webauthn_credential_specifics", 1L, true), new Feature("auth_api_credentials_get_google_passkey_for_export", 2L, true), new Feature("auth_api_credentials_get_authentication_intent", 1L, true), new Feature("auth_api_credentials_get_registration_intent", 1L, true), new Feature("auth_api_credentials_check_key_availability", 1L, true), new Feature("auth_api_credentials_has_discoverable_key", 1L, true), new Feature("auth_api_credentials_validate_calling_browser", 1L, true), new Feature("auth_api_credentials_validate_rp_id_and_calling_package", 1L, true), new Feature("auth_api_credentials_get_credential_list_for_browser", 1L, true), new Feature("auth_api_credentials_update_webauthn_credential_specifics", 1L, true)};
    }
}
