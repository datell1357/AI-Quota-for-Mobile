package defpackage;

import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ju4 extends wt4 {
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ju4(int i, Object obj) {
        this.c = i;
        this.d = obj;
    }

    @Override // defpackage.wt4
    public void E(ProxyResponse proxyResponse) {
        int i = this.c;
        Object obj = this.d;
        switch (i) {
            case 0:
                TaskUtil.setResultOrApiException(new Status(proxyResponse.googlePlayServicesStatusCode), proxyResponse, (pw3) obj);
                break;
            case 1:
            default:
                super.E(proxyResponse);
                break;
            case 2:
                ((pu4) obj).setResult(new xu4(proxyResponse));
                break;
        }
    }

    @Override // defpackage.wt4
    public void F(String str) {
        switch (this.c) {
            case 1:
                TaskUtil.setResultOrApiException(str != null ? Status.RESULT_SUCCESS : new Status(AuthApiStatusCodes.AUTH_APP_CERT_ERROR), str, (pw3) this.d);
                break;
            default:
                super.F(str);
                break;
        }
    }
}
