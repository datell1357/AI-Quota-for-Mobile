package defpackage;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yu4 implements ProxyApi.SpatulaHeaderResult {
    public final Status n;
    public final String o;

    public yu4(Status status) {
        this.n = (Status) Preconditions.checkNotNull(status);
        this.o = "";
    }

    @Override // com.google.android.gms.auth.api.proxy.ProxyApi.SpatulaHeaderResult
    public final String getSpatulaHeader() {
        return this.o;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.n;
    }

    public yu4(String str) {
        this.o = (String) Preconditions.checkNotNull(str);
        this.n = Status.RESULT_SUCCESS;
    }
}
