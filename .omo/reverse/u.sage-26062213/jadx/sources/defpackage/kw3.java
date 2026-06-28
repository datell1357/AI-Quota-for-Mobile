package defpackage;

import com.google.api.client.http.HttpStatusCodes;
import java.util.Collection;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kw3 extends ak {
    public static final kw3 e = new kw3();

    public kw3() {
        super(HttpStatusCodes.STATUS_CODE_UNAUTHORIZED, "WWW-Authenticate");
    }

    @Override // defpackage.ak
    public final Collection f(v63 v63Var) {
        return v63Var.x;
    }
}
