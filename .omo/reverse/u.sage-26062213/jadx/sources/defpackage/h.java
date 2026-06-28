package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class h implements xj {
    public static final List b = Collections.unmodifiableList(Arrays.asList("Negotiate", "NTLM", "Digest", "Basic"));
    public final Log a = LogFactory.getLog(getClass());

    public static HashMap d(gj1[] gj1VarArr) throws o92 {
        b40 b40Var;
        int i;
        HashMap map = new HashMap(gj1VarArr.length);
        for (gj1 gj1Var : gj1VarArr) {
            if (gj1Var instanceof cz) {
                cz czVar = (cz) gj1Var;
                b40Var = czVar.o;
                i = czVar.p;
            } else {
                String value = gj1Var.getValue();
                if (value == null) {
                    throw new o92(cm1.a("Header value is null"));
                }
                b40Var = new b40(value.length());
                b40Var.b(value);
                i = 0;
            }
            while (i < b40Var.o && vi1.a(b40Var.n[i])) {
                i++;
            }
            int i2 = i;
            while (i2 < b40Var.o && !vi1.a(b40Var.n[i2])) {
                i2++;
            }
            map.put(b40Var.h(i, i2).toLowerCase(Locale.ROOT), gj1Var);
        }
        return map;
    }

    public abstract List c(vm1 vm1Var);

    public final oj e(Map map, vm1 vm1Var, ul1 ul1Var) throws uj {
        oj ojVarB;
        rj rjVar = (rj) ul1Var.b("http.authscheme-registry");
        mt1.O(rjVar, "AuthScheme registry");
        List listC = c(vm1Var);
        if (listC == null) {
            listC = b;
        }
        if (this.a.isDebugEnabled()) {
            this.a.debug("Authentication schemes in the order of preference: " + listC);
        }
        Iterator it = listC.iterator();
        while (true) {
            if (!it.hasNext()) {
                ojVarB = null;
                break;
            }
            String str = (String) it.next();
            gj1 gj1Var = (gj1) map.get(str.toLowerCase(Locale.ENGLISH));
            Log log = this.a;
            if (gj1Var != null) {
                if (log.isDebugEnabled()) {
                    this.a.debug(str.concat(" authentication scheme selected"));
                }
                try {
                    ojVarB = rjVar.b(str, vm1Var.getParams());
                    break;
                } catch (IllegalStateException unused) {
                    if (this.a.isWarnEnabled()) {
                        this.a.warn("Authentication scheme " + str + " not supported");
                    }
                }
            } else if (log.isDebugEnabled()) {
                this.a.debug("Challenge for " + str + " authentication scheme not available");
            }
        }
        if (ojVarB != null) {
            return ojVarB;
        }
        throw new uj(cm1.a("Unable to respond to any of these challenges: " + map));
    }
}
