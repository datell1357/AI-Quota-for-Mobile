package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;
import java.util.HashMap;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class do0 extends op3 implements qp2, v92, ul1 {
    public volatile Socket A;
    public boolean B;
    public volatile boolean C;
    public final Log x = LogFactory.getLog(do0.class);
    public final Log y = LogFactory.getLog("org.apache.http.headers");
    public final Log z = LogFactory.getLog("org.apache.http.wire");
    public final HashMap D = new HashMap();

    @Override // defpackage.op3
    public final xj3 A(Socket socket, int i, km1 km1Var) {
        if (i <= 0) {
            i = 8192;
        }
        pp3 pp3Var = new pp3(socket, i, km1Var);
        if (!this.z.isDebugEnabled()) {
            return pp3Var;
        }
        kf4 kf4Var = new kf4(this.z);
        String strName = (String) km1Var.c("http.protocol.element-charset");
        if (strName == null) {
            strName = vi1.b.name();
        }
        return new qd1(pp3Var, kf4Var, strName);
    }

    @Override // defpackage.op3
    public final zj3 B(Socket socket, int i, km1 km1Var) throws IOException {
        if (i <= 0) {
            i = 8192;
        }
        qp3 qp3Var = new qp3();
        w80.L(socket, "Socket");
        if (i < 0) {
            i = socket.getSendBufferSize();
        }
        if (i < 1024) {
            i = 1024;
        }
        OutputStream outputStream = socket.getOutputStream();
        w80.L(outputStream, "Input stream");
        w80.J(i, "Buffer size");
        w80.L(km1Var, "HTTP parameters");
        qp3Var.n = outputStream;
        qp3Var.o = new uz(i);
        String str = (String) km1Var.c("http.protocol.element-charset");
        Charset charsetForName = str != null ? Charset.forName(str) : uf0.b;
        qp3Var.p = charsetForName;
        qp3Var.q = charsetForName.equals(uf0.b);
        qp3Var.v = null;
        qp3Var.r = ((f1) km1Var).e(512, "http.connection.min-chunk-limit");
        qp3Var.s = new qz0(7);
        CodingErrorAction codingErrorAction = (CodingErrorAction) km1Var.c("http.malformed.input.action");
        if (codingErrorAction == null) {
            codingErrorAction = CodingErrorAction.REPORT;
        }
        qp3Var.t = codingErrorAction;
        CodingErrorAction codingErrorAction2 = (CodingErrorAction) km1Var.c("http.unmappable.input.action");
        if (codingErrorAction2 == null) {
            codingErrorAction2 = CodingErrorAction.REPORT;
        }
        qp3Var.f281u = codingErrorAction2;
        if (!this.z.isDebugEnabled()) {
            return qp3Var;
        }
        kf4 kf4Var = new kf4(this.z);
        String strName = (String) km1Var.c("http.protocol.element-charset");
        if (strName == null) {
            strName = vi1.b.name();
        }
        return new eh(qp3Var, kf4Var, strName);
    }

    public final void K(Socket socket, em1 em1Var, boolean z, km1 km1Var) {
        j();
        w80.L(em1Var, "Target host");
        w80.L(km1Var, "Parameters");
        if (socket != null) {
            this.A = socket;
            r(socket, km1Var);
        }
        this.B = z;
    }

    @Override // defpackage.pl1
    public final vm1 M() {
        j();
        vm1 vm1Var = (vm1) this.s.a();
        if (vm1Var.b().o >= 200) {
            this.f247u.getClass();
        }
        if (this.x.isDebugEnabled()) {
            this.x.debug("Receiving response: " + vm1Var.b());
        }
        if (this.y.isDebugEnabled()) {
            this.y.debug("<< ".concat(vm1Var.b().toString()));
            for (gj1 gj1Var : vm1Var.getAllHeaders()) {
                this.y.debug("<< " + gj1Var.toString());
            }
        }
        return vm1Var;
    }

    @Override // defpackage.v92
    public final void S(Socket socket) {
        r(socket, new xu());
    }

    @Override // defpackage.ul1
    public final Object b(String str) {
        return this.D.get(str);
    }

    @Override // defpackage.v92
    public final SSLSession b0() {
        if (this.A instanceof SSLSocket) {
            return ((SSLSocket) this.A).getSession();
        }
        return null;
    }

    @Override // defpackage.op3, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            super.close();
            if (this.x.isDebugEnabled()) {
                this.x.debug("Connection " + this + " closed");
            }
        } catch (IOException e) {
            this.x.debug("I/O error closing connection", e);
        }
    }

    @Override // defpackage.v92
    public final Socket f() {
        return this.A;
    }

    @Override // defpackage.sl1
    public final void shutdown() {
        this.C = true;
        try {
            this.v = false;
            Socket socket = this.w;
            if (socket != null) {
                socket.close();
            }
            if (this.x.isDebugEnabled()) {
                this.x.debug("Connection " + this + " shut down");
            }
            Socket socket2 = this.A;
            if (socket2 != null) {
                socket2.close();
            }
        } catch (IOException e) {
            this.x.debug("I/O error shutting down connection", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.pl1
    public final void x(om1 om1Var) {
        if (this.x.isDebugEnabled()) {
            this.x.debug("Sending request: " + om1Var.getRequestLine());
        }
        j();
        this.t.h((e1) om1Var);
        this.f247u.getClass();
        if (this.y.isDebugEnabled()) {
            this.y.debug(">> ".concat(om1Var.getRequestLine().toString()));
            for (gj1 gj1Var : om1Var.getAllHeaders()) {
                this.y.debug(">> " + gj1Var.toString());
            }
        }
    }

    @Override // defpackage.ul1
    public final void z(Object obj, String str) {
        this.D.put(str, obj);
    }
}
