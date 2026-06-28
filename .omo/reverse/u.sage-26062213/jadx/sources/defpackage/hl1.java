package defpackage;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hl1 implements yp3 {
    public final long n;
    public boolean o;
    public final sy p = new sy();
    public final sy q = new sy();
    public boolean r;
    public final /* synthetic */ jl1 s;

    public hl1(jl1 jl1Var, long j, boolean z) {
        this.s = jl1Var;
        this.n = j;
        this.o = z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        long j;
        jl1 jl1Var = this.s;
        synchronized (jl1Var) {
            this.r = true;
            sy syVar = this.q;
            j = syVar.o;
            syVar.skip(j);
            jl1Var.notifyAll();
        }
        if (j > 0) {
            jl1 jl1Var2 = this.s;
            TimeZone timeZone = hi4.a;
            jl1Var2.o.A(j);
        }
        this.s.a();
    }

    @Override // defpackage.yp3
    public final mz3 g() {
        return this.s.w;
    }

    @Override // defpackage.yp3
    public final long l(long j, sy syVar) throws Throwable {
        boolean z;
        Throwable ss3Var;
        long j2;
        long jL;
        syVar.getClass();
        long j3 = 0;
        if (j < 0) {
            k21.l(di0.s(j, "byteCount < 0: "));
            return 0L;
        }
        while (true) {
            jl1 jl1Var = this.s;
            synchronized (jl1Var) {
                jl1Var.o.getClass();
                gl1 gl1Var = jl1Var.v;
                z = true;
                boolean z2 = gl1Var.p || gl1Var.n;
                if (z2) {
                    jl1Var.w.h();
                }
                try {
                    if (jl1Var.h() == null || this.o) {
                        ss3Var = null;
                    } else {
                        ss3Var = jl1Var.z;
                        if (ss3Var == null) {
                            d21 d21VarH = jl1Var.h();
                            d21VarH.getClass();
                            ss3Var = new ss3(d21VarH);
                        }
                    }
                    if (this.r) {
                        throw new IOException("stream closed");
                    }
                    sy syVar2 = this.q;
                    long j4 = syVar2.o;
                    if (j4 > j3) {
                        jL = syVar2.l(Math.min(j, j4), syVar);
                        ed4.b(jl1Var.p, jL, 0L, 2);
                        long jA = jl1Var.p.a();
                        if (ss3Var == null) {
                            j2 = j3;
                            if (jA >= jl1Var.o.D.a() / 2) {
                                jl1Var.o.K(jl1Var.n, jA);
                                ed4.b(jl1Var.p, 0L, jA, 1);
                            }
                        } else {
                            j2 = j3;
                        }
                        z = false;
                    } else {
                        j2 = j3;
                        if (this.o || ss3Var != null) {
                            z = false;
                        } else {
                            try {
                                jl1Var.wait();
                            } catch (InterruptedException unused) {
                                Thread.currentThread().interrupt();
                                throw new InterruptedIOException();
                            }
                        }
                        jL = -1;
                    }
                } finally {
                    if (z2) {
                        jl1Var.w.l();
                    }
                }
            }
            this.s.o.C.getClass();
            if (!z) {
                if (jL != -1) {
                    return jL;
                }
                if (ss3Var == null) {
                    return -1L;
                }
                throw ss3Var;
            }
            j3 = j2;
        }
    }
}
