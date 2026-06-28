package defpackage;

import com.google.android.gms.auth.api.AuthProxy;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.common.api.GoogleApiClient;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pu4 extends du4 {
    public final /* synthetic */ ProxyRequest a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pu4(GoogleApiClient googleApiClient, ProxyRequest proxyRequest) {
        super(AuthProxy.API, googleApiClient);
        this.a = proxyRequest;
    }
}
