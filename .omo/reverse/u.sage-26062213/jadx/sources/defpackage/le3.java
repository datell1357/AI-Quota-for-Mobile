package defpackage;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class le3 implements ke3 {
    public final np3 n;

    public le3(np3 np3Var) {
        this.n = np3Var;
    }

    @Override // defpackage.ke3
    public final Socket connectSocket(Socket socket, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, km1 km1Var) {
        InetAddress address;
        int port;
        String hostName = inetSocketAddress.getHostName();
        int port2 = inetSocketAddress.getPort();
        if (inetSocketAddress2 != null) {
            address = inetSocketAddress2.getAddress();
            port = inetSocketAddress2.getPort();
        } else {
            address = null;
            port = 0;
        }
        return this.n.connectSocket(socket, hostName, port2, address, port, km1Var);
    }

    @Override // defpackage.ke3
    public final Socket createSocket(km1 km1Var) {
        return this.n.createSocket();
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        boolean z = obj instanceof le3;
        np3 np3Var = this.n;
        return z ? np3Var.equals(((le3) obj).n) : np3Var.equals(obj);
    }

    public final int hashCode() {
        return this.n.hashCode();
    }

    @Override // defpackage.ke3
    public final boolean isSecure(Socket socket) {
        return this.n.isSecure(socket);
    }
}
