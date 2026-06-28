package defpackage;

import com.google.api.client.http.HttpMethods;
import java.net.URI;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wl1 extends pm1 {
    public final /* synthetic */ int n;

    public wl1(String str, int i) {
        this.n = i;
        switch (i) {
            case 1:
                setURI(URI.create(str));
                break;
            case 2:
                setURI(URI.create(str));
                break;
            case 3:
                setURI(URI.create(str));
                break;
            case 4:
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
                return HttpMethods.DELETE;
            case 1:
                return HttpMethods.GET;
            case 2:
                return HttpMethods.HEAD;
            case 3:
                return HttpMethods.OPTIONS;
            default:
                return HttpMethods.TRACE;
        }
    }

    public wl1(URI uri, int i) {
        this.n = i;
        switch (i) {
            case 2:
                setURI(uri);
                break;
            default:
                setURI(uri);
                break;
        }
    }
}
