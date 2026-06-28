package defpackage;

import com.google.android.gms.auth.api.AuthProxy;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vu4 implements ProxyApi {
    @Override // com.google.android.gms.auth.api.proxy.ProxyApi
    public final PendingResult getSpatulaHeader(GoogleApiClient googleApiClient) {
        Preconditions.checkNotNull(googleApiClient);
        return googleApiClient.execute(new uu4(AuthProxy.API, googleApiClient));
    }

    @Override // com.google.android.gms.auth.api.proxy.ProxyApi
    public final PendingResult performProxyRequest(GoogleApiClient googleApiClient, ProxyRequest proxyRequest) {
        Preconditions.checkNotNull(googleApiClient);
        Preconditions.checkNotNull(proxyRequest);
        return googleApiClient.execute(new pu4(googleApiClient, proxyRequest));
    }
}
