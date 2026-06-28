package defpackage;

import java.net.InetAddress;
import java.net.Socket;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface np3 {
    Socket connectSocket(Socket socket, String str, int i, InetAddress inetAddress, int i2, km1 km1Var);

    Socket createSocket();

    boolean isSecure(Socket socket);
}
