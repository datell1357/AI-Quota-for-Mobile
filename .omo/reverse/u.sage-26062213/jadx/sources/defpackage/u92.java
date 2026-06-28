package defpackage;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u92 implements t92 {
    public final g60 n;
    public final h60 o;
    public volatile mm1 p;
    public volatile boolean q;
    public volatile long r;

    public u92(iu iuVar, eo0 eo0Var, mm1 mm1Var) {
        w80.L(iuVar, "Connection manager");
        w80.L(eo0Var, "Connection operator");
        w80.L(mm1Var, "HTTP pool entry");
        this.n = iuVar;
        this.o = eo0Var;
        this.p = mm1Var;
        this.q = false;
        this.r = Long.MAX_VALUE;
    }

    @Override // defpackage.pl1
    public final void C(vm1 vm1Var) throws e03 {
        ((op3) b()).C(vm1Var);
    }

    @Override // defpackage.t92
    public final void D(km1 km1Var) {
        em1 em1Var;
        qp2 qp2Var;
        w80.L(km1Var, "HTTP parameters");
        synchronized (this) {
            if (this.p == null) {
                throw new je0();
            }
            ya3 ya3Var = this.p.i;
            mt1.O(ya3Var, "Route tracker");
            mt1.n("Connection not open", ya3Var.p);
            mt1.n("Connection is already tunnelled", !ya3Var.c());
            em1Var = ya3Var.n;
            qp2Var = (qp2) this.p.c;
        }
        ((do0) qp2Var).K(null, em1Var, false, km1Var);
        synchronized (this) {
            try {
                if (this.p == null) {
                    throw new InterruptedIOException();
                }
                ya3 ya3Var2 = this.p.i;
                mt1.n("No tunnel unless connected", ya3Var2.p);
                mt1.O(ya3Var2.q, "No tunnel without proxy");
                ya3Var2.r = ta3.o;
                ya3Var2.t = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.gm1
    public final int E() {
        return ((op3) b()).E();
    }

    @Override // defpackage.pl1
    public final vm1 M() {
        return ((do0) b()).M();
    }

    @Override // defpackage.t92
    public final void O() {
        this.q = true;
    }

    @Override // defpackage.v92
    public final void S(Socket socket) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.t92
    public final void T(long j) {
        if (j > 0) {
            this.r = j;
        } else {
            this.r = -1L;
        }
    }

    @Override // defpackage.pl1
    public final void U(zl1 zl1Var) throws e03, IOException {
        ((op3) b()).U(zl1Var);
    }

    @Override // defpackage.gm1
    public final InetAddress X() {
        return ((op3) b()).X();
    }

    public final qp2 b() {
        mm1 mm1Var = this.p;
        if (mm1Var != null) {
            return (qp2) mm1Var.c;
        }
        throw new je0();
    }

    @Override // defpackage.v92
    public final SSLSession b0() {
        Socket socket = ((do0) b()).A;
        if (socket instanceof SSLSocket) {
            return ((SSLSocket) socket).getSession();
        }
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        mm1 mm1Var = this.p;
        if (mm1Var != null) {
            qp2 qp2Var = (qp2) mm1Var.c;
            mm1Var.i.g();
            ((do0) qp2Var).close();
        }
    }

    @Override // defpackage.v92
    public final Socket f() {
        return ((do0) b()).A;
    }

    @Override // defpackage.pl1
    public final void flush() {
        ((op3) b()).flush();
    }

    @Override // defpackage.t92
    public final void g0() {
        this.q = false;
    }

    @Override // defpackage.t92
    public final void h0(ul1 ul1Var, km1 km1Var) {
        em1 em1Var;
        qp2 qp2Var;
        w80.L(km1Var, "HTTP parameters");
        synchronized (this) {
            if (this.p == null) {
                throw new je0();
            }
            ya3 ya3Var = this.p.i;
            mt1.O(ya3Var, "Route tracker");
            mt1.n("Connection not open", ya3Var.p);
            mt1.n("Protocol layering without a tunnel not supported", ya3Var.c());
            mt1.n("Multiple protocol layering not supported", !ya3Var.f());
            em1Var = ya3Var.n;
            qp2Var = (qp2) this.p.c;
        }
        ((eo0) this.o).c(qp2Var, em1Var, ul1Var, km1Var);
        synchronized (this) {
            try {
                if (this.p == null) {
                    throw new InterruptedIOException();
                }
                ya3 ya3Var2 = this.p.i;
                boolean z = ((do0) qp2Var).B;
                mt1.n("No layered protocol unless connected", ya3Var2.p);
                ya3Var2.s = sa3.o;
                ya3Var2.t = z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.t92
    public final ym1 i() {
        mm1 mm1Var = this.p;
        if (mm1Var != null) {
            return mm1Var.i.h();
        }
        throw new je0();
    }

    @Override // defpackage.sl1
    public final boolean isOpen() {
        mm1 mm1Var = this.p;
        pl1 pl1Var = mm1Var == null ? null : (qp2) mm1Var.c;
        if (pl1Var != null) {
            return ((op3) pl1Var).v;
        }
        return false;
    }

    @Override // defpackage.he0
    public final void j() {
        synchronized (this) {
            try {
                if (this.p == null) {
                    return;
                }
                this.q = false;
                try {
                    ((do0) ((qp2) this.p.c)).shutdown();
                } catch (IOException unused) {
                }
                this.n.c(this, this.r);
                this.p = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.sl1
    public final boolean l0() {
        mm1 mm1Var = this.p;
        pl1 pl1Var = mm1Var == null ? null : (qp2) mm1Var.c;
        if (pl1Var != null) {
            return ((op3) pl1Var).l0();
        }
        return true;
    }

    @Override // defpackage.t92
    public final void m0(Object obj) {
        mm1 mm1Var = this.p;
        if (mm1Var == null) {
            throw new je0();
        }
        mm1Var.g = obj;
    }

    @Override // defpackage.sl1
    public final void n(int i) {
        ((op3) b()).n(i);
    }

    @Override // defpackage.he0
    public final void r() {
        synchronized (this) {
            try {
                if (this.p == null) {
                    return;
                }
                this.n.c(this, this.r);
                this.p = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.sl1
    public final void shutdown() {
        mm1 mm1Var = this.p;
        if (mm1Var != null) {
            qp2 qp2Var = (qp2) mm1Var.c;
            mm1Var.i.g();
            ((do0) qp2Var).shutdown();
        }
    }

    @Override // defpackage.pl1
    public final boolean v(int i) {
        return ((op3) b()).v(i);
    }

    @Override // defpackage.t92
    public final void w(ym1 ym1Var, ul1 ul1Var, km1 km1Var) {
        qp2 qp2Var;
        w80.L(ym1Var, "Route");
        w80.L(km1Var, "HTTP parameters");
        synchronized (this) {
            if (this.p == null) {
                throw new je0();
            }
            mt1.O(this.p.i, "Route tracker");
            mt1.n("Connection already open", !r0.p);
            qp2Var = (qp2) this.p.c;
        }
        em1 em1VarE = ym1Var.e();
        ((eo0) this.o).a(qp2Var, em1VarE != null ? em1VarE : ym1Var.n, ym1Var.o, ul1Var, km1Var);
        synchronized (this) {
            try {
                if (this.p == null) {
                    throw new InterruptedIOException();
                }
                ya3 ya3Var = this.p.i;
                if (em1VarE == null) {
                    boolean z = ((do0) qp2Var).B;
                    mt1.n("Already connected", !ya3Var.p);
                    ya3Var.p = true;
                    ya3Var.t = z;
                } else {
                    boolean z2 = ((do0) qp2Var).B;
                    mt1.n("Already connected", !ya3Var.p);
                    ya3Var.p = true;
                    ya3Var.q = new em1[]{em1VarE};
                    ya3Var.t = z2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.pl1
    public final void x(om1 om1Var) {
        ((do0) b()).x(om1Var);
    }
}
