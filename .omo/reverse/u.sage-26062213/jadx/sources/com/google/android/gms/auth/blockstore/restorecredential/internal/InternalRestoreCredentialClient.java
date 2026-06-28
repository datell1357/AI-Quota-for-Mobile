package com.google.android.gms.auth.blockstore.restorecredential.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.blockstore.restorecredential.ClearRestoreCredentialRequest;
import com.google.android.gms.auth.blockstore.restorecredential.CreateRestoreCredentialRequest;
import com.google.android.gms.auth.blockstore.restorecredential.CreateRestoreCredentialResponse;
import com.google.android.gms.auth.blockstore.restorecredential.GetRestoreCredentialRequest;
import com.google.android.gms.auth.blockstore.restorecredential.GetRestoreCredentialResponse;
import com.google.android.gms.auth.blockstore.restorecredential.RestoreCredentialClient;
import com.google.android.gms.auth.blockstore.restorecredential.internal.IClearRestoreCredentialCallback;
import com.google.android.gms.auth.blockstore.restorecredential.internal.ICreateRestoreCredentialCallback;
import com.google.android.gms.auth.blockstore.restorecredential.internal.IGetRestoreCredentialCallback;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.internal.ClientSettings;
import defpackage.go0;
import defpackage.ow3;
import defpackage.pw3;
import defpackage.tl4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class InternalRestoreCredentialClient extends GoogleApi<Api.ApiOptions.NoOptions> implements RestoreCredentialClient {
    private static final Api<Api.ApiOptions.NoOptions> API;
    private static final Api.ClientKey<RestoreCredentialClientImpl> CLIENT_KEY;
    public static final Companion Companion = new Companion(null);
    private static final InternalRestoreCredentialClient$Companion$clientBuilder$1 clientBuilder;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$Companion$clientBuilder$1, com.google.android.gms.common.api.Api$AbstractClientBuilder] */
    static {
        Api.ClientKey<RestoreCredentialClientImpl> clientKey = new Api.ClientKey<>();
        CLIENT_KEY = clientKey;
        ?? r1 = new Api.AbstractClientBuilder<RestoreCredentialClientImpl, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$Companion$clientBuilder$1
            @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
            public RestoreCredentialClientImpl buildClient(Context context, Looper looper, ClientSettings clientSettings, Api.ApiOptions.NoOptions noOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
                context.getClass();
                looper.getClass();
                clientSettings.getClass();
                noOptions.getClass();
                connectionCallbacks.getClass();
                onConnectionFailedListener.getClass();
                return new RestoreCredentialClientImpl(context, looper, clientSettings, connectionCallbacks, onConnectionFailedListener);
            }
        };
        clientBuilder = r1;
        API = new Api<>("RestoreCredential.API", r1, clientKey);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InternalRestoreCredentialClient(Context context) {
        super(context, API, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
        context.getClass();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clearRestoreCredential$lambda$2(ClearRestoreCredentialRequest clearRestoreCredentialRequest, RestoreCredentialClientImpl restoreCredentialClientImpl, final pw3 pw3Var) {
        clearRestoreCredentialRequest.getClass();
        ((IRestoreCredentialService) restoreCredentialClientImpl.getService()).clearRestoreCredential(clearRestoreCredentialRequest, new IClearRestoreCredentialCallback.Stub() { // from class: com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$clearRestoreCredential$1$callback$1
            @Override // com.google.android.gms.auth.blockstore.restorecredential.internal.IClearRestoreCredentialCallback
            public void onClearRestoreCredential(Status status, boolean z) {
                status.getClass();
                TaskUtil.setResultOrApiException(status, Boolean.valueOf(z), pw3Var);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createRestoreCredential$lambda$1(CreateRestoreCredentialRequest createRestoreCredentialRequest, RestoreCredentialClientImpl restoreCredentialClientImpl, final pw3 pw3Var) {
        createRestoreCredentialRequest.getClass();
        ((IRestoreCredentialService) restoreCredentialClientImpl.getService()).createRestoreCredential(createRestoreCredentialRequest, new ICreateRestoreCredentialCallback.Stub() { // from class: com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$createRestoreCredential$1$callback$1
            @Override // com.google.android.gms.auth.blockstore.restorecredential.internal.ICreateRestoreCredentialCallback
            public void onCreateRestoreCredential(Status status, CreateRestoreCredentialResponse createRestoreCredentialResponse) {
                status.getClass();
                createRestoreCredentialResponse.getClass();
                TaskUtil.setResultOrApiException(status, createRestoreCredentialResponse, pw3Var);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getRestoreCredential$lambda$0(GetRestoreCredentialRequest getRestoreCredentialRequest, RestoreCredentialClientImpl restoreCredentialClientImpl, final pw3 pw3Var) {
        getRestoreCredentialRequest.getClass();
        ((IRestoreCredentialService) restoreCredentialClientImpl.getService()).getRestoreCredential(getRestoreCredentialRequest, new IGetRestoreCredentialCallback.Stub() { // from class: com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$getRestoreCredential$1$callback$1
            @Override // com.google.android.gms.auth.blockstore.restorecredential.internal.IGetRestoreCredentialCallback
            public void onGetRestoreCredential(Status status, GetRestoreCredentialResponse getRestoreCredentialResponse) {
                status.getClass();
                getRestoreCredentialResponse.getClass();
                TaskUtil.setResultOrApiException(status, getRestoreCredentialResponse, pw3Var);
            }
        });
    }

    @Override // com.google.android.gms.auth.blockstore.restorecredential.RestoreCredentialClient
    public ow3 clearRestoreCredential(final ClearRestoreCredentialRequest clearRestoreCredentialRequest) {
        clearRestoreCredentialRequest.getClass();
        ow3 ow3VarDoRead = doRead(TaskApiCall.builder().setFeatures(tl4.g).run(new RemoteCall() { // from class: com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                InternalRestoreCredentialClient.clearRestoreCredential$lambda$2(clearRestoreCredentialRequest, (RestoreCredentialClientImpl) obj, (pw3) obj2);
            }
        }).setMethodKey(1694).build());
        ow3VarDoRead.getClass();
        return ow3VarDoRead;
    }

    @Override // com.google.android.gms.auth.blockstore.restorecredential.RestoreCredentialClient
    public ow3 createRestoreCredential(final CreateRestoreCredentialRequest createRestoreCredentialRequest) {
        createRestoreCredentialRequest.getClass();
        ow3 ow3VarDoRead = doRead(TaskApiCall.builder().setFeatures(tl4.h).run(new RemoteCall() { // from class: com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                InternalRestoreCredentialClient.createRestoreCredential$lambda$1(createRestoreCredentialRequest, (RestoreCredentialClientImpl) obj, (pw3) obj2);
            }
        }).setMethodKey(1693).build());
        ow3VarDoRead.getClass();
        return ow3VarDoRead;
    }

    @Override // com.google.android.gms.auth.blockstore.restorecredential.RestoreCredentialClient
    public ow3 getRestoreCredential(final GetRestoreCredentialRequest getRestoreCredentialRequest) {
        getRestoreCredentialRequest.getClass();
        ow3 ow3VarDoRead = doRead(TaskApiCall.builder().setFeatures(tl4.i).run(new RemoteCall() { // from class: com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                InternalRestoreCredentialClient.getRestoreCredential$lambda$0(getRestoreCredentialRequest, (RestoreCredentialClientImpl) obj, (pw3) obj2);
            }
        }).setMethodKey(1695).build());
        ow3VarDoRead.getClass();
        return ow3VarDoRead;
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(go0 go0Var) {
            this();
        }
    }
}
