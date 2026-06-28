package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ax2 implements ql1, Closeable {
    public final Log n;
    public final zw2 o;
    public final j00 p;
    public final bp0 q;
    public final AtomicBoolean r;

    public ax2(y43 y43Var, TimeUnit timeUnit) {
        bp0 bp0Var = new bp0(y43Var);
        this.n = LogFactory.getLog(ax2.class);
        zw2 zw2Var = new zw2();
        this.o = zw2Var;
        xh1 xh1Var = new xh1();
        xh1Var.n = zw2Var;
        xh1Var.o = w92.i;
        j00 j00Var = new j00(xh1Var, timeUnit);
        this.p = j00Var;
        j00Var.l = 2000;
        this.q = bp0Var;
        this.r = new AtomicBoolean(false);
    }

    public static String j(k00 k00Var) {
        StringBuilder sb = new StringBuilder("[id: ");
        sb.append(k00Var.a);
        sb.append("][route: ");
        sb.append(k00Var.b);
        sb.append("]");
        Object obj = k00Var.g;
        if (obj != null) {
            sb.append("[state: ");
            sb.append(obj);
            sb.append("]");
        }
        return sb.toString();
    }

    public final void A(l00 l00Var, Object obj, long j, TimeUnit timeUnit) {
        String str;
        synchronized (l00Var) {
            try {
                l00 l00VarJ = l00.j(l00Var);
                k00 k00Var = l00VarJ.n;
                l00VarJ.n = null;
                if (k00Var == null) {
                    return;
                }
                v92 v92Var = (v92) k00Var.c;
                boolean z = true;
                try {
                    if (v92Var.isOpen()) {
                        if (timeUnit == null) {
                            timeUnit = TimeUnit.MILLISECONDS;
                        }
                        k00Var.g = obj;
                        k00Var.d(j, timeUnit);
                        if (this.n.isDebugEnabled()) {
                            if (j > 0) {
                                str = "for " + (timeUnit.toMillis(j) / 1000.0d) + " seconds";
                            } else {
                                str = "indefinitely";
                            }
                            this.n.debug("Connection " + j(k00Var) + " can be kept alive " + str);
                        }
                        v92Var.n(0);
                    }
                    j00 j00Var = this.p;
                    if (!v92Var.isOpen() || !k00Var.i) {
                        z = false;
                    }
                    j00Var.c(k00Var, z);
                    if (this.n.isDebugEnabled()) {
                        this.n.debug("Connection released: " + j(k00Var) + r((ym1) k00Var.b));
                    }
                } catch (Throwable th) {
                    j00 j00Var2 = this.p;
                    if (!v92Var.isOpen() || !k00Var.i) {
                        z = false;
                    }
                    j00Var2.c(k00Var, z);
                    if (this.n.isDebugEnabled()) {
                        this.n.debug("Connection released: " + j(k00Var) + r((ym1) k00Var.b));
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final xw2 B(ym1 ym1Var, Object obj) {
        w80.L(ym1Var, "HTTP route");
        if (this.n.isDebugEnabled()) {
            Log log = this.n;
            StringBuilder sb = new StringBuilder("Connection request: ");
            StringBuilder sb2 = new StringBuilder("[route: ");
            sb2.append(ym1Var);
            sb2.append("]");
            if (obj != null) {
                sb2.append("[state: ");
                sb2.append(obj);
                sb2.append("]");
            }
            sb.append(sb2.toString());
            sb.append(r(ym1Var));
            log.debug(sb.toString());
        }
        mt1.n("Connection pool shut down", !this.r.get());
        j00 j00Var = this.p;
        j00Var.getClass();
        mt1.n("Connection pool shut down", !j00Var.i);
        return new xw2(this, new c0(j00Var, ym1Var, obj), ym1Var);
    }

    public final void F(int i) {
        j00 j00Var = this.p;
        j00Var.getClass();
        w80.N(i, "Max per route value");
        j00Var.a.lock();
        try {
            j00Var.j = i;
        } finally {
            j00Var.a.unlock();
        }
    }

    public final void K(int i) {
        j00 j00Var = this.p;
        j00Var.getClass();
        w80.N(i, "Max value");
        j00Var.a.lock();
        try {
            j00Var.k = i;
        } finally {
            j00Var.a.unlock();
        }
    }

    public final void b(l00 l00Var, ym1 ym1Var, int i, rl1 rl1Var) {
        v92 v92Var;
        w80.L(ym1Var, "HTTP route");
        synchronized (l00Var) {
            k00 k00Var = l00.j(l00Var).n;
            if (k00Var == null) {
                throw new je0();
            }
            v92Var = (v92) k00Var.c;
        }
        em1 em1VarE = ym1Var.e() != null ? ym1Var.e() : ym1Var.n;
        bp0 bp0Var = this.q;
        InetAddress inetAddress = ym1Var.o;
        InetSocketAddress inetSocketAddress = inetAddress != null ? new InetSocketAddress(inetAddress, 0) : null;
        mp3 mp3Var = (mp3) this.o.a.get(em1VarE);
        mp3 mp3Var2 = mp3Var != null ? mp3Var : null;
        if (mp3Var2 == null) {
            mp3Var2 = mp3.n;
        }
        bp0Var.a(v92Var, em1VarE, inetSocketAddress, i, mp3Var2, rl1Var);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        shutdown();
    }

    public final void finalize() throws Throwable {
        try {
            shutdown();
        } finally {
            super.finalize();
        }
    }

    public final String r(ym1 ym1Var) {
        ReentrantLock reentrantLock;
        StringBuilder sb = new StringBuilder("[total available: ");
        j00 j00Var = this.p;
        j00Var.a.lock();
        try {
            int size = j00Var.e.size();
            j00Var.g.size();
            int size2 = j00Var.f.size();
            int i = j00Var.k;
            j00Var.a.unlock();
            j00 j00Var2 = this.p;
            j00Var2.getClass();
            w80.L(ym1Var, "Route");
            reentrantLock = j00Var2.a;
            reentrantLock.lock();
            try {
                b0 b0VarB = j00Var2.b(ym1Var);
                int size3 = b0VarB.b.size();
                b0VarB.d.size();
                int size4 = b0VarB.c.size();
                Integer num = (Integer) j00Var2.h.get(ym1Var);
                int iIntValue = num != null ? num.intValue() : j00Var2.j;
                reentrantLock.unlock();
                sb.append(size2);
                sb.append("; route allocated: ");
                sb.append(size3 + size4);
                sb.append(" of ");
                sb.append(iIntValue);
                sb.append("; total allocated: ");
                sb.append(size + size2);
                sb.append(" of ");
                sb.append(i);
                sb.append("]");
                return sb.toString();
            } finally {
                reentrantLock.unlock();
            }
        } catch (Throwable th) {
            reentrantLock = j00Var.a;
            throw th;
        }
    }

    public final void shutdown() {
        j00 j00Var = this.p;
        if (this.r.compareAndSet(false, true)) {
            this.n.debug("Connection manager is shutting down");
            try {
                yw2 yw2Var = new yw2(this);
                ReentrantLock reentrantLock = j00Var.a;
                reentrantLock.lock();
                try {
                    Iterator it = j00Var.e.iterator();
                    while (it.hasNext()) {
                        yw2Var.a((mw2) it.next());
                    }
                    reentrantLock.unlock();
                    j00Var.d();
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            } catch (IOException e) {
                this.n.debug("I/O exception shutting down connection manager", e);
            }
            this.n.debug("Connection manager shut down");
        }
    }

    public final l00 z(c0 c0Var, long j) throws ExecutionException, ge0 {
        try {
            k00 k00Var = (k00) c0Var.get(j, TimeUnit.MILLISECONDS);
            if (c0Var.n.get()) {
                throw new ExecutionException(new CancellationException("Operation cancelled"));
            }
            mt1.n("Pool entry with no connection", k00Var.c != null);
            if (this.n.isDebugEnabled()) {
                this.n.debug("Connection leased: " + j(k00Var) + r((ym1) k00Var.b));
            }
            l00 l00Var = new l00();
            l00Var.n = k00Var;
            return l00Var;
        } catch (TimeoutException unused) {
            throw new ge0("Timeout waiting for connection from pool");
        }
    }
}
