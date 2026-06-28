package defpackage;

import java.net.InetSocketAddress;
import java.net.Socket;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface le0 {
    Socket connectSocket(int i, Socket socket, em1 em1Var, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, ul1 ul1Var);

    Socket createSocket(ul1 ul1Var);
}
