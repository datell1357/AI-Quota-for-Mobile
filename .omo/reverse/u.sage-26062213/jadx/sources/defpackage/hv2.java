package defpackage;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hv2 implements le0 {
    public static final hv2 n = new hv2();

    @Override // defpackage.le0
    public final Socket connectSocket(int i, Socket socket, em1 em1Var, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, ul1 ul1Var) throws IOException {
        if (inetSocketAddress2 != null) {
            socket.bind(inetSocketAddress2);
        }
        try {
            socket.connect(inetSocketAddress, i);
            return socket;
        } catch (IOException e) {
            try {
                socket.close();
            } catch (IOException unused) {
            }
            throw e;
        }
    }

    @Override // defpackage.le0
    public final Socket createSocket(ul1 ul1Var) {
        return new Socket();
    }
}
