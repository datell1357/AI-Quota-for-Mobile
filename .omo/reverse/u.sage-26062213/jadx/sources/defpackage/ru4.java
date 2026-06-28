package defpackage;

import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ru4 extends wt4 {
    public final /* synthetic */ uu4 c;

    public ru4(uu4 uu4Var) {
        this.c = uu4Var;
    }

    @Override // defpackage.wt4
    public final void F(String str) {
        uu4 uu4Var = this.c;
        if (str != null) {
            uu4Var.setResult(new yu4(str));
        } else {
            uu4Var.setResult(new yu4(new Status(AuthApiStatusCodes.AUTH_APP_CERT_ERROR)));
        }
    }
}
