package defpackage;

import java.io.InterruptedIOException;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gl1 implements kn3 {
    public final boolean n;
    public final sy o = new sy();
    public boolean p;
    public final /* synthetic */ jl1 q;

    public gl1(jl1 jl1Var, boolean z) {
        this.q = jl1Var;
        this.n = z;
    }

    @Override // defpackage.kn3
    public final void J(long j, sy syVar) {
        TimeZone timeZone = hi4.a;
        sy syVar2 = this.o;
        syVar2.J(j, syVar);
        while (syVar2.o >= 16384) {
            b(false);
        }
    }

    /* JADX WARN: Finally extract failed */
    public final void b(boolean z) {
        long jMin;
        boolean z2;
        jl1 jl1Var = this.q;
        synchronized (jl1Var) {
            jl1Var.x.h();
            while (jl1Var.q >= jl1Var.r && !this.n && !this.p && jl1Var.h() == null) {
                try {
                    try {
                        jl1Var.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                } catch (Throwable th) {
                    jl1Var.x.l();
                    throw th;
                }
            }
            jl1Var.x.l();
            jl1Var.b();
            jMin = Math.min(jl1Var.r - jl1Var.q, this.o.o);
            jl1Var.q += jMin;
            z2 = z && jMin == this.o.o;
        }
        this.q.x.h();
        try {
            jl1 jl1Var2 = this.q;
            jl1Var2.o.B(jl1Var2.n, z2, this.o, jMin);
        } finally {
            this.q.x.l();
        }
    }

    @Override // defpackage.kn3, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        jl1 jl1Var = this.q;
        TimeZone timeZone = hi4.a;
        synchronized (jl1Var) {
            if (this.p) {
                return;
            }
            boolean z = jl1Var.h() == null;
            jl1 jl1Var2 = this.q;
            if (!jl1Var2.v.n) {
                if (this.o.o > 0) {
                    while (this.o.o > 0) {
                        b(true);
                    }
                } else if (z) {
                    jl1Var2.o.B(jl1Var2.n, true, null, 0L);
                }
            }
            jl1 jl1Var3 = this.q;
            synchronized (jl1Var3) {
                this.p = true;
                jl1Var3.notifyAll();
            }
            this.q.o.flush();
            this.q.a();
        }
    }

    @Override // defpackage.kn3, java.io.Flushable
    public final void flush() {
        jl1 jl1Var = this.q;
        TimeZone timeZone = hi4.a;
        synchronized (jl1Var) {
            jl1Var.b();
        }
        while (this.o.o > 0) {
            b(false);
            this.q.o.flush();
        }
    }

    @Override // defpackage.kn3
    public final mz3 g() {
        return this.q.x;
    }
}
