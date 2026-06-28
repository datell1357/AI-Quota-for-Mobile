package defpackage;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gv implements t92, ul1 {
    public final g60 n;
    public volatile qp2 o;
    public volatile boolean p = false;
    public volatile boolean q = false;
    public volatile long r = Long.MAX_VALUE;
    public volatile fv s;

    public gv(g60 g60Var, qp2 qp2Var) {
        this.n = g60Var;
        this.o = qp2Var;
    }

    public final void A(fv fvVar) {
        if (this.q || fvVar == null) {
            throw new je0();
        }
    }

    public final void B(qp2 qp2Var) {
        if (this.q || qp2Var == null) {
            throw new je0();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.pl1
    public final void C(vm1 vm1Var) throws e03 {
        qp2 qp2Var = this.o;
        B(qp2Var);
        this.p = false;
        ((op3) qp2Var).C(vm1Var);
    }

    @Override // defpackage.t92
    public final void D(km1 km1Var) {
        fv fvVar = this.s;
        A(fvVar);
        w80.L(km1Var, "HTTP parameters");
        mt1.O(fvVar.e, "Route tracker");
        mt1.n("Connection not open", fvVar.e.p);
        mt1.n("Connection is already tunnelled", !fvVar.e.c());
        fvVar.b.K(null, fvVar.e.n, false, km1Var);
        ya3 ya3Var = fvVar.e;
        mt1.n("No tunnel unless connected", ya3Var.p);
        mt1.O(ya3Var.q, "No tunnel without proxy");
        ya3Var.r = ta3.o;
        ya3Var.t = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.gm1
    public final int E() {
        qp2 qp2Var = this.o;
        B(qp2Var);
        return ((op3) qp2Var).E();
    }

    public final void F() {
        synchronized (this) {
            this.s = null;
            synchronized (this) {
                this.o = null;
                this.r = Long.MAX_VALUE;
            }
        }
    }

    @Override // defpackage.pl1
    public final vm1 M() {
        qp2 qp2Var = this.o;
        B(qp2Var);
        this.p = false;
        return ((do0) qp2Var).M();
    }

    @Override // defpackage.t92
    public final void O() {
        this.p = true;
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.pl1
    public final void U(zl1 zl1Var) throws e03, IOException {
        qp2 qp2Var = this.o;
        B(qp2Var);
        this.p = false;
        ((op3) qp2Var).U(zl1Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.gm1
    public final InetAddress X() {
        qp2 qp2Var = this.o;
        B(qp2Var);
        return ((op3) qp2Var).X();
    }

    @Override // defpackage.ul1
    public final Object b(String str) {
        qp2 qp2Var = this.o;
        B(qp2Var);
        if (qp2Var instanceof ul1) {
            return ((ul1) qp2Var).b(str);
        }
        return null;
    }

    @Override // defpackage.v92
    public final SSLSession b0() {
        qp2 qp2Var = this.o;
        B(qp2Var);
        if (!isOpen()) {
            return null;
        }
        Socket socket = ((do0) qp2Var).A;
        if (socket instanceof SSLSocket) {
            return ((SSLSocket) socket).getSession();
        }
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        fv fvVar = this.s;
        if (fvVar != null) {
            fvVar.e = null;
            fvVar.d = null;
        }
        qp2 qp2Var = this.o;
        if (qp2Var != null) {
            ((do0) qp2Var).close();
        }
    }

    @Override // defpackage.v92
    public final Socket f() {
        qp2 qp2Var = this.o;
        B(qp2Var);
        if (isOpen()) {
            return ((do0) qp2Var).A;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.pl1
    public final void flush() {
        qp2 qp2Var = this.o;
        B(qp2Var);
        ((op3) qp2Var).flush();
    }

    @Override // defpackage.t92
    public final void g0() {
        this.p = false;
    }

    @Override // defpackage.t92
    public final void h0(ul1 ul1Var, km1 km1Var) {
        fv fvVar = this.s;
        A(fvVar);
        w80.L(km1Var, "HTTP parameters");
        mt1.O(fvVar.e, "Route tracker");
        mt1.n("Connection not open", fvVar.e.p);
        mt1.n("Protocol layering without a tunnel not supported", fvVar.e.c());
        mt1.n("Multiple protocol layering not supported", !fvVar.e.f());
        ((eo0) fvVar.a).c(fvVar.b, fvVar.e.n, ul1Var, km1Var);
        ya3 ya3Var = fvVar.e;
        boolean z = fvVar.b.B;
        mt1.n("No layered protocol unless connected", ya3Var.p);
        ya3Var.s = sa3.o;
        ya3Var.t = z;
    }

    @Override // defpackage.t92
    public final ym1 i() {
        fv fvVar = this.s;
        A(fvVar);
        if (fvVar.e == null) {
            return null;
        }
        return fvVar.e.h();
    }

    @Override // defpackage.sl1
    public final boolean isOpen() {
        pl1 pl1Var = this.o;
        if (pl1Var == null) {
            return false;
        }
        return ((op3) pl1Var).v;
    }

    @Override // defpackage.he0
    public final synchronized void j() {
        if (this.q) {
            return;
        }
        this.q = true;
        this.p = false;
        try {
            shutdown();
        } catch (IOException unused) {
        }
        this.n.c(this, this.r);
    }

    @Override // defpackage.sl1
    public final boolean l0() {
        pl1 pl1Var;
        if (this.q || (pl1Var = this.o) == null) {
            return true;
        }
        return ((op3) pl1Var).l0();
    }

    @Override // defpackage.t92
    public final void m0(Object obj) {
        fv fvVar = this.s;
        A(fvVar);
        fvVar.d = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.sl1
    public final void n(int i) {
        qp2 qp2Var = this.o;
        B(qp2Var);
        ((op3) qp2Var).n(i);
    }

    @Override // defpackage.he0
    public final synchronized void r() {
        if (this.q) {
            return;
        }
        this.q = true;
        this.n.c(this, this.r);
    }

    @Override // defpackage.sl1
    public final void shutdown() {
        fv fvVar = this.s;
        if (fvVar != null) {
            fvVar.e = null;
            fvVar.d = null;
        }
        qp2 qp2Var = this.o;
        if (qp2Var != null) {
            ((do0) qp2Var).shutdown();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.pl1
    public final boolean v(int i) {
        qp2 qp2Var = this.o;
        B(qp2Var);
        return ((op3) qp2Var).v(i);
    }

    @Override // defpackage.t92
    public final void w(ym1 ym1Var, ul1 ul1Var, km1 km1Var) throws InterruptedIOException {
        fv fvVar = this.s;
        A(fvVar);
        w80.L(ym1Var, "Route");
        w80.L(km1Var, "HTTP parameters");
        if (fvVar.e != null) {
            mt1.n("Connection already open", !fvVar.e.p);
        }
        fvVar.e = new ya3(ym1Var);
        em1 em1VarE = ym1Var.e();
        ((eo0) fvVar.a).a(fvVar.b, em1VarE != null ? em1VarE : ym1Var.n, ym1Var.o, ul1Var, km1Var);
        ya3 ya3Var = fvVar.e;
        if (ya3Var == null) {
            throw new InterruptedIOException("Request aborted");
        }
        do0 do0Var = fvVar.b;
        if (em1VarE == null) {
            boolean z = do0Var.B;
            mt1.n("Already connected", !ya3Var.p);
            ya3Var.p = true;
            ya3Var.t = z;
            return;
        }
        boolean z2 = do0Var.B;
        mt1.n("Already connected", !ya3Var.p);
        ya3Var.p = true;
        ya3Var.q = new em1[]{em1VarE};
        ya3Var.t = z2;
    }

    @Override // defpackage.pl1
    public final void x(om1 om1Var) {
        qp2 qp2Var = this.o;
        B(qp2Var);
        this.p = false;
        ((do0) qp2Var).x(om1Var);
    }

    @Override // defpackage.ul1
    public final void z(Object obj, String str) {
        qp2 qp2Var = this.o;
        B(qp2Var);
        if (qp2Var instanceof ul1) {
            ((ul1) qp2Var).z(obj, str);
        }
    }
}
