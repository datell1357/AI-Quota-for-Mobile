package defpackage;

import com.google.android.gms.auth.api.proxy.ProxyClient;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.TaskApiCall;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nu4 extends GoogleApi implements ProxyClient {
    @Override // com.google.android.gms.auth.api.proxy.ProxyClient
    public final ow3 getSpatulaHeader() {
        return doRead(TaskApiCall.builder().run(new pr3(this)).setMethodKey(1520).build());
    }

    @Override // com.google.android.gms.auth.api.proxy.ProxyClient
    public final ow3 performProxyRequest(ProxyRequest proxyRequest) {
        return doWrite(TaskApiCall.builder().run(new ra3(this, proxyRequest, 15)).setMethodKey(1518).build());
    }
}
