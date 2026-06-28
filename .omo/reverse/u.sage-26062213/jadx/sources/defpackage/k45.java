package defpackage;

import android.util.Base64;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k45 {
    public static final rw4 a;
    public static final rw4 b;
    public static final rw4 c;

    static {
        sb0 sb0Var = new sb0(lw4.a(), true, true);
        Double dValueOf = Double.valueOf(0.0d);
        new rw4(sb0Var, "getTokenRefactor__account_data_service_sample_percentage", dValueOf, 2);
        sb0Var.l("getTokenRefactor__account_data_service_tokenAPI_usable", true);
        sb0Var.k(20L, "getTokenRefactor__account_manager_timeout_seconds");
        sb0Var.k(0L, "getTokenRefactor__android_id_shift");
        try {
            a = new rw4(sb0Var, "getTokenRefactor__blocked_packages", v35.j(Base64.decode("ChNjb20uYW5kcm9pZC52ZW5kaW5nCiBjb20uZ29vZ2xlLmFuZHJvaWQuYXBwcy5tZWV0aW5ncwohY29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWVzc2FnaW5n", 3)), 3);
            sb0Var.l("getTokenRefactor__chimera_get_token_evolved", true);
            sb0Var.k(20L, "getTokenRefactor__clear_token_timeout_seconds");
            sb0Var.k(20L, "getTokenRefactor__default_task_timeout_seconds");
            b = sb0Var.l("getTokenRefactor__gaul_accounts_api_evolved", false);
            c = sb0Var.l("getTokenRefactor__gaul_token_api_evolved", false);
            sb0Var.k(120L, "getTokenRefactor__get_token_timeout_seconds");
            sb0Var.l("getTokenRefactor__gms_account_authenticator_evolved", true);
            new rw4(sb0Var, "getTokenRefactor__gms_account_authenticator_sample_percentage", dValueOf, 2);
        } catch (Exception e) {
            k21.c(e);
        }
    }
}
