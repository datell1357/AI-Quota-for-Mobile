package defpackage;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSession;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l00 implements v92, ul1 {
    public volatile k00 n;

    public static l00 j(l00 l00Var) {
        if (l00.class.isInstance(l00Var)) {
            return (l00) l00.class.cast(l00Var);
        }
        q73.k(l00.class, "Unexpected connection proxy class: ");
        return null;
    }

    @Override // defpackage.pl1
    public final void C(vm1 vm1Var) {
        r().C(vm1Var);
    }

    @Override // defpackage.gm1
    public final int E() {
        return r().E();
    }

    @Override // defpackage.pl1
    public final vm1 M() {
        return r().M();
    }

    @Override // defpackage.v92
    public final void S(Socket socket) {
        r().S(socket);
    }

    @Override // defpackage.pl1
    public final void U(zl1 zl1Var) {
        r().U(zl1Var);
    }

    @Override // defpackage.gm1
    public final InetAddress X() {
        return r().X();
    }

    @Override // defpackage.ul1
    public final Object b(String str) {
        v92 v92VarR = r();
        if (v92VarR instanceof ul1) {
            return ((ul1) v92VarR).b(str);
        }
        return null;
    }

    @Override // defpackage.v92
    public final SSLSession b0() {
        return r().b0();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        k00 k00Var = this.n;
        if (k00Var != null) {
            ((pl1) k00Var.c).close();
        }
    }

    @Override // defpackage.v92
    public final Socket f() {
        return r().f();
    }

    @Override // defpackage.pl1
    public final void flush() {
        r().flush();
    }

    @Override // defpackage.sl1
    public final boolean isOpen() {
        k00 k00Var = this.n;
        return (k00Var == null || k00Var.b()) ? false : true;
    }

    @Override // defpackage.sl1
    public final boolean l0() {
        k00 k00Var = this.n;
        v92 v92Var = k00Var == null ? null : (v92) k00Var.c;
        if (v92Var != null) {
            return v92Var.l0();
        }
        return true;
    }

    @Override // defpackage.sl1
    public final void n(int i) {
        r().n(i);
    }

    public final v92 r() {
        k00 k00Var = this.n;
        v92 v92Var = k00Var == null ? null : (v92) k00Var.c;
        if (v92Var != null) {
            return v92Var;
        }
        throw new je0();
    }

    @Override // defpackage.sl1
    public final void shutdown() {
        k00 k00Var = this.n;
        if (k00Var != null) {
            ((pl1) k00Var.c).shutdown();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CPoolProxy{");
        k00 k00Var = this.n;
        v92 v92Var = k00Var == null ? null : (v92) k00Var.c;
        if (v92Var != null) {
            sb.append(v92Var);
        } else {
            sb.append("detached");
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // defpackage.pl1
    public final boolean v(int i) {
        return r().v(i);
    }

    @Override // defpackage.pl1
    public final void x(om1 om1Var) {
        r().x(om1Var);
    }

    @Override // defpackage.ul1
    public final void z(Object obj, String str) {
        v92 v92VarR = r();
        if (v92VarR instanceof ul1) {
            ((ul1) v92VarR).z(obj, str);
        }
    }
}
