package com.google.android.gms.auth.blockstore.restorecredential;

import com.google.android.gms.common.api.CommonStatusCodes;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class RestoreCredentialStatusCodes extends CommonStatusCodes {
    public static final RestoreCredentialStatusCodes INSTANCE = new RestoreCredentialStatusCodes();
    public static final int RESTORE_CREDENTIAL_DEVELOPER_ERROR = 40200;
    public static final int RESTORE_CREDENTIAL_E2EE_UNAVAILABLE = 40203;
    public static final int RESTORE_CREDENTIAL_FIDO_FAILURE = 40202;
    public static final int RESTORE_CREDENTIAL_INTERNAL_FAILURE = 40201;

    private RestoreCredentialStatusCodes() {
    }
}
