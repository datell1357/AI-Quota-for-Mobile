package defpackage;

import com.google.api.client.http.HttpMethods;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wp0 implements r33 {
    public static final wp0 p = new wp0();
    public final Log n;
    public final String[] o;

    public wp0() {
        String[] strArr = {HttpMethods.GET, HttpMethods.HEAD};
        this.n = LogFactory.getLog(wp0.class);
        String[] strArr2 = (String[]) strArr.clone();
        Arrays.sort(strArr2);
        this.o = strArr2;
    }

    @Override // defpackage.r33
    public final pm1 a(om1 om1Var, vm1 vm1Var, ul1 ul1Var) throws e03 {
        xl1 c84Var;
        ArrayList arrayList;
        pm1 s63Var;
        w80.L(om1Var, "HTTP request");
        w80.L(vm1Var, "HTTP response");
        rl1 rl1VarC = rl1.c(ul1Var);
        gj1 firstHeader = vm1Var.getFirstHeader("location");
        if (firstHeader == null) {
            throw new e03(cm1.a("Received redirect response " + vm1Var.b() + " but no location header"));
        }
        String value = firstHeader.getValue();
        if (this.n.isDebugEnabled()) {
            this.n.debug("Redirect requested to location '" + value + "'");
        }
        v63 v63VarD = rl1VarC.d();
        boolean z = v63VarD.C;
        try {
            URI uri = new URI(value);
            if (z) {
                try {
                    uri = z54.b(uri);
                } catch (URISyntaxException e) {
                    throw new e03(e.getMessage(), e);
                }
            }
            if (!uri.isAbsolute()) {
                if (!v63VarD.t) {
                    throw new e03(cm1.a("Relative redirect location '" + uri + "' not allowed"));
                }
                em1 em1Var = (em1) rl1VarC.a("http.target_host", em1.class);
                mt1.O(em1Var, "Target host");
                uri = z54.c(z54.e(new URI(((hv) om1Var.getRequestLine()).p), em1Var, z ? z54.c : z54.a), uri);
            }
            q33 q33Var = (q33) rl1VarC.n.b("http.protocol.redirect-locations");
            if (q33Var == null) {
                q33Var = new q33();
                ul1Var.z(q33Var, "http.protocol.redirect-locations");
            }
            HashSet hashSet = q33Var.n;
            if (!v63VarD.f370u && hashSet.contains(uri)) {
                throw new f50(cm1.a("Circular redirect to '" + uri + "'"));
            }
            hashSet.add(uri);
            q33Var.o.add(uri);
            String str = ((hv) om1Var.getRequestLine()).o;
            if (str.equalsIgnoreCase(HttpMethods.HEAD)) {
                return new wl1(uri, 2);
            }
            if (str.equalsIgnoreCase(HttpMethods.GET)) {
                return new wl1(uri, 1);
            }
            int i = vm1Var.b().o;
            if (i != 307 && i != 308) {
                return new wl1(uri, 1);
            }
            Charset charset = uf0.a;
            String str2 = ((hv) om1Var.getRequestLine()).o;
            g03 g03Var = ((hv) om1Var.getRequestLine()).n;
            ArrayList arrayList2 = new ArrayList(16);
            arrayList2.clear();
            gj1[] allHeaders = om1Var.getAllHeaders();
            arrayList2.clear();
            if (allHeaders != null) {
                Collections.addAll(arrayList2, allHeaders);
            }
            if (om1Var instanceof zl1) {
                c84Var = ((zl1) om1Var).getEntity();
                pg0 pg0VarB = pg0.b(c84Var);
                if (pg0VarB == null || !pg0VarB.n.equals(pg0.q.n)) {
                    arrayList = null;
                } else {
                    try {
                        charset = pg0VarB.o;
                        ArrayList arrayListC = a64.c(c84Var);
                        if (arrayListC.isEmpty()) {
                            arrayListC = null;
                        }
                        arrayList = arrayListC;
                        c84Var = null;
                    } catch (IOException unused) {
                        c84Var = null;
                        arrayList = null;
                    }
                }
            } else {
                c84Var = null;
                arrayList = null;
            }
            if (om1Var instanceof an1) {
                ((an1) om1Var).getURI();
            } else {
                URI.create(((hv) om1Var.getRequestLine()).p);
            }
            v63 config = om1Var instanceof ld0 ? ((ld0) om1Var).getConfig() : null;
            if (uri == null) {
                uri = URI.create("/");
            }
            if (arrayList != null && !arrayList.isEmpty()) {
                if (c84Var == null && (HttpMethods.POST.equalsIgnoreCase(str2) || HttpMethods.PUT.equalsIgnoreCase(str2))) {
                    if (charset == null) {
                        charset = vi1.a;
                    }
                    c84Var = new c84(arrayList, charset);
                } else {
                    try {
                        x54 x54Var = new x54(uri);
                        x54Var.l = charset;
                        if (x54Var.k == null) {
                            x54Var.k = new ArrayList();
                        }
                        x54Var.k.addAll(arrayList);
                        x54Var.j = null;
                        x54Var.b = null;
                        uri = new URI(x54Var.a());
                    } catch (URISyntaxException unused2) {
                    }
                }
            }
            if (c84Var == null) {
                s63Var = new s63(str2);
            } else {
                r63 r63Var = new r63(str2);
                r63Var.setEntity(c84Var);
                s63Var = r63Var;
            }
            s63Var.setProtocolVersion(g03Var);
            s63Var.setURI(uri);
            s63Var.setHeaders((gj1[]) arrayList2.toArray(new gj1[arrayList2.size()]));
            s63Var.setConfig(config);
            return s63Var;
        } catch (URISyntaxException e2) {
            throw new e03(di0.u("Invalid redirect URI: ", value), e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0036 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0037 A[RETURN] */
    @Override // defpackage.r33
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean h(defpackage.om1 r4, defpackage.vm1 r5, defpackage.ul1 r6) {
        /*
            r3 = this;
            java.lang.String r6 = "HTTP request"
            defpackage.w80.L(r4, r6)
            java.lang.String r6 = "HTTP response"
            defpackage.w80.L(r5, r6)
            kv r6 = r5.b()
            int r6 = r6.o
            d73 r4 = r4.getRequestLine()
            hv r4 = (defpackage.hv) r4
            java.lang.String r4 = r4.o
            java.lang.String r0 = "location"
            gj1 r5 = r5.getFirstHeader(r0)
            r0 = 307(0x133, float:4.3E-43)
            java.lang.String[] r3 = r3.o
            r1 = 1
            r2 = 0
            if (r6 == r0) goto L38
            r0 = 308(0x134, float:4.32E-43)
            if (r6 == r0) goto L38
            switch(r6) {
                case 301: goto L38;
                case 302: goto L2e;
                case 303: goto L36;
                default: goto L2d;
            }
        L2d:
            goto L37
        L2e:
            int r3 = java.util.Arrays.binarySearch(r3, r4)
            if (r3 < 0) goto L37
            if (r5 == 0) goto L37
        L36:
            return r1
        L37:
            return r2
        L38:
            int r3 = java.util.Arrays.binarySearch(r3, r4)
            if (r3 < 0) goto L3f
            return r1
        L3f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wp0.h(om1, vm1, ul1):boolean");
    }
}
