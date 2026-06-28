package defpackage;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.SocketFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class rb3 implements dy1, ge3, ke3, np3 {
    public static final String SSL = "SSL";
    public static final String SSLV2 = "SSLv2";
    public static final String TLS = "TLS";
    private volatile th4 hostnameVerifier;
    private final hk1 nameResolver;
    private final SSLSocketFactory socketfactory;
    private final String[] supportedCipherSuites;
    private final String[] supportedProtocols;
    public static final th4 ALLOW_ALL_HOSTNAME_VERIFIER = new e8();
    public static final th4 BROWSER_COMPATIBLE_HOSTNAME_VERIFIER = new oy();
    public static final th4 STRICT_HOSTNAME_VERIFIER = new vs3();

    public rb3(SSLSocketFactory sSLSocketFactory, String[] strArr, String[] strArr2, th4 th4Var) {
        w80.L(sSLSocketFactory, "SSL socket factory");
        this.socketfactory = sSLSocketFactory;
        this.supportedProtocols = strArr;
        this.supportedCipherSuites = strArr2;
        this.hostnameVerifier = th4Var == null ? BROWSER_COMPATIBLE_HOSTNAME_VERIFIER : th4Var;
    }

    public static rb3 getSocketFactory() {
        try {
            SSLContext sSLContext = SSLContext.getInstance(TLS);
            sSLContext.init(null, null, null);
            return new rb3(sSLContext, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
        } catch (KeyManagementException e) {
            throw new x60(e.getMessage(), e);
        } catch (NoSuchAlgorithmException e2) {
            throw new x60(e2.getMessage(), e2);
        }
    }

    public static rb3 getSystemSocketFactory() {
        SSLSocketFactory sSLSocketFactory = (SSLSocketFactory) SSLSocketFactory.getDefault();
        String property = System.getProperty("https.protocols");
        String[] strArrSplit = ht4.v(property) ? null : property.split(" *, *");
        String property2 = System.getProperty("https.cipherSuites");
        return new rb3(sSLSocketFactory, strArrSplit, ht4.v(property2) ? null : property2.split(" *, *"), BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    @Override // defpackage.le0
    public Socket connectSocket(int i, Socket socket, em1 em1Var, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, ul1 ul1Var) throws IOException {
        w80.L(em1Var, "HTTP host");
        String str = em1Var.n;
        w80.L(inetSocketAddress, "Remote address");
        if (socket == null) {
            socket = createSocket(ul1Var);
        }
        if (inetSocketAddress2 != null) {
            socket.bind(inetSocketAddress2);
        }
        try {
            socket.connect(inetSocketAddress, i);
            if (!(socket instanceof SSLSocket)) {
                return createLayeredSocket(socket, str, inetSocketAddress.getPort(), ul1Var);
            }
            SSLSocket sSLSocket = (SSLSocket) socket;
            sSLSocket.startHandshake();
            try {
                ((k2) this.hostnameVerifier).d(str, sSLSocket);
                return socket;
            } catch (IOException e) {
                try {
                    sSLSocket.close();
                } catch (Exception unused) {
                }
                throw e;
            }
        } catch (SocketTimeoutException unused2) {
            throw new wd0("Connect to " + inetSocketAddress + " timed out");
        }
    }

    @Override // defpackage.dy1
    public Socket createLayeredSocket(Socket socket, String str, int i, ul1 ul1Var) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) this.socketfactory.createSocket(socket, str, i, true);
        String[] strArr = this.supportedProtocols;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = this.supportedCipherSuites;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
        prepareSocket(sSLSocket);
        sSLSocket.startHandshake();
        try {
            ((k2) this.hostnameVerifier).d(str, sSLSocket);
            return sSLSocket;
        } catch (IOException e) {
            try {
                sSLSocket.close();
            } catch (Exception unused) {
            }
            throw e;
        }
    }

    @Override // defpackage.le0
    public Socket createSocket(ul1 ul1Var) {
        return SocketFactory.getDefault().createSocket();
    }

    public th4 getHostnameVerifier() {
        return this.hostnameVerifier;
    }

    @Override // defpackage.ke3
    public boolean isSecure(Socket socket) {
        w80.L(socket, "Socket");
        mt1.n("Socket not created by this factory", socket instanceof SSLSocket);
        mt1.n("Socket is closed", !socket.isClosed());
        return true;
    }

    public void setHostnameVerifier(th4 th4Var) {
        w80.L(th4Var, "Hostname verifier");
        this.hostnameVerifier = th4Var;
    }

    public Socket createSocket() {
        return createSocket((ul1) null);
    }

    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        return createLayeredSocket(socket, str, i, true);
    }

    @Override // defpackage.ke3
    public Socket createSocket(km1 km1Var) {
        return createSocket((ul1) null);
    }

    public rb3(SSLContext sSLContext, th4 th4Var) {
        this(sSLContext.getSocketFactory(), null, null, th4Var);
    }

    public void prepareSocket(SSLSocket sSLSocket) {
    }

    public Socket createLayeredSocket(Socket socket, String str, int i, boolean z) {
        return createLayeredSocket(socket, str, i, (ul1) null);
    }

    @Override // defpackage.ge3
    public Socket createLayeredSocket(Socket socket, String str, int i, km1 km1Var) {
        return createLayeredSocket(socket, str, i, (ul1) null);
    }

    @Override // defpackage.np3
    public Socket connectSocket(Socket socket, String str, int i, InetAddress inetAddress, int i2, km1 km1Var) throws UnknownHostException {
        InetSocketAddress inetSocketAddress;
        InetAddress byName = InetAddress.getByName(str);
        if (inetAddress != null || i2 > 0) {
            if (i2 <= 0) {
                i2 = 0;
            }
            inetSocketAddress = new InetSocketAddress(inetAddress, i2);
        } else {
            inetSocketAddress = null;
        }
        return connectSocket(socket, new hm1(new em1(str, i, null), byName, i), inetSocketAddress, km1Var);
    }

    @Override // defpackage.ke3
    public Socket connectSocket(Socket socket, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, km1 km1Var) throws SocketException {
        em1 em1Var;
        w80.L(inetSocketAddress, "Remote address");
        w80.L(km1Var, "HTTP parameters");
        if (inetSocketAddress instanceof hm1) {
            em1Var = ((hm1) inetSocketAddress).n;
        } else {
            em1Var = new em1(inetSocketAddress.getHostName(), inetSocketAddress.getPort(), "https");
        }
        em1 em1Var2 = em1Var;
        int iH = mt1.H(km1Var);
        int iE = ((f1) km1Var).e(0, "http.connection.timeout");
        socket.setSoTimeout(iH);
        return connectSocket(iE, socket, em1Var2, inetSocketAddress, inetSocketAddress2, (ul1) null);
    }
}
