package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class op3 implements gm1, pl1 {
    public volatile boolean v;
    public xj3 p = null;
    public zj3 q = null;
    public x11 r = null;
    public gp0 s = null;
    public dp0 t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public qz0 f247u = null;
    public final dh1 n = new dh1(new mj1(29));
    public final wu4 o = new wu4(27, new mj1(20));
    public volatile Socket w = null;

    public static void F(StringBuilder sb, SocketAddress socketAddress) {
        if (!(socketAddress instanceof InetSocketAddress)) {
            sb.append(socketAddress);
            return;
        }
        InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
        sb.append(inetSocketAddress.getAddress() != null ? inetSocketAddress.getAddress().getHostAddress() : inetSocketAddress.getAddress());
        sb.append(':');
        sb.append(inetSocketAddress.getPort());
    }

    public abstract xj3 A(Socket socket, int i, km1 km1Var);

    public abstract zj3 B(Socket socket, int i, km1 km1Var);

    @Override // defpackage.pl1
    public final void C(vm1 vm1Var) throws e03 {
        w80.L(vm1Var, "HTTP response");
        j();
        xj3 xj3Var = this.p;
        wu4 wu4Var = this.o;
        wu4Var.getClass();
        w80.L(xj3Var, "Session input buffer");
        wu wuVar = new wu();
        long jO = ((mj1) wu4Var.o).o(vm1Var);
        if (jO == -2) {
            wuVar.setChunked(true);
            wuVar.o = -1L;
            wuVar.n = new b50(xj3Var);
        } else if (jO == -1) {
            wuVar.setChunked(false);
            wuVar.o = -1L;
            wuVar.n = new tn1(xj3Var);
        } else {
            wuVar.setChunked(false);
            wuVar.o = jO;
            wuVar.n = new gg0(xj3Var, jO);
        }
        gj1 firstHeader = vm1Var.getFirstHeader("Content-Type");
        if (firstHeader != null) {
            wuVar.setContentType(firstHeader);
        }
        gj1 firstHeader2 = vm1Var.getFirstHeader("Content-Encoding");
        if (firstHeader2 != null) {
            wuVar.setContentEncoding(firstHeader2);
        }
        vm1Var.setEntity(wuVar);
    }

    @Override // defpackage.gm1
    public final int E() {
        if (this.w != null) {
            return this.w.getPort();
        }
        return -1;
    }

    @Override // defpackage.pl1
    public final void U(zl1 zl1Var) throws e03, IOException {
        j();
        if (zl1Var.getEntity() == null) {
            return;
        }
        zj3 zj3Var = this.q;
        xl1 entity = zl1Var.getEntity();
        dh1 dh1Var = this.n;
        dh1Var.getClass();
        w80.L(zj3Var, "Session output buffer");
        w80.L(entity, "HTTP entity");
        long jO = ((mj1) dh1Var.n).o(zl1Var);
        OutputStream c50Var = jO == -2 ? new c50(zj3Var) : jO == -1 ? new un1(zj3Var) : new hg0(zj3Var, jO);
        entity.writeTo(c50Var);
        c50Var.close();
    }

    @Override // defpackage.gm1
    public final InetAddress X() {
        if (this.w != null) {
            return this.w.getInetAddress();
        }
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.v) {
            this.v = false;
            Socket socket = this.w;
            try {
                this.q.flush();
                try {
                    try {
                        socket.shutdownOutput();
                    } catch (IOException unused) {
                    }
                    socket.shutdownInput();
                } catch (IOException | UnsupportedOperationException unused2) {
                }
            } finally {
                socket.close();
            }
        }
    }

    @Override // defpackage.pl1
    public final void flush() {
        j();
        this.q.flush();
    }

    @Override // defpackage.sl1
    public final boolean isOpen() {
        return this.v;
    }

    public final void j() {
        mt1.n("Connection is not open", this.v);
    }

    @Override // defpackage.sl1
    public final boolean l0() {
        if (this.v) {
            x11 x11Var = this.r;
            if (x11Var != null && x11Var.e()) {
                return true;
            }
            try {
                this.p.h(1);
                x11 x11Var2 = this.r;
                if (x11Var2 != null) {
                    if (x11Var2.e()) {
                        return true;
                    }
                }
                return false;
            } catch (SocketTimeoutException unused) {
                return false;
            } catch (IOException unused2) {
            }
        }
        return true;
    }

    @Override // defpackage.sl1
    public final void n(int i) {
        j();
        if (this.w != null) {
            try {
                this.w.setSoTimeout(i);
            } catch (SocketException unused) {
            }
        }
    }

    public final void r(Socket socket, km1 km1Var) {
        w80.L(socket, "Socket");
        w80.L(km1Var, "HTTP parameters");
        this.w = socket;
        int iE = ((f1) km1Var).e(-1, "http.socket.buffer-size");
        xj3 xj3VarA = A(socket, iE, km1Var);
        zj3 zj3VarB = B(socket, iE, km1Var);
        this.p = xj3VarA;
        this.q = zj3VarB;
        this.r = (x11) xj3VarA;
        this.s = new gp0(xj3VarA, ep0.b, km1Var);
        this.t = new dp0(zj3VarB);
        xj3VarA.b();
        zj3VarB.b();
        this.f247u = new qz0(6);
        this.v = true;
    }

    public final String toString() {
        if (this.w == null) {
            return super.toString();
        }
        StringBuilder sb = new StringBuilder();
        SocketAddress remoteSocketAddress = this.w.getRemoteSocketAddress();
        SocketAddress localSocketAddress = this.w.getLocalSocketAddress();
        if (remoteSocketAddress != null && localSocketAddress != null) {
            F(sb, localSocketAddress);
            sb.append("<->");
            F(sb, remoteSocketAddress);
        }
        return sb.toString();
    }

    @Override // defpackage.pl1
    public final boolean v(int i) {
        j();
        try {
            return this.p.h(i);
        } catch (SocketTimeoutException unused) {
            return false;
        }
    }
}
