package defpackage;

import java.net.InetSocketAddress;
import java.net.Socket;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class he3 implements ge3 {
    public final rb3 n;

    public he3(rb3 rb3Var) {
        this.n = rb3Var;
    }

    @Override // defpackage.ke3
    public final Socket connectSocket(Socket socket, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, km1 km1Var) {
        return this.n.connectSocket(socket, inetSocketAddress, inetSocketAddress2, km1Var);
    }

    @Override // defpackage.ge3
    public final Socket createLayeredSocket(Socket socket, String str, int i, km1 km1Var) {
        return this.n.createLayeredSocket(socket, str, i, true);
    }

    @Override // defpackage.ke3
    public final Socket createSocket(km1 km1Var) {
        return this.n.createSocket(km1Var);
    }

    @Override // defpackage.ke3
    public final boolean isSecure(Socket socket) {
        return this.n.isSecure(socket);
    }
}
