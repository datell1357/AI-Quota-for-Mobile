package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class rp0 implements v92, ul1, pl1, gm1 {
    public final yj3 n;
    public final ak3 o;
    public final qz0 p;
    public final mj1 q;
    public final mj1 r;
    public final AtomicReference s;
    public final m1 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final dp0 f300u;
    public final String v;
    public final ConcurrentHashMap w;
    public volatile boolean x;

    public rp0(String str, mj1 mj1Var, mj1 mj1Var2, w13 w13Var, jm1 jm1Var) {
        w80.N(8192, "Buffer size");
        int i = 7;
        qz0 qz0Var = new qz0(i);
        qz0 qz0Var2 = new qz0(i);
        this.n = new yj3(qz0Var, nc2.p);
        this.o = new ak3(qz0Var2);
        this.p = new qz0(6);
        this.q = mj1Var == null ? mj1.X : mj1Var;
        this.r = mj1Var2 == null ? mj1.g0 : mj1Var2;
        this.s = new AtomicReference();
        this.f300u = new dp0(this.o, 0);
        this.t = (jm1Var == null ? hp0.c : jm1Var).a(this.n);
        this.v = str;
        this.w = new ConcurrentHashMap();
    }

    public abstract void A(om1 om1Var);

    public abstract void B(vm1 vm1Var);

    @Override // defpackage.pl1
    public final void C(vm1 vm1Var) throws e03, IOException {
        w80.L(vm1Var, "HTTP response");
        j();
        wu wuVar = new wu();
        long jO = this.q.o(vm1Var);
        yj3 yj3Var = this.n;
        InputStream b50Var = jO == -2 ? new b50(yj3Var) : jO == -1 ? new tn1(yj3Var) : jO == 0 ? e01.n : new gg0(yj3Var, jO);
        if (jO == -2) {
            wuVar.setChunked(true);
            wuVar.o = -1L;
            wuVar.n = b50Var;
        } else if (jO == -1) {
            wuVar.setChunked(false);
            wuVar.o = -1L;
            wuVar.n = b50Var;
        } else {
            wuVar.setChunked(false);
            wuVar.o = jO;
            wuVar.n = b50Var;
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
        Socket socket = (Socket) this.s.get();
        if (socket != null) {
            return socket.getPort();
        }
        return -1;
    }

    @Override // defpackage.pl1
    public final vm1 M() throws IOException {
        j();
        vm1 vm1Var = (vm1) this.t.a();
        B(vm1Var);
        if (vm1Var.b().o >= 200) {
            this.p.getClass();
        }
        return vm1Var;
    }

    @Override // defpackage.v92
    public final void S(Socket socket) throws IOException {
        if (this.x) {
            socket.close();
            throw new InterruptedIOException("Connection already shutdown");
        }
        w80.L(socket, "Socket");
        this.s.set(socket);
        this.n.s = null;
        this.o.q = null;
    }

    @Override // defpackage.pl1
    public final void U(zl1 zl1Var) throws e03, IOException {
        j();
        xl1 entity = zl1Var.getEntity();
        if (entity == null) {
            return;
        }
        long jO = this.r.o(zl1Var);
        ak3 ak3Var = this.o;
        OutputStream c50Var = jO == -2 ? new c50(ak3Var) : jO == -1 ? new un1(ak3Var) : new hg0(ak3Var, jO);
        entity.writeTo(c50Var);
        c50Var.close();
    }

    @Override // defpackage.gm1
    public final InetAddress X() {
        Socket socket = (Socket) this.s.get();
        if (socket != null) {
            return socket.getInetAddress();
        }
        return null;
    }

    @Override // defpackage.ul1
    public final Object b(String str) {
        return this.w.get(str);
    }

    @Override // defpackage.v92
    public final SSLSession b0() {
        Socket socket = (Socket) this.s.get();
        if (socket instanceof SSLSocket) {
            return ((SSLSocket) socket).getSession();
        }
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Socket socket = (Socket) this.s.getAndSet(null);
        if (socket != null) {
            try {
                yj3 yj3Var = this.n;
                yj3Var.t = 0;
                yj3Var.f423u = 0;
                this.o.flush();
            } finally {
                socket.close();
            }
        }
    }

    @Override // defpackage.v92
    public final Socket f() {
        return (Socket) this.s.get();
    }

    @Override // defpackage.pl1
    public final void flush() throws IOException {
        j();
        this.o.flush();
    }

    @Override // defpackage.sl1
    public final boolean isOpen() {
        return this.s.get() != null;
    }

    public final void j() throws IOException {
        Socket socket = (Socket) this.s.get();
        if (socket == null) {
            throw new c70("Connection is closed");
        }
        yj3 yj3Var = this.n;
        if (yj3Var.s == null) {
            InputStream inputStream = socket.getInputStream();
            kf4 kf4Var = ((v72) this).A;
            if (kf4Var.a()) {
                inputStream = new u72(inputStream, kf4Var);
            }
            yj3Var.s = inputStream;
        }
        ak3 ak3Var = this.o;
        if (ak3Var.q != null) {
            return;
        }
        OutputStream outputStream = socket.getOutputStream();
        kf4 kf4Var2 = ((v72) this).A;
        if (kf4Var2.a()) {
            outputStream = new w72(outputStream, kf4Var2);
        }
        ak3Var.q = outputStream;
    }

    @Override // defpackage.sl1
    public final boolean l0() {
        if (!isOpen()) {
            return true;
        }
        try {
            return r(1) < 0;
        } catch (SocketTimeoutException unused) {
            return false;
        } catch (IOException unused2) {
            return true;
        }
    }

    public final int r(int i) throws SocketException {
        Socket socket = (Socket) this.s.get();
        int soTimeout = socket.getSoTimeout();
        try {
            socket.setSoTimeout(i);
            return this.n.a();
        } finally {
            socket.setSoTimeout(soTimeout);
        }
    }

    public final String toString() {
        Socket socket = (Socket) this.s.get();
        if (socket == null) {
            return "[Not bound]";
        }
        StringBuilder sb = new StringBuilder();
        SocketAddress remoteSocketAddress = socket.getRemoteSocketAddress();
        SocketAddress localSocketAddress = socket.getLocalSocketAddress();
        if (remoteSocketAddress != null && localSocketAddress != null) {
            k30.r(sb, localSocketAddress);
            sb.append("<->");
            k30.r(sb, remoteSocketAddress);
        }
        return sb.toString();
    }

    @Override // defpackage.pl1
    public final boolean v(int i) throws IOException {
        j();
        try {
            yj3 yj3Var = this.n;
            if (yj3Var.c()) {
                return true;
            }
            r(i);
            return yj3Var.c();
        } catch (SocketTimeoutException unused) {
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.pl1
    public final void x(om1 om1Var) throws IOException {
        j();
        this.f300u.h((e1) om1Var);
        A(om1Var);
        this.p.getClass();
    }

    @Override // defpackage.ul1
    public final void z(Object obj, String str) {
        this.w.put(str, obj);
    }
}
