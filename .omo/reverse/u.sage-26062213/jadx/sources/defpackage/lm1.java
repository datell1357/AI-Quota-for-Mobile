package defpackage;

import com.google.api.client.http.HttpMethods;
import java.net.URI;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lm1 extends am1 {
    public final /* synthetic */ int n;

    public lm1(String str, int i) {
        this.n = i;
        switch (i) {
            case 2:
                setURI(URI.create(str));
                break;
            default:
                setURI(URI.create(str));
                break;
        }
    }

    @Override // defpackage.pm1, defpackage.an1
    public final String getMethod() {
        switch (this.n) {
            case 0:
                return HttpMethods.PATCH;
            case 1:
                return HttpMethods.POST;
            default:
                return HttpMethods.PUT;
        }
    }
}
