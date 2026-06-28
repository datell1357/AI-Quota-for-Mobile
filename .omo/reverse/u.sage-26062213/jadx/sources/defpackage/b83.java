package defpackage;

import java.util.Date;
import java.util.TreeSet;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b83 implements wm1 {
    public final Log n = LogFactory.getLog(b83.class);

    public static String a(ku kuVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(kuVar.n);
        sb.append("=\"");
        String strConcat = kuVar.p;
        if (strConcat != null) {
            if (strConcat.length() > 100) {
                strConcat = strConcat.substring(0, 100).concat("...");
            }
            sb.append(strConcat);
        }
        sb.append("\", version:");
        sb.append(Integer.toString(kuVar.f173u));
        sb.append(", domain:");
        sb.append(kuVar.q);
        sb.append(", path:");
        sb.append(kuVar.s);
        sb.append(", expiry:");
        sb.append(kuVar.r);
        return sb.toString();
    }

    @Override // defpackage.wm1
    public final void b(vm1 vm1Var, ul1 ul1Var) {
        w80.L(vm1Var, "HTTP request");
        rl1 rl1VarC = rl1.c(ul1Var);
        nh0 nh0Var = (nh0) rl1VarC.a("http.cookie-spec", nh0.class);
        if (nh0Var == null) {
            this.n.debug("Cookie spec not specified in HTTP context");
            return;
        }
        th0 th0Var = (th0) rl1VarC.a("http.cookie-store", th0.class);
        if (th0Var == null) {
            this.n.debug("Cookie store not specified in HTTP context");
            return;
        }
        jh0 jh0Var = (jh0) rl1VarC.a("http.cookie-origin", jh0.class);
        if (jh0Var == null) {
            this.n.debug("Cookie origin not specified in HTTP context");
            return;
        }
        c(vm1Var.headerIterator("Set-Cookie"), nh0Var, jh0Var, th0Var);
        if (nh0Var.f() > 0) {
            c(vm1Var.headerIterator("Set-Cookie2"), nh0Var, jh0Var, th0Var);
        }
    }

    public final void c(jj1 jj1Var, nh0 nh0Var, jh0 jh0Var, th0 th0Var) {
        while (jj1Var.hasNext()) {
            gj1 gj1VarA = jj1Var.a();
            try {
                for (ku kuVar : nh0Var.e(gj1VarA, jh0Var)) {
                    try {
                        nh0Var.a(kuVar, jh0Var);
                        mu muVar = (mu) th0Var;
                        TreeSet treeSet = muVar.n;
                        ReentrantReadWriteLock reentrantReadWriteLock = muVar.o;
                        reentrantReadWriteLock.writeLock().lock();
                        try {
                            treeSet.remove(kuVar);
                            if (!kuVar.b(new Date())) {
                                treeSet.add(kuVar);
                            }
                            reentrantReadWriteLock.writeLock().unlock();
                            if (this.n.isDebugEnabled()) {
                                this.n.debug("Cookie accepted [" + a(kuVar) + "]");
                            }
                        } catch (Throwable th) {
                            reentrantReadWriteLock.writeLock().unlock();
                            throw th;
                        }
                    } catch (q92 e) {
                        if (this.n.isWarnEnabled()) {
                            this.n.warn("Cookie rejected [" + a(kuVar) + "] " + e.getMessage());
                        }
                    }
                }
            } catch (q92 e2) {
                if (this.n.isWarnEnabled()) {
                    this.n.warn("Invalid cookie header: \"" + gj1VarA + "\". " + e2.getMessage());
                }
            }
        }
    }
}
