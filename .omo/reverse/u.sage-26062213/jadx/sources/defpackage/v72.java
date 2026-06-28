package defpackage;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketException;
import org.apache.commons.logging.Log;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v72 extends rp0 {
    public final kf4 A;
    public final Log y;
    public final Log z;

    public v72(String str, Log log, Log log2, Log log3, mj1 mj1Var, mj1 mj1Var2, w13 w13Var, jm1 jm1Var) {
        super(str, mj1Var, mj1Var2, w13Var, jm1Var);
        this.y = log;
        this.z = log2;
        this.A = new kf4(log3, str);
    }

    @Override // defpackage.rp0
    public final void A(om1 om1Var) {
        if (this.z.isDebugEnabled()) {
            Log log = this.z;
            StringBuilder sb = new StringBuilder();
            String str = this.v;
            sb.append(str);
            sb.append(" >> ");
            sb.append(om1Var.getRequestLine().toString());
            log.debug(sb.toString());
            for (gj1 gj1Var : om1Var.getAllHeaders()) {
                this.z.debug(str + " >> " + gj1Var.toString());
            }
        }
    }

    @Override // defpackage.rp0
    public final void B(vm1 vm1Var) {
        if (vm1Var == null || !this.z.isDebugEnabled()) {
            return;
        }
        Log log = this.z;
        StringBuilder sb = new StringBuilder();
        String str = this.v;
        sb.append(str);
        sb.append(" << ");
        sb.append(vm1Var.b().toString());
        log.debug(sb.toString());
        for (gj1 gj1Var : vm1Var.getAllHeaders()) {
            this.z.debug(str + " << " + gj1Var.toString());
        }
    }

    @Override // defpackage.rp0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (isOpen()) {
            if (this.y.isDebugEnabled()) {
                this.y.debug(this.v + ": Close connection");
            }
            super.close();
        }
    }

    @Override // defpackage.sl1
    public final void n(int i) {
        if (this.y.isDebugEnabled()) {
            this.y.debug(this.v + ": set socket timeout to " + i);
        }
        Socket socket = (Socket) this.s.get();
        if (socket != null) {
            try {
                socket.setSoTimeout(i);
            } catch (SocketException unused) {
            }
        }
    }

    @Override // defpackage.sl1
    public final void shutdown() throws IOException {
        if (this.y.isDebugEnabled()) {
            this.y.debug(this.v + ": Shutdown connection");
        }
        this.x = true;
        Socket socket = (Socket) this.s.getAndSet(null);
        if (socket != null) {
            try {
                socket.setSoLinger(true, 0);
            } catch (IOException unused) {
            } finally {
                socket.close();
            }
        }
    }
}
