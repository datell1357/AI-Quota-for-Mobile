package com.google.android.gms.auth.api.identity;

import android.content.Intent;
import com.google.android.gms.common.api.HasApiKey;
import defpackage.ow3;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface AuthorizationClient extends HasApiKey<zba> {
    ow3 authorize(AuthorizationRequest authorizationRequest);

    ow3 clearToken(ClearTokenRequest clearTokenRequest);

    AuthorizationResult getAuthorizationResultFromIntent(Intent intent);

    ow3 revokeAccess(RevokeAccessRequest revokeAccessRequest);
}
