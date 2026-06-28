package defpackage;

import com.google.api.client.http.HttpMethods;
import org.apache.commons.logging.Log;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f73 extends p63 {
    @Override // defpackage.rm1
    public final void a(om1 om1Var, ul1 ul1Var) {
        if (((hv) om1Var.getRequestLine()).o.equalsIgnoreCase(HttpMethods.CONNECT) || om1Var.containsHeader("Authorization")) {
            return;
        }
        tj tjVar = (tj) ul1Var.b("http.auth.target-scope");
        Log log = this.n;
        if (tjVar == null) {
            log.debug("Target auth state not set in the context");
            return;
        }
        if (log.isDebugEnabled()) {
            this.n.debug("Target auth state: ".concat(di0.G(tjVar.a)));
        }
        b(tjVar, om1Var, ul1Var);
    }
}
