package com.google.android.gms.auth.api.identity;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.ij4;
import defpackage.lj4;
import defpackage.oj4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class Identity {
    private Identity() {
    }

    public static AuthorizationClient getAuthorizationClient(Activity activity) {
        return new ij4((Activity) Preconditions.checkNotNull(activity), new zba(null));
    }

    public static CredentialSavingClient getCredentialSavingClient(Activity activity) {
        return new lj4((Activity) Preconditions.checkNotNull(activity), new zbi());
    }

    public static SignInClient getSignInClient(Activity activity) {
        return new oj4((Activity) Preconditions.checkNotNull(activity), new zbv());
    }

    public static CredentialSavingClient getCredentialSavingClient(Context context) {
        return new lj4((Context) Preconditions.checkNotNull(context), new zbi());
    }

    public static SignInClient getSignInClient(Context context) {
        return new oj4((Context) Preconditions.checkNotNull(context), new zbv());
    }

    public static AuthorizationClient getAuthorizationClient(Context context) {
        return new ij4((Context) Preconditions.checkNotNull(context), new zba(null));
    }
}
