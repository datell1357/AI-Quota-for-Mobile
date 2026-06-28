package defpackage;

import com.google.api.client.http.HttpMethods;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.TreeSet;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n63 implements rm1 {
    public final Log n = LogFactory.getLog(n63.class);

    @Override // defpackage.rm1
    public final void a(om1 om1Var, ul1 ul1Var) {
        URI uri;
        gj1 gj1VarD;
        ReentrantReadWriteLock reentrantReadWriteLock;
        if (((hv) om1Var.getRequestLine()).o.equalsIgnoreCase(HttpMethods.CONNECT)) {
            return;
        }
        rl1 rl1VarC = rl1.c(ul1Var);
        th0 th0Var = (th0) rl1VarC.a("http.cookie-store", th0.class);
        if (th0Var == null) {
            this.n.debug("Cookie store not specified in HTTP context");
            return;
        }
        r82 r82Var = (r82) rl1VarC.a("http.cookiespec-registry", r82.class);
        if (r82Var == null) {
            this.n.debug("CookieSpec registry not specified in HTTP context");
            return;
        }
        em1 em1Var = (em1) rl1VarC.a("http.target_host", em1.class);
        if (em1Var == null) {
            this.n.debug("Target host not set in the context");
            return;
        }
        ua3 ua3Var = (ua3) rl1VarC.a("http.route", ym1.class);
        if (ua3Var == null) {
            this.n.debug("Connection route not set in the context");
            return;
        }
        String str = rl1VarC.d().r;
        if (str == null) {
            str = "default";
        }
        if (this.n.isDebugEnabled()) {
            this.n.debug("CookieSpec selected: ".concat(str));
        }
        if (om1Var instanceof an1) {
            uri = ((an1) om1Var).getURI();
        } else {
            try {
                uri = new URI(((hv) om1Var.getRequestLine()).p);
            } catch (URISyntaxException unused) {
                uri = null;
            }
        }
        String path = uri != null ? uri.getPath() : null;
        String str2 = em1Var.n;
        int i = em1Var.p;
        if (i < 0) {
            i = ua3Var.d().p;
        }
        boolean z = false;
        if (i < 0) {
            i = 0;
        }
        if (path == null || path.length() == 0) {
            path = "/";
        }
        jh0 jh0Var = new jh0(str2, path, i, ua3Var.a());
        qh0 qh0Var = (qh0) r82Var.a(str);
        if (qh0Var == null) {
            if (this.n.isDebugEnabled()) {
                this.n.debug("Unsupported cookie policy: ".concat(str));
                return;
            }
            return;
        }
        nh0 nh0VarB = qh0Var.b(rl1VarC);
        mu muVar = (mu) th0Var;
        TreeSet treeSet = muVar.n;
        ReentrantReadWriteLock reentrantReadWriteLock2 = muVar.o;
        reentrantReadWriteLock2.readLock().lock();
        try {
            ArrayList arrayList = new ArrayList(treeSet);
            reentrantReadWriteLock2.readLock().unlock();
            ArrayList arrayList2 = new ArrayList();
            Date date = new Date();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                ku kuVar = (ku) obj;
                if (kuVar.b(date)) {
                    reentrantReadWriteLock = reentrantReadWriteLock2;
                    if (this.n.isDebugEnabled()) {
                        this.n.debug("Cookie " + kuVar + " expired");
                    }
                    z = true;
                } else if (nh0VarB.b(kuVar, jh0Var)) {
                    if (this.n.isDebugEnabled()) {
                        reentrantReadWriteLock = reentrantReadWriteLock2;
                        this.n.debug("Cookie " + kuVar + " match " + jh0Var);
                    } else {
                        reentrantReadWriteLock = reentrantReadWriteLock2;
                    }
                    arrayList2.add(kuVar);
                } else {
                    reentrantReadWriteLock = reentrantReadWriteLock2;
                }
                reentrantReadWriteLock2 = reentrantReadWriteLock;
            }
            ReentrantReadWriteLock reentrantReadWriteLock3 = reentrantReadWriteLock2;
            if (z) {
                reentrantReadWriteLock3.writeLock().lock();
                try {
                    Iterator it = treeSet.iterator();
                    while (it.hasNext()) {
                        if (((ku) it.next()).b(date)) {
                            it.remove();
                        }
                    }
                } finally {
                    reentrantReadWriteLock3.writeLock().unlock();
                }
            }
            if (!arrayList2.isEmpty()) {
                Iterator it2 = nh0VarB.c(arrayList2).iterator();
                while (it2.hasNext()) {
                    om1Var.addHeader((gj1) it2.next());
                }
            }
            if (nh0VarB.f() > 0 && (gj1VarD = nh0VarB.d()) != null) {
                om1Var.addHeader(gj1VarD);
            }
            ul1Var.z(nh0VarB, "http.cookie-spec");
            ul1Var.z(jh0Var, "http.cookie-origin");
        } catch (Throwable th) {
            reentrantReadWriteLock2.readLock().unlock();
            throw th;
        }
    }
}
