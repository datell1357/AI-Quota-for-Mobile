package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uf5 extends IStatusCallback.Stub {
    public final /* synthetic */ pw3 c;

    public uf5(pw3 pw3Var) {
        this.c = pw3Var;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) {
        vl4.a(status, null, this.c);
    }
}
