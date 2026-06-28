package defpackage;

import com.google.api.client.http.HttpMethods;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t63 implements rm1 {
    public final Log n = LogFactory.getLog(t63.class);

    @Override // defpackage.rm1
    public final void a(om1 om1Var, ul1 ul1Var) {
        if (((hv) om1Var.getRequestLine()).o.equalsIgnoreCase(HttpMethods.CONNECT)) {
            om1Var.setHeader("Proxy-Connection", "Keep-Alive");
            return;
        }
        ua3 ua3Var = (ua3) rl1.c(ul1Var).a("http.route", ym1.class);
        if (ua3Var == null) {
            this.n.debug("Connection route not set in the context");
            return;
        }
        if ((ua3Var.b() == 1 || ua3Var.c()) && !om1Var.containsHeader("Connection")) {
            om1Var.addHeader("Connection", "Keep-Alive");
        }
        if (ua3Var.b() != 2 || ua3Var.c() || om1Var.containsHeader("Proxy-Connection")) {
            return;
        }
        om1Var.addHeader("Proxy-Connection", "Keep-Alive");
    }
}
