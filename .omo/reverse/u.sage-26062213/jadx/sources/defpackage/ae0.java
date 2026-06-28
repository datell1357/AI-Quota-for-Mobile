package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.logging.Log;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ae0 implements he0, m20, Closeable {
    public final Log n;
    public final ql1 o;
    public final l00 p;
    public final AtomicBoolean q = new AtomicBoolean(false);
    public volatile boolean r;
    public volatile Object s;
    public volatile long t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile TimeUnit f4u;

    public ae0(Log log, ql1 ql1Var, l00 l00Var) {
        this.n = log;
        this.o = ql1Var;
        this.p = l00Var;
    }

    public final void A(boolean z) {
        ql1 ql1Var;
        l00 l00Var;
        TimeUnit timeUnit;
        if (this.q.compareAndSet(false, true)) {
            synchronized (this.p) {
                if (z) {
                    ((ax2) this.o).A(this.p, this.s, this.t, this.f4u);
                } else {
                    try {
                        try {
                            this.p.close();
                            this.n.debug("Connection discarded");
                            ql1Var = this.o;
                            l00Var = this.p;
                            timeUnit = TimeUnit.MILLISECONDS;
                        } catch (IOException e) {
                            if (this.n.isDebugEnabled()) {
                                this.n.debug(e.getMessage(), e);
                            }
                            ql1Var = this.o;
                            l00Var = this.p;
                            timeUnit = TimeUnit.MILLISECONDS;
                        }
                        ((ax2) ql1Var).A(l00Var, null, 0L, timeUnit);
                    } catch (Throwable th) {
                        ((ax2) this.o).A(this.p, null, 0L, TimeUnit.MILLISECONDS);
                        throw th;
                    }
                }
            }
        }
    }

    public final void B(long j) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        synchronized (this.p) {
            this.t = j;
            this.f4u = timeUnit;
        }
    }

    public final void O() {
        this.r = true;
    }

    public final boolean b() {
        return this.r;
    }

    @Override // defpackage.m20
    public final boolean cancel() {
        boolean z = this.q.get();
        this.n.debug("Cancelling request execution");
        j();
        return !z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        A(false);
    }

    @Override // defpackage.he0
    public final void j() {
        ql1 ql1Var;
        l00 l00Var;
        TimeUnit timeUnit;
        if (this.q.compareAndSet(false, true)) {
            synchronized (this.p) {
                try {
                    try {
                        this.p.shutdown();
                        this.n.debug("Connection discarded");
                        ql1Var = this.o;
                        l00Var = this.p;
                        timeUnit = TimeUnit.MILLISECONDS;
                    } catch (IOException e) {
                        if (this.n.isDebugEnabled()) {
                            this.n.debug(e.getMessage(), e);
                        }
                        ql1Var = this.o;
                        l00Var = this.p;
                        timeUnit = TimeUnit.MILLISECONDS;
                    }
                    ((ax2) ql1Var).A(l00Var, null, 0L, timeUnit);
                } catch (Throwable th) {
                    ((ax2) this.o).A(this.p, null, 0L, TimeUnit.MILLISECONDS);
                    throw th;
                }
            }
        }
    }

    public final void m0(Object obj) {
        this.s = obj;
    }

    @Override // defpackage.he0
    public final void r() {
        A(this.r);
    }

    public final void z() {
        this.r = false;
    }
}
