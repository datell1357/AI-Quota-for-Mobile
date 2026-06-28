package defpackage;

import java.net.Socket;
import java.net.SocketException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class eo0 implements h60 {
    public final je3 b;
    public final Log a = LogFactory.getLog(eo0.class);
    public final qv3 c = new qv3(0);

    public eo0(je3 je3Var) {
        this.b = je3Var;
    }

    public static void b(Socket socket, km1 km1Var) throws SocketException {
        w80.L(km1Var, "HTTP parameters");
        f1 f1Var = (f1) km1Var;
        socket.setTcpNoDelay(f1Var.d("http.tcp.nodelay", true));
        socket.setSoTimeout(mt1.H(km1Var));
        int iE = f1Var.e(-1, "http.socket.linger");
        if (iE >= 0) {
            socket.setSoLinger(iE > 0, iE);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ff A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(defpackage.qp2 r18, defpackage.em1 r19, java.net.InetAddress r20, defpackage.ul1 r21, defpackage.km1 r22) {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.eo0.a(qp2, em1, java.net.InetAddress, ul1, km1):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c(qp2 qp2Var, em1 em1Var, ul1 ul1Var, km1 km1Var) {
        w80.L(qp2Var, "Connection");
        w80.L(em1Var, "Target host");
        w80.L(km1Var, "Parameters");
        mt1.n("Connection must be open", ((op3) qp2Var).v);
        je3 je3Var = (je3) ul1Var.b("http.scheme-registry");
        if (je3Var == null) {
            je3Var = this.b;
        }
        fe3 fe3VarA = je3Var.a(em1Var.q);
        mt1.n("Socket factory must implement SchemeLayeredSocketFactory", fe3VarA.b instanceof ge3);
        ge3 ge3Var = (ge3) fe3VarA.b;
        do0 do0Var = (do0) qp2Var;
        Socket socket = do0Var.A;
        String str = em1Var.n;
        int i = em1Var.p;
        if (i <= 0) {
            i = fe3VarA.c;
        }
        Socket socketCreateLayeredSocket = ge3Var.createLayeredSocket(socket, str, i, km1Var);
        b(socketCreateLayeredSocket, km1Var);
        do0Var.K(socketCreateLayeredSocket, em1Var, ge3Var.isSecure(socketCreateLayeredSocket), km1Var);
    }
}
