package defpackage;

import java.io.IOException;
import java.util.ArrayDeque;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jl1 implements jp3 {
    public final int n;
    public final cl1 o;
    public final ed4 p;
    public long q;
    public long r;
    public final ArrayDeque s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final hl1 f152u;
    public final gl1 v;
    public final il1 w;
    public final il1 x;
    public d21 y;
    public IOException z;

    public jl1(int i, cl1 cl1Var, boolean z, boolean z2, kj1 kj1Var) {
        cl1Var.getClass();
        this.n = i;
        this.o = cl1Var;
        this.p = new ed4(i);
        this.r = cl1Var.E.a();
        ArrayDeque arrayDeque = new ArrayDeque();
        this.s = arrayDeque;
        this.f152u = new hl1(this, cl1Var.D.a(), z2);
        this.v = new gl1(this, z);
        this.w = new il1(this);
        this.x = new il1(this);
        if (kj1Var == null) {
            if (i()) {
                return;
            }
            k21.n("remotely-initiated streams should have headers");
            throw null;
        }
        if (i()) {
            k21.n("locally-initiated streams shouldn't have headers yet");
            throw null;
        }
        arrayDeque.add(kj1Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r2 = this;
            java.util.TimeZone r0 = defpackage.hi4.a
            monitor-enter(r2)
            hl1 r0 = r2.f152u     // Catch: java.lang.Throwable -> L18
            boolean r1 = r0.o     // Catch: java.lang.Throwable -> L18
            if (r1 != 0) goto L1c
            boolean r0 = r0.r     // Catch: java.lang.Throwable -> L18
            if (r0 == 0) goto L1c
            gl1 r0 = r2.v     // Catch: java.lang.Throwable -> L18
            boolean r1 = r0.n     // Catch: java.lang.Throwable -> L18
            if (r1 != 0) goto L1a
            boolean r0 = r0.p     // Catch: java.lang.Throwable -> L18
            if (r0 == 0) goto L1c
            goto L1a
        L18:
            r0 = move-exception
            goto L35
        L1a:
            r0 = 1
            goto L1d
        L1c:
            r0 = 0
        L1d:
            boolean r1 = r2.j()     // Catch: java.lang.Throwable -> L18
            monitor-exit(r2)
            if (r0 == 0) goto L2b
            d21 r0 = defpackage.d21.f62u
            r1 = 0
            r2.c(r0, r1)
            return
        L2b:
            if (r1 != 0) goto L34
            cl1 r0 = r2.o
            int r2 = r2.n
            r0.r(r2)
        L34:
            return
        L35:
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.jl1.a():void");
    }

    public final void b() throws IOException {
        gl1 gl1Var = this.v;
        if (gl1Var.p) {
            p61.k("stream closed");
            return;
        }
        if (gl1Var.n) {
            p61.k("stream finished");
            return;
        }
        if (h() != null) {
            IOException iOException = this.z;
            if (iOException != null) {
                throw iOException;
            }
            d21 d21VarH = h();
            d21VarH.getClass();
            throw new ss3(d21VarH);
        }
    }

    public final void c(d21 d21Var, IOException iOException) {
        if (d(d21Var, iOException)) {
            cl1 cl1Var = this.o;
            cl1Var.getClass();
            cl1Var.J.F(this.n, d21Var);
        }
    }

    public final boolean d(d21 d21Var, IOException iOException) {
        TimeZone timeZone = hi4.a;
        synchronized (this) {
            if (h() != null) {
                return false;
            }
            this.y = d21Var;
            this.z = iOException;
            notifyAll();
            if (this.f152u.o) {
                if (this.v.n) {
                    return false;
                }
            }
            this.o.r(this.n);
            return true;
        }
    }

    public final void e(d21 d21Var) {
        if (d(d21Var, null)) {
            this.o.F(this.n, d21Var);
        }
    }

    @Override // defpackage.jp3
    public final kn3 f() {
        return this.v;
    }

    @Override // defpackage.jp3
    public final yp3 g() {
        return this.f152u;
    }

    public final d21 h() {
        d21 d21Var;
        synchronized (this) {
            d21Var = this.y;
        }
        return d21Var;
    }

    public final boolean i() {
        boolean z = (this.n & 1) == 1;
        this.o.getClass();
        return true == z;
    }

    public final boolean j() {
        synchronized (this) {
            try {
                if (h() != null) {
                    return false;
                }
                hl1 hl1Var = this.f152u;
                if (hl1Var.o || hl1Var.r) {
                    gl1 gl1Var = this.v;
                    if (gl1Var.n || gl1Var.p) {
                        if (this.t) {
                            return false;
                        }
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void k(kj1 kj1Var, boolean z) {
        boolean zJ;
        kj1Var.getClass();
        TimeZone timeZone = hi4.a;
        synchronized (this) {
            try {
                if (this.t && kj1Var.a(":status") == null && kj1Var.a(":method") == null) {
                    this.f152u.getClass();
                } else {
                    this.t = true;
                    this.s.add(kj1Var);
                }
                if (z) {
                    this.f152u.o = true;
                }
                zJ = j();
                notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zJ) {
            return;
        }
        this.o.r(this.n);
    }
}
