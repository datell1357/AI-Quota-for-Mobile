package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.identity.CredentialSavingClient;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;
import com.google.android.gms.auth.api.identity.zbi;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lj4 extends GoogleApi implements CredentialSavingClient {
    public static final Api b = new Api("Auth.Api.Identity.CredentialSaving.API", new jj4(), new Api.ClientKey());
    public final String a;

    public lj4(Activity activity, zbi zbiVar) {
        super(activity, (Api<zbi>) b, zbiVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.a = rj4.a();
    }

    @Override // com.google.android.gms.auth.api.identity.CredentialSavingClient
    public final Status getStatusFromIntent(Intent intent) {
        if (intent == null) {
            return Status.RESULT_INTERNAL_ERROR;
        }
        Status status = (Status) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "status", Status.CREATOR);
        return status == null ? Status.RESULT_INTERNAL_ERROR : status;
    }

    @Override // com.google.android.gms.auth.api.identity.CredentialSavingClient
    public final ow3 saveAccountLinkingToken(SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest) {
        Preconditions.checkNotNull(saveAccountLinkingTokenRequest);
        SaveAccountLinkingTokenRequest.Builder builderZba = SaveAccountLinkingTokenRequest.zba(saveAccountLinkingTokenRequest);
        builderZba.zba(this.a);
        return doRead(TaskApiCall.builder().setFeatures(qj4.g).run(new pc4(7, this, builderZba.build())).setAutoResolveMissingFeatures(false).setMethodKey(1535).build());
    }

    @Override // com.google.android.gms.auth.api.identity.CredentialSavingClient
    public final ow3 savePassword(SavePasswordRequest savePasswordRequest) {
        Preconditions.checkNotNull(savePasswordRequest);
        SavePasswordRequest.Builder builderZba = SavePasswordRequest.zba(savePasswordRequest);
        builderZba.zbb(this.a);
        return doRead(TaskApiCall.builder().setFeatures(qj4.e).run(new pc4(6, this, builderZba.build())).setAutoResolveMissingFeatures(false).setMethodKey(1536).build());
    }

    public lj4(Context context, zbi zbiVar) {
        super(context, (Api<zbi>) b, zbiVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.a = rj4.a();
    }
}
