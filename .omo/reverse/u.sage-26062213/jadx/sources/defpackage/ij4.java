package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.identity.AuthorizationClient;
import com.google.android.gms.auth.api.identity.AuthorizationRequest;
import com.google.android.gms.auth.api.identity.AuthorizationResult;
import com.google.android.gms.auth.api.identity.ClearTokenRequest;
import com.google.android.gms.auth.api.identity.RevokeAccessRequest;
import com.google.android.gms.auth.api.identity.zba;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ij4 extends GoogleApi implements AuthorizationClient {
    public static final Api b = new Api("Auth.Api.Identity.Authorization.API", new jk4(), new Api.ClientKey());
    public final String a;

    public ij4(Activity activity, zba zbaVar) {
        super(activity, (Api<zba>) b, zbaVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.a = rj4.a();
    }

    @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
    public final ow3 authorize(AuthorizationRequest authorizationRequest) {
        Preconditions.checkNotNull(authorizationRequest);
        AuthorizationRequest.Builder builderZba = AuthorizationRequest.zba(authorizationRequest);
        builderZba.zbb(this.a);
        return doRead(TaskApiCall.builder().setFeatures(qj4.b).run(new pc4(5, this, builderZba.build())).setAutoResolveMissingFeatures(false).setMethodKey(1534).build());
    }

    @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
    public final ow3 clearToken(ClearTokenRequest clearTokenRequest) {
        Preconditions.checkNotNull(clearTokenRequest);
        ClearTokenRequest.Builder builderZba = clearTokenRequest.zba();
        builderZba.zba(this.a);
        return doWrite(TaskApiCall.builder().setFeatures(qj4.d).run(new pc4(4, this, builderZba.build())).setMethodKey(1721).build());
    }

    @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
    public final AuthorizationResult getAuthorizationResultFromIntent(Intent intent) throws ApiException {
        if (intent == null) {
            throw new ApiException(Status.RESULT_INTERNAL_ERROR);
        }
        Status status = (Status) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "status", Status.CREATOR);
        if (status == null) {
            throw new ApiException(Status.RESULT_CANCELED);
        }
        if (!status.isSuccess()) {
            throw new ApiException(status);
        }
        AuthorizationResult authorizationResult = (AuthorizationResult) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "authorization_result", AuthorizationResult.CREATOR);
        if (authorizationResult != null) {
            return authorizationResult;
        }
        throw new ApiException(Status.RESULT_INTERNAL_ERROR);
    }

    @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
    public final ow3 revokeAccess(RevokeAccessRequest revokeAccessRequest) {
        Preconditions.checkNotNull(revokeAccessRequest);
        RevokeAccessRequest.Builder builderZba = revokeAccessRequest.zba();
        builderZba.zba(this.a);
        return doWrite(TaskApiCall.builder().setFeatures(qj4.c).run(new pc4(3, this, builderZba.build())).setMethodKey(1721).build());
    }

    public ij4(Context context, zba zbaVar) {
        super(context, (Api<zba>) b, zbaVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.a = rj4.a();
    }
}
