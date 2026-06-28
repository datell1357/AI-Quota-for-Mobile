package defpackage;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sd0 {
    public final Log a;
    public final ReentrantLock b;
    public final eo0 c;
    public final qd0 d;
    public final HashSet e;
    public final LinkedList f;
    public final LinkedList g;
    public final HashMap h;
    public final long i;
    public final TimeUnit j;
    public volatile boolean k;
    public volatile int l;
    public volatile int m;

    public sd0(eo0 eo0Var, km1 km1Var) {
        w80.L(km1Var, "HTTP parameters");
        qd0 qd0Var = (qd0) km1Var.c("http.conn-manager.max-per-route");
        qd0Var = qd0Var == null ? nt1.b : qd0Var;
        int iE = ((f1) km1Var).e(20, "http.conn-manager.max-total");
        LogFactory.getLog(sd0.class);
        HashSet hashSet = new HashSet();
        new vn1();
        ReentrantLock reentrantLock = new ReentrantLock();
        this.a = LogFactory.getLog(sd0.class);
        this.b = reentrantLock;
        this.e = hashSet;
        this.c = eo0Var;
        this.d = qd0Var;
        this.l = iE;
        this.f = new LinkedList();
        this.g = new LinkedList();
        this.h = new HashMap();
        this.i = -1L;
        this.j = TimeUnit.MILLISECONDS;
    }

    public final void a(fv fvVar) {
        do0 do0Var = fvVar.b;
        if (do0Var != null) {
            try {
                do0Var.close();
            } catch (IOException e) {
                this.a.debug("I/O error closing connection", e);
            }
        }
    }

    public final fv b(xa3 xa3Var, eo0 eo0Var) {
        if (this.a.isDebugEnabled()) {
            this.a.debug("Creating new connection [" + xa3Var.b + "]");
        }
        fv fvVar = new fv(eo0Var, xa3Var.b, this.i, this.j);
        this.b.lock();
        try {
            w80.l("Entry not planned for this pool", xa3Var.b.equals(fvVar.c));
            xa3Var.g++;
            this.m++;
            this.e.add(fvVar);
            return fvVar;
        } finally {
            this.b.unlock();
        }
    }

    public final void c(fv fvVar) {
        ym1 ym1Var = fvVar.c;
        if (this.a.isDebugEnabled()) {
            this.a.debug("Deleting connection [" + ym1Var + "][" + fvVar.d + "]");
        }
        this.b.lock();
        try {
            a(fvVar);
            xa3 xa3VarG = g(ym1Var);
            if (xa3VarG.e.remove(fvVar)) {
                xa3VarG.g--;
            }
            this.m--;
            if (xa3VarG.g < 1 && xa3VarG.f.isEmpty()) {
                this.h.remove(ym1Var);
            }
        } finally {
            this.b.unlock();
        }
    }

    public final void d(fv fvVar, boolean z, long j) {
        String str;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        ym1 ym1Var = fvVar.c;
        if (this.a.isDebugEnabled()) {
            this.a.debug("Releasing connection [" + ym1Var + "][" + fvVar.d + "]");
        }
        this.b.lock();
        try {
            if (this.k) {
                a(fvVar);
            } else {
                this.e.remove(fvVar);
                xa3 xa3VarG = g(ym1Var);
                if (!z || xa3VarG.d.a(xa3VarG.b) - xa3VarG.g < 0) {
                    a(fvVar);
                    mt1.n("There is no entry that could be dropped", xa3VarG.g > 0);
                    xa3VarG.g--;
                    this.m--;
                } else {
                    if (this.a.isDebugEnabled()) {
                        if (j > 0) {
                            str = "for " + j + " " + timeUnit;
                        } else {
                            str = "indefinitely";
                        }
                        this.a.debug("Pooling connection [" + ym1Var + "][" + fvVar.d + "]; keep alive " + str);
                    }
                    LinkedList linkedList = xa3VarG.e;
                    ym1 ym1Var2 = xa3VarG.b;
                    int i = xa3VarG.g;
                    if (i < 1) {
                        q73.k(ym1Var2, "No entry created for this pool. ");
                    } else if (i > linkedList.size()) {
                        linkedList.add(fvVar);
                    } else {
                        q73.k(ym1Var2, "No entry allocated from this pool. ");
                    }
                    fvVar.g = Math.min(fvVar.f, j > 0 ? j + System.currentTimeMillis() : Long.MAX_VALUE);
                    this.f.add(fvVar);
                }
                h(xa3VarG);
            }
        } finally {
            this.b.unlock();
        }
    }

    public final fv e(ym1 ym1Var, Object obj, long j, sb0 sb0Var) {
        fv fvVarF = null;
        Date date = j > 0 ? new Date(System.currentTimeMillis() + j) : null;
        this.b.lock();
        try {
            xa3 xa3VarG = g(ym1Var);
            lc4 lc4Var = null;
            while (fvVarF == null) {
                mt1.n("Connection pool shut down", !this.k);
                if (this.a.isDebugEnabled()) {
                    this.a.debug("[" + ym1Var + "] total kept alive: " + this.f.size() + ", total issued: " + this.e.size() + ", total allocated: " + this.m + " out of " + this.l);
                }
                fvVarF = f(xa3VarG, obj);
                if (fvVarF == null) {
                    boolean z = xa3VarG.d.a(xa3VarG.b) - xa3VarG.g > 0;
                    if (this.a.isDebugEnabled()) {
                        this.a.debug("Available capacity: " + (xa3VarG.d.a(xa3VarG.b) - xa3VarG.g) + " out of " + xa3VarG.c + " [" + ym1Var + "][" + obj + "]");
                    }
                    if (z && this.m < this.l) {
                        fvVarF = b(xa3VarG, this.c);
                    } else if (!z || this.f.isEmpty()) {
                        if (this.a.isDebugEnabled()) {
                            this.a.debug("Need to wait for connection [" + ym1Var + "][" + obj + "]");
                        }
                        if (lc4Var == null) {
                            lc4 lc4Var2 = new lc4(this.b.newCondition());
                            sb0Var.o = lc4Var2;
                            if (sb0Var.n) {
                                lc4Var2.c = true;
                                lc4Var2.a.signalAll();
                            }
                            lc4Var = lc4Var2;
                        }
                        try {
                            xa3VarG.f.add(lc4Var);
                            this.g.add(lc4Var);
                            if (!lc4Var.a(date) && date != null && date.getTime() <= System.currentTimeMillis()) {
                                throw new ge0("Timeout waiting for connection from pool");
                            }
                        } finally {
                            xa3VarG.f.remove(lc4Var);
                            this.g.remove(lc4Var);
                        }
                    } else {
                        ReentrantLock reentrantLock = this.b;
                        reentrantLock.lock();
                        try {
                            fv fvVar = (fv) this.f.remove();
                            if (fvVar != null) {
                                c(fvVar);
                            } else if (this.a.isDebugEnabled()) {
                                this.a.debug("No free connection to delete");
                            }
                            reentrantLock.unlock();
                            xa3 xa3VarG2 = g(ym1Var);
                            xa3VarG = xa3VarG2;
                            fvVarF = b(xa3VarG2, this.c);
                        } catch (Throwable th) {
                            reentrantLock.unlock();
                            throw th;
                        }
                    }
                }
            }
            return fvVarF;
        } finally {
            this.b.unlock();
        }
    }

    public final fv f(xa3 xa3Var, Object obj) {
        this.b.lock();
        fv fvVarA = null;
        boolean z = false;
        while (!z) {
            try {
                fvVarA = xa3Var.a(obj);
                Log log = this.a;
                if (fvVarA != null) {
                    if (log.isDebugEnabled()) {
                        this.a.debug("Getting free connection [" + xa3Var.b + "][" + obj + "]");
                    }
                    this.f.remove(fvVarA);
                    if (System.currentTimeMillis() >= fvVarA.g) {
                        if (this.a.isDebugEnabled()) {
                            this.a.debug("Closing expired free connection [" + xa3Var.b + "][" + obj + "]");
                        }
                        a(fvVarA);
                        mt1.n("There is no entry that could be dropped", xa3Var.g > 0);
                        xa3Var.g--;
                        this.m--;
                    } else {
                        this.e.add(fvVarA);
                    }
                } else if (log.isDebugEnabled()) {
                    this.a.debug("No free connections [" + xa3Var.b + "][" + obj + "]");
                }
                z = true;
            } catch (Throwable th) {
                this.b.unlock();
                throw th;
            }
        }
        this.b.unlock();
        return fvVarA;
    }

    public final xa3 g(ym1 ym1Var) {
        HashMap map = this.h;
        ReentrantLock reentrantLock = this.b;
        reentrantLock.lock();
        try {
            xa3 xa3Var = (xa3) map.get(ym1Var);
            if (xa3Var == null) {
                xa3Var = new xa3(ym1Var, this.d);
                map.put(ym1Var, xa3Var);
            }
            return xa3Var;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003d A[Catch: all -> 0x0034, TRY_LEAVE, TryCatch #0 {all -> 0x0034, blocks: (B:4:0x000b, B:6:0x0013, B:8:0x001b, B:11:0x0036, B:24:0x0069, B:26:0x006d, B:27:0x0073, B:28:0x007a, B:12:0x003d, B:15:0x0045, B:17:0x004b, B:18:0x0052, B:19:0x0059, B:21:0x005f), top: B:33:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(defpackage.xa3 r6) {
        /*
            r5 = this;
            java.util.LinkedList r0 = r5.g
            java.lang.String r1 = "Notifying thread waiting on pool ["
            java.util.concurrent.locks.ReentrantLock r2 = r5.b
            r2.lock()
            if (r6 == 0) goto L3d
            java.util.LinkedList r3 = r6.f     // Catch: java.lang.Throwable -> L34
            boolean r4 = r3.isEmpty()     // Catch: java.lang.Throwable -> L34
            if (r4 != 0) goto L3d
            org.apache.commons.logging.Log r0 = r5.a     // Catch: java.lang.Throwable -> L34
            boolean r0 = r0.isDebugEnabled()     // Catch: java.lang.Throwable -> L34
            if (r0 == 0) goto L36
            org.apache.commons.logging.Log r5 = r5.a     // Catch: java.lang.Throwable -> L34
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L34
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L34
            ym1 r6 = r6.b     // Catch: java.lang.Throwable -> L34
            r0.append(r6)     // Catch: java.lang.Throwable -> L34
            java.lang.String r6 = "]"
            r0.append(r6)     // Catch: java.lang.Throwable -> L34
            java.lang.String r6 = r0.toString()     // Catch: java.lang.Throwable -> L34
            r5.debug(r6)     // Catch: java.lang.Throwable -> L34
            goto L36
        L34:
            r5 = move-exception
            goto L7f
        L36:
            java.lang.Object r5 = r3.peek()     // Catch: java.lang.Throwable -> L34
            lc4 r5 = (defpackage.lc4) r5     // Catch: java.lang.Throwable -> L34
            goto L67
        L3d:
            boolean r6 = r0.isEmpty()     // Catch: java.lang.Throwable -> L34
            org.apache.commons.logging.Log r1 = r5.a
            if (r6 != 0) goto L59
            boolean r6 = r1.isDebugEnabled()     // Catch: java.lang.Throwable -> L34
            if (r6 == 0) goto L52
            org.apache.commons.logging.Log r5 = r5.a     // Catch: java.lang.Throwable -> L34
            java.lang.String r6 = "Notifying thread waiting on any pool"
            r5.debug(r6)     // Catch: java.lang.Throwable -> L34
        L52:
            java.lang.Object r5 = r0.remove()     // Catch: java.lang.Throwable -> L34
            lc4 r5 = (defpackage.lc4) r5     // Catch: java.lang.Throwable -> L34
            goto L67
        L59:
            boolean r6 = r1.isDebugEnabled()     // Catch: java.lang.Throwable -> L34
            if (r6 == 0) goto L66
            org.apache.commons.logging.Log r5 = r5.a     // Catch: java.lang.Throwable -> L34
            java.lang.String r6 = "Notifying no-one, there are no waiting threads"
            r5.debug(r6)     // Catch: java.lang.Throwable -> L34
        L66:
            r5 = 0
        L67:
            if (r5 == 0) goto L7b
            java.lang.Thread r6 = r5.b     // Catch: java.lang.Throwable -> L34
            if (r6 == 0) goto L73
            java.util.concurrent.locks.Condition r5 = r5.a     // Catch: java.lang.Throwable -> L34
            r5.signalAll()     // Catch: java.lang.Throwable -> L34
            goto L7b
        L73:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L34
            java.lang.String r6 = "Nobody waiting on this object."
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L34
            throw r5     // Catch: java.lang.Throwable -> L34
        L7b:
            r2.unlock()
            return
        L7f:
            r2.unlock()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sd0.h(xa3):void");
    }

    public final void i() {
        this.b.lock();
        try {
            if (!this.k) {
                this.k = true;
                Iterator it = this.e.iterator();
                while (it.hasNext()) {
                    fv fvVar = (fv) it.next();
                    it.remove();
                    a(fvVar);
                }
                Iterator it2 = this.f.iterator();
                while (it2.hasNext()) {
                    fv fvVar2 = (fv) it2.next();
                    it2.remove();
                    if (this.a.isDebugEnabled()) {
                        this.a.debug("Closing connection [" + fvVar2.c + "][" + fvVar2.d + "]");
                    }
                    a(fvVar2);
                }
                Iterator it3 = this.g.iterator();
                while (it3.hasNext()) {
                    lc4 lc4Var = (lc4) it3.next();
                    it3.remove();
                    if (lc4Var.b == null) {
                        throw new IllegalStateException("Nobody waiting on this object.");
                    }
                    lc4Var.a.signalAll();
                }
                this.h.clear();
            }
            this.b.unlock();
        } catch (Throwable th) {
            this.b.unlock();
            throw th;
        }
    }
}
