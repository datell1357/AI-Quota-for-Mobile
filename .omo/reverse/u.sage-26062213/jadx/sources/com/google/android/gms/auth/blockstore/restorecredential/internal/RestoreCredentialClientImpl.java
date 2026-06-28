package com.google.android.gms.auth.blockstore.restorecredential.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import defpackage.go0;
import defpackage.tl4;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class RestoreCredentialClientImpl extends GmsClient<IRestoreCredentialService> {
    public static final Companion Companion = new Companion(null);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RestoreCredentialClientImpl(Context context, Looper looper, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 381, clientSettings, connectionCallbacks, onConnectionFailedListener);
        context.getClass();
        looper.getClass();
        clientSettings.getClass();
        connectionCallbacks.getClass();
        onConnectionFailedListener.getClass();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public IRestoreCredentialService createServiceInterface(IBinder iBinder) {
        iBinder.getClass();
        IRestoreCredentialService iRestoreCredentialServiceAsInterface = IRestoreCredentialService.Stub.asInterface(iBinder);
        iRestoreCredentialServiceAsInterface.getClass();
        return iRestoreCredentialServiceAsInterface;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public Feature[] getApiFeatures() {
        Feature[] featureArr = tl4.j;
        featureArr.getClass();
        return featureArr;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public int getMinApkVersion() {
        return 17895000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public String getServiceDescriptor() {
        return "com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public String getStartServiceAction() {
        return "com.google.android.gms.auth.blockstore.restorecredential.service.START_RESTORE_CRED";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public boolean getUseDynamicLookup() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public boolean usesClientTelemetry() {
        return true;
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
