package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ak implements yj {
    public static final List d = Collections.unmodifiableList(Arrays.asList("Negotiate", "Kerberos", "NTLM", "CredSSP", "Digest", "Basic"));
    public final Log a = LogFactory.getLog(getClass());
    public final int b;
    public final String c;

    public ak(int i, String str) {
        this.b = i;
        this.c = str;
    }

    @Override // defpackage.yj
    public final void a(em1 em1Var, oj ojVar, ul1 ul1Var) {
        w80.L(em1Var, "Host");
        mj mjVar = (mj) rl1.c(ul1Var).a("http.auth.auth-cache", mj.class);
        if (mjVar != null) {
            if (this.a.isDebugEnabled()) {
                this.a.debug("Clearing cached auth scheme for " + em1Var);
            }
            gu guVar = (gu) mjVar;
            guVar.b.remove(guVar.b(em1Var));
        }
    }

    @Override // defpackage.yj
    public final boolean b(vm1 vm1Var, ul1 ul1Var) {
        return vm1Var.b().o == this.b;
    }

    @Override // defpackage.yj
    public final LinkedList c(Map map, em1 em1Var, vm1 vm1Var, ul1 ul1Var) throws o92 {
        w80.L(em1Var, "Host");
        rl1 rl1VarC = rl1.c(ul1Var);
        LinkedList linkedList = new LinkedList();
        r82 r82Var = (r82) rl1VarC.a("http.authscheme-registry", r82.class);
        if (r82Var == null) {
            this.a.debug("Auth scheme registry not set in the context");
            return linkedList;
        }
        zk0 zk0Var = (zk0) rl1VarC.a("http.auth.credentials-provider", zk0.class);
        if (zk0Var == null) {
            this.a.debug("Credentials provider not set in the context");
            return linkedList;
        }
        Collection<String> collectionF = f(rl1VarC.d());
        if (collectionF == null) {
            collectionF = d;
        }
        if (this.a.isDebugEnabled()) {
            this.a.debug("Authentication schemes in the order of preference: " + collectionF);
        }
        for (String str : collectionF) {
            gj1 gj1Var = (gj1) map.get(str.toLowerCase(Locale.ROOT));
            if (gj1Var != null) {
                pj pjVar = (pj) r82Var.a(str);
                if (pjVar != null) {
                    oj ojVarA = pjVar.a(ul1Var);
                    ojVarA.i(gj1Var);
                    yk0 yk0VarA = zk0Var.a(new sj(em1Var, ojVarA.c(), ojVarA.d()));
                    if (yk0VarA != null) {
                        linkedList.add(new nj(ojVarA, yk0VarA));
                    }
                } else if (this.a.isWarnEnabled()) {
                    this.a.warn("Authentication scheme " + str + " not supported");
                }
            } else if (this.a.isDebugEnabled()) {
                this.a.debug("Challenge for " + str + " authentication scheme not available");
            }
        }
        return linkedList;
    }

    @Override // defpackage.yj
    public final Map d(vm1 vm1Var, ul1 ul1Var) throws o92 {
        b40 b40Var;
        int i;
        gj1[] headers = vm1Var.getHeaders(this.c);
        HashMap map = new HashMap(headers.length);
        for (gj1 gj1Var : headers) {
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

    @Override // defpackage.yj
    public final void e(em1 em1Var, oj ojVar, ul1 ul1Var) {
        w80.L(em1Var, "Host");
        w80.L(ojVar, "Auth scheme");
        rl1 rl1VarC = rl1.c(ul1Var);
        if (!ojVar.e() ? false : ojVar.d().equalsIgnoreCase("Basic")) {
            Object guVar = (mj) rl1VarC.a("http.auth.auth-cache", mj.class);
            if (guVar == null) {
                guVar = new gu();
                rl1VarC.z(guVar, "http.auth.auth-cache");
            }
            if (this.a.isDebugEnabled()) {
                this.a.debug("Caching '" + ojVar.d() + "' auth scheme for " + em1Var);
            }
            ((gu) guVar).c(em1Var, ojVar);
        }
    }

    public abstract Collection f(v63 v63Var);
}
