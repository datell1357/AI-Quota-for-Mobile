package defpackage;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i25 extends ab5 {
    public final /* synthetic */ int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i25(pb5 pb5Var, int i) {
        super(pb5Var);
        this.d = i;
    }

    public void C(String str, cb5 cb5Var, p45 p45Var, d25 d25Var) {
        String str2;
        URL url;
        byte[] bArrA;
        j45 j45Var;
        Map map;
        String str3 = cb5Var.a;
        r45 r45Var = (r45) this.a;
        v();
        w();
        try {
            url = new URI(str3).toURL();
            this.b.j0();
            bArrA = p45Var.a();
            j45Var = r45Var.g;
            r45.l(j45Var);
            map = cb5Var.b;
            if (map == null) {
                map = Collections.EMPTY_MAP;
            }
            str2 = str;
        } catch (IllegalArgumentException | MalformedURLException | URISyntaxException unused) {
            str2 = str;
        }
        try {
            j45Var.H(new g25(this, str2, url, bArrA, map, d25Var));
        } catch (IllegalArgumentException | MalformedURLException | URISyntaxException unused2) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.f.c(a25.D(str2), str3, "Failed to parse URL. Not uploading MeasurementBatch. appId");
        }
    }

    @Override // defpackage.ab5
    public final void y() {
        int i = this.d;
    }

    public boolean z() {
        w();
        ConnectivityManager connectivityManager = (ConnectivityManager) ((r45) this.a).a.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = null;
        if (connectivityManager != null) {
            try {
                activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
        }
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    private final void A() {
    }

    private final void B() {
    }
}
