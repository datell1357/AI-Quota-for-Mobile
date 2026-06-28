package defpackage;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xu4 implements ProxyApi.ProxyResult {
    public final Status n;
    public final ProxyResponse o;

    public xu4(ProxyResponse proxyResponse) {
        this.o = proxyResponse;
        this.n = Status.RESULT_SUCCESS;
    }

    @Override // com.google.android.gms.auth.api.proxy.ProxyApi.ProxyResult
    public final ProxyResponse getResponse() {
        return this.o;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.n;
    }

    public xu4(Status status) {
        this.n = status;
    }
}
