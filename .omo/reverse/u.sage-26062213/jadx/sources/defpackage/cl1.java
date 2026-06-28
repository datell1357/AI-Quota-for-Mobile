package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cl1 implements Closeable {
    public static final lk3 M;
    public long A;
    public long B;
    public final c81 C;
    public final lk3 D;
    public lk3 E;
    public final ed4 F;
    public long G;
    public long H;
    public final eh I;
    public final kl1 J;
    public final bl1 K;
    public final LinkedHashSet L;
    public final zk1 n;
    public final LinkedHashMap o = new LinkedHashMap();
    public final String p;
    public int q;
    public int r;
    public boolean s;
    public final tw3 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final sw3 f53u;
    public final sw3 v;
    public final sw3 w;
    public final mj1 x;
    public long y;
    public long z;

    static {
        lk3 lk3Var = new lk3();
        lk3Var.b(4, 65535);
        lk3Var.b(5, 16384);
        M = lk3Var;
    }

    public cl1(rp rpVar) {
        this.n = (zk1) rpVar.e;
        String str = (String) rpVar.d;
        if (str == null) {
            nt1.X("connectionName");
            throw null;
        }
        this.p = str;
        this.r = 3;
        tw3 tw3Var = (tw3) rpVar.b;
        this.t = tw3Var;
        this.f53u = tw3Var.d();
        this.v = tw3Var.d();
        this.w = tw3Var.d();
        this.x = mj1.e0;
        this.C = (c81) rpVar.f;
        lk3 lk3Var = new lk3();
        lk3Var.b(4, 16777216);
        this.D = lk3Var;
        this.E = M;
        this.F = new ed4(0);
        this.H = r0.a();
        eh ehVar = (eh) rpVar.c;
        if (ehVar == null) {
            nt1.X("socket");
            throw null;
        }
        this.I = ehVar;
        this.J = new kl1((c23) ehVar.q);
        this.K = new bl1(this, new fl1((d23) ehVar.p));
        this.L = new LinkedHashSet();
    }

    public final void A(long j) {
        synchronized (this) {
            try {
                ed4.b(this.F, j, 0L, 2);
                long jA = this.F.a();
                if (jA >= this.D.a() / 2) {
                    K(0, jA);
                    ed4.b(this.F, 0L, jA, 1);
                }
                c81 c81Var = this.C;
                ed4 ed4Var = this.F;
                c81Var.getClass();
                ed4Var.getClass();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0035, code lost:
    
        r2 = java.lang.Math.min((int) java.lang.Math.min(r12, r6 - r4), r8.J.p);
        r6 = r2;
        r8.G += r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void B(int r9, boolean r10, defpackage.sy r11, long r12) {
        /*
            r8 = this;
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto Ld
            kl1 r8 = r8.J
            r8.j(r10, r9, r11, r3)
            return
        Ld:
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 <= 0) goto L68
            monitor-enter(r8)
        L12:
            long r4 = r8.G     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            long r6 = r8.H     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 < 0) goto L34
            java.util.LinkedHashMap r2 = r8.o     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            boolean r2 = r2.containsKey(r4)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            if (r2 == 0) goto L2c
            r8.wait()     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            goto L12
        L2a:
            r9 = move-exception
            goto L66
        L2c:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            throw r9     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
        L34:
            long r6 = r6 - r4
            long r4 = java.lang.Math.min(r12, r6)     // Catch: java.lang.Throwable -> L2a
            int r2 = (int) r4     // Catch: java.lang.Throwable -> L2a
            kl1 r4 = r8.J     // Catch: java.lang.Throwable -> L2a
            int r4 = r4.p     // Catch: java.lang.Throwable -> L2a
            int r2 = java.lang.Math.min(r2, r4)     // Catch: java.lang.Throwable -> L2a
            long r4 = r8.G     // Catch: java.lang.Throwable -> L2a
            long r6 = (long) r2     // Catch: java.lang.Throwable -> L2a
            long r4 = r4 + r6
            r8.G = r4     // Catch: java.lang.Throwable -> L2a
            monitor-exit(r8)
            long r12 = r12 - r6
            kl1 r4 = r8.J
            if (r10 == 0) goto L54
            int r5 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r5 != 0) goto L54
            r5 = 1
            goto L55
        L54:
            r5 = r3
        L55:
            r4.j(r5, r9, r11, r2)
            goto Ld
        L59:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L2a
            r9.interrupt()     // Catch: java.lang.Throwable -> L2a
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L2a
            r9.<init>()     // Catch: java.lang.Throwable -> L2a
            throw r9     // Catch: java.lang.Throwable -> L2a
        L66:
            monitor-exit(r8)
            throw r9
        L68:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cl1.B(int, boolean, sy, long):void");
    }

    public final void F(final int i, final d21 d21Var) {
        sw3.b(this.f53u, this.p + '[' + i + "] writeSynReset", new ne1() { // from class: vk1
            @Override // defpackage.ne1
            public final Object a() {
                cl1 cl1Var = this.n;
                try {
                    cl1Var.J.F(i, d21Var);
                } catch (IOException e) {
                    d21 d21Var2 = d21.q;
                    cl1Var.b(d21Var2, d21Var2, e);
                }
                return t64.a;
            }
        });
    }

    public final void K(final int i, final long j) {
        sw3.b(this.f53u, this.p + '[' + i + "] windowUpdate", new ne1() { // from class: uk1
            @Override // defpackage.ne1
            public final Object a() {
                cl1 cl1Var = this.n;
                try {
                    cl1Var.J.K(i, j);
                } catch (IOException e) {
                    d21 d21Var = d21.q;
                    cl1Var.b(d21Var, d21Var, e);
                }
                return t64.a;
            }
        });
    }

    public final void b(d21 d21Var, d21 d21Var2, IOException iOException) {
        int i;
        Object[] array;
        TimeZone timeZone = hi4.a;
        try {
            z(d21Var);
        } catch (IOException unused) {
        }
        synchronized (this) {
            if (this.o.isEmpty()) {
                array = null;
            } else {
                array = this.o.values().toArray(new jl1[0]);
                this.o.clear();
            }
        }
        jl1[] jl1VarArr = (jl1[]) array;
        if (jl1VarArr != null) {
            for (jl1 jl1Var : jl1VarArr) {
                try {
                    jl1Var.c(d21Var2, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.J.close();
        } catch (IOException unused3) {
        }
        try {
            ((Socket) ((qd1) this.I.o).o).close();
        } catch (IOException unused4) {
        }
        this.f53u.e();
        this.v.e();
        this.w.e();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        b(d21.p, d21.f62u, null);
    }

    public final void flush() {
        this.J.flush();
    }

    public final jl1 j(int i) {
        jl1 jl1Var;
        synchronized (this) {
            jl1Var = (jl1) this.o.get(Integer.valueOf(i));
        }
        return jl1Var;
    }

    public final jl1 r(int i) {
        jl1 jl1Var;
        synchronized (this) {
            jl1Var = (jl1) this.o.remove(Integer.valueOf(i));
            notifyAll();
        }
        return jl1Var;
    }

    public final void z(d21 d21Var) {
        synchronized (this.J) {
            synchronized (this) {
                if (this.s) {
                    return;
                }
                this.s = true;
                this.J.z(this.q, d21Var, fi4.a);
            }
        }
    }
}
