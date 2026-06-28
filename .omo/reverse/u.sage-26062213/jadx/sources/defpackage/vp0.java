package defpackage;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashSet;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vp0 implements p33 {
    public final Log a = LogFactory.getLog(vp0.class);

    public final URI a(vm1 vm1Var, ul1 ul1Var) {
        URI uriE;
        w80.L(vm1Var, "HTTP response");
        gj1 firstHeader = vm1Var.getFirstHeader("location");
        if (firstHeader == null) {
            throw new e03(cm1.a("Received redirect response " + vm1Var.b() + " but no location header"));
        }
        String value = firstHeader.getValue();
        if (this.a.isDebugEnabled()) {
            this.a.debug("Redirect requested to location '" + value + "'");
        }
        try {
            URI uri = new URI(value);
            km1 params = vm1Var.getParams();
            if (!uri.isAbsolute()) {
                if (((f1) params).d("http.protocol.reject-relative-redirect", false)) {
                    throw new e03(cm1.a("Relative redirect location '" + uri + "' not allowed"));
                }
                em1 em1Var = (em1) ul1Var.b("http.target_host");
                mt1.O(em1Var, "Target host");
                try {
                    uri = z54.c(z54.e(new URI(((hv) ((om1) ul1Var.b("http.request")).getRequestLine()).p), em1Var, z54.d), uri);
                } catch (URISyntaxException e) {
                    throw new e03(e.getMessage(), e);
                }
            }
            if (((f1) params).d("http.protocol.allow-circular-redirects", false)) {
                return uri;
            }
            q33 q33Var = (q33) ul1Var.b("http.protocol.redirect-locations");
            if (q33Var == null) {
                q33Var = new q33();
                ul1Var.z(q33Var, "http.protocol.redirect-locations");
            }
            HashSet hashSet = q33Var.n;
            if (uri.getFragment() != null) {
                try {
                    uriE = z54.e(uri, new em1(uri.getHost(), uri.getPort(), uri.getScheme()), z54.d);
                } catch (URISyntaxException e2) {
                    throw new e03(e2.getMessage(), e2);
                }
            } else {
                uriE = uri;
            }
            if (!hashSet.contains(uriE)) {
                hashSet.add(uriE);
                q33Var.o.add(uriE);
                return uri;
            }
            throw new f50(cm1.a("Circular redirect to '" + uriE + "'"));
        } catch (URISyntaxException e3) {
            throw new e03(di0.u("Invalid redirect URI: ", value), e3);
        }
    }
}
