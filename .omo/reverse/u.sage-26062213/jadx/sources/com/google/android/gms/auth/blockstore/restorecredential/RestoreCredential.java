package com.google.android.gms.auth.blockstore.restorecredential;

import android.content.Context;
import com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class RestoreCredential {
    public static final RestoreCredential INSTANCE = new RestoreCredential();

    private RestoreCredential() {
    }

    public static final RestoreCredentialClient getRestoreCredentialClient(Context context) {
        context.getClass();
        return new InternalRestoreCredentialClient(context);
    }
}
