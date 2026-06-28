package defpackage;

import java.io.Closeable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kf5 implements Runnable, Closeable {
    public rf5 n;
    public final boolean o = dm0.R(Thread.currentThread());
    public boolean p;
    public boolean q;
    public final boolean r;

    public kf5(rf5 rf5Var, boolean z) {
        this.r = false;
        this.n = rf5Var;
        this.r = z;
    }

    public final void b(s0 s0Var) {
        if (this.p) {
            k21.n("Span was already closed. Did you attach it to a future after calling Tracer.endSpan()?");
        } else if (this.q) {
            k21.n("Signal is already attached to future");
        } else {
            this.q = true;
            s0Var.a(this, fu0.n);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        rf5 rf5Var = this.n;
        try {
            this.n = null;
            boolean z = this.q;
            if (!z) {
                if (this.p) {
                    throw new IllegalStateException("Span was already closed!");
                }
                this.p = true;
                if (this.o && !z) {
                    dm0.R(Thread.currentThread());
                }
            }
            if (rf5Var != null) {
                ((te5) rf5Var).close();
            }
            if (this.r) {
                ye5.b(ye5.c(), jf5.t);
            }
        } catch (Throwable th) {
            if (rf5Var != null) {
                try {
                    ((te5) rf5Var).close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        if (this.p || !(z = this.q)) {
            dm0.S().post(f20.p);
            return;
        }
        this.p = true;
        if (!this.o || z) {
            return;
        }
        dm0.R(Thread.currentThread());
    }
}
