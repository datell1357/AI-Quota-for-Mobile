package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.internal.ApiExceptionUtil;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lk4 extends IStatusCallback.Stub {
    public final /* synthetic */ pw3 c;

    public lk4(ij4 ij4Var, pw3 pw3Var) {
        this.c = pw3Var;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) {
        boolean zIsSuccess = status.isSuccess();
        pw3 pw3Var = this.c;
        if (zIsSuccess) {
            pw3Var.b(null);
        } else {
            pw3Var.a(ApiExceptionUtil.fromStatus(status));
        }
    }
}
