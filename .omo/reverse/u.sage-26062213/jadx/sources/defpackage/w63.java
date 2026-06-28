package defpackage;

import com.google.api.client.http.HttpMethods;
import java.net.InetAddress;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w63 implements rm1 {
    public final /* synthetic */ int n;

    @Override // defpackage.rm1
    public final void a(om1 om1Var, ul1 ul1Var) throws e03 {
        switch (this.n) {
            case 0:
                if (om1Var instanceof zl1) {
                    if (om1Var.containsHeader("Transfer-Encoding")) {
                        throw new e03(cm1.a("Transfer-encoding header already present"));
                    }
                    if (om1Var.containsHeader("Content-Length")) {
                        throw new e03(cm1.a("Content-Length header already present"));
                    }
                    g03 g03Var = ((hv) om1Var.getRequestLine()).n;
                    xl1 entity = ((zl1) om1Var).getEntity();
                    if (entity == null) {
                        om1Var.addHeader("Content-Length", "0");
                        return;
                    }
                    if (!entity.isChunked() && entity.getContentLength() >= 0) {
                        om1Var.addHeader("Content-Length", Long.toString(entity.getContentLength()));
                    } else {
                        if (g03Var.a(dn1.r)) {
                            throw new e03(cm1.a("Chunked transfer encoding not allowed for " + g03Var));
                        }
                        om1Var.addHeader("Transfer-Encoding", "chunked");
                    }
                    if (entity.getContentType() != null && !om1Var.containsHeader("Content-Type")) {
                        om1Var.addHeader(entity.getContentType());
                    }
                    if (entity.getContentEncoding() == null || om1Var.containsHeader("Content-Encoding")) {
                        return;
                    }
                    om1Var.addHeader(entity.getContentEncoding());
                    return;
                }
                return;
            case 1:
                if (((hv) om1Var.getRequestLine()).o.equalsIgnoreCase(HttpMethods.CONNECT)) {
                    return;
                }
                Collection collection = (Collection) om1Var.getParams().c("http.default-headers");
                Collection collection2 = collection != null ? collection : null;
                if (collection2 != null) {
                    Iterator it = collection2.iterator();
                    while (it.hasNext()) {
                        om1Var.addHeader((gj1) it.next());
                    }
                    return;
                }
                return;
            case 2:
                if (om1Var.containsHeader("Expect") || !(om1Var instanceof zl1)) {
                    return;
                }
                g03 g03Var2 = ((hv) om1Var.getRequestLine()).n;
                xl1 entity2 = ((zl1) om1Var).getEntity();
                if (entity2 == null || entity2.getContentLength() == 0 || g03Var2.a(dn1.r) || !((f1) om1Var.getParams()).d("http.protocol.expect-continue", false)) {
                    return;
                }
                om1Var.addHeader("Expect", "100-continue");
                return;
            case 3:
                if (om1Var.containsHeader("Expect") || !(om1Var instanceof zl1)) {
                    return;
                }
                g03 g03Var3 = ((hv) om1Var.getRequestLine()).n;
                xl1 entity3 = ((zl1) om1Var).getEntity();
                if (entity3 == null || entity3.getContentLength() == 0 || g03Var3.a(dn1.r) || !rl1.c(ul1Var).d().n) {
                    return;
                }
                om1Var.addHeader("Expect", "100-continue");
                return;
            default:
                vl1 vl1Var = ul1Var instanceof vl1 ? (vl1) ul1Var : new vl1(ul1Var);
                g03 g03Var4 = ((hv) om1Var.getRequestLine()).n;
                if ((((hv) om1Var.getRequestLine()).o.equalsIgnoreCase(HttpMethods.CONNECT) && g03Var4.a(dn1.r)) || om1Var.containsHeader("Host")) {
                    return;
                }
                em1 em1Var = (em1) vl1Var.a("http.target_host", em1.class);
                if (em1Var == null) {
                    sl1 sl1Var = (sl1) vl1Var.a("http.connection", sl1.class);
                    if (sl1Var instanceof gm1) {
                        gm1 gm1Var = (gm1) sl1Var;
                        InetAddress inetAddressX = gm1Var.X();
                        int iE = gm1Var.E();
                        if (inetAddressX != null) {
                            em1Var = new em1(inetAddressX.getHostName(), iE, null);
                        }
                    }
                    if (em1Var == null) {
                        if (!g03Var4.a(dn1.r)) {
                            throw new e03(cm1.a("Target host missing"));
                        }
                        return;
                    }
                }
                om1Var.addHeader("Host", em1Var.a());
                return;
        }
    }
}
