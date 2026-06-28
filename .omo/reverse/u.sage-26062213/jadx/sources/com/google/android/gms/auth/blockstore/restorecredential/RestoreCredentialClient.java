package com.google.android.gms.auth.blockstore.restorecredential;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.HasApiKey;
import defpackage.ow3;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface RestoreCredentialClient extends HasApiKey<Api.ApiOptions.NoOptions> {
    ow3 clearRestoreCredential(ClearRestoreCredentialRequest clearRestoreCredentialRequest);

    ow3 createRestoreCredential(CreateRestoreCredentialRequest createRestoreCredentialRequest);

    ow3 getRestoreCredential(GetRestoreCredentialRequest getRestoreCredentialRequest);
}
