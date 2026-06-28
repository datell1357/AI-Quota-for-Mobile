package defpackage;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.security.auth.x500.X500Principal;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qb3 implements dy1 {
    public static final List s;
    public final Log n;
    public final SSLSocketFactory o;
    public final HostnameVerifier p;
    public final String[] q;
    public final String[] r;

    static {
        int i = e8.c;
        int i2 = oy.c;
        int i3 = vs3.c;
        s = Collections.unmodifiableList(Arrays.asList(Pattern.compile("^(TLS|SSL)_(NULL|ECDH_anon|DH_anon|DH_anon_EXPORT|DHE_RSA_EXPORT|DHE_DSS_EXPORT|DSS_EXPORT|DH_DSS_EXPORT|DH_RSA_EXPORT|RSA_EXPORT|KRB5_EXPORT)_(.*)", 2), Pattern.compile("^(TLS|SSL)_(.*)_WITH_(NULL|DES_CBC|DES40_CBC|DES_CBC_40|3DES_EDE_CBC|RC4_128|RC4_40|RC2_CBC_40)_(.*)", 2)));
    }

    public qb3(SSLSocketFactory sSLSocketFactory, String[] strArr, String[] strArr2, zo0 zo0Var) {
        this.n = LogFactory.getLog(qb3.class);
        w80.L(sSLSocketFactory, "SSL socket factory");
        this.o = sSLSocketFactory;
        this.q = strArr;
        this.r = strArr2;
        this.p = zo0Var;
    }

    public final void a(String str, SSLSocket sSLSocket) throws IOException {
        try {
            SSLSession session = sSLSocket.getSession();
            if (session == null) {
                sSLSocket.getInputStream().available();
                session = sSLSocket.getSession();
                if (session == null) {
                    sSLSocket.startHandshake();
                    session = sSLSocket.getSession();
                }
            }
            if (session == null) {
                throw new SSLHandshakeException("SSL session not available");
            }
            if (this.n.isDebugEnabled()) {
                this.n.debug("Secure session established");
                this.n.debug(" negotiated protocol: " + session.getProtocol());
                this.n.debug(" negotiated cipher suite: " + session.getCipherSuite());
                try {
                    X509Certificate x509Certificate = (X509Certificate) session.getPeerCertificates()[0];
                    X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
                    this.n.debug(" peer principal: " + subjectX500Principal.toString());
                    Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
                    if (subjectAlternativeNames != null) {
                        ArrayList arrayList = new ArrayList();
                        for (List<?> list : subjectAlternativeNames) {
                            if (!list.isEmpty()) {
                                arrayList.add((String) list.get(1));
                            }
                        }
                        this.n.debug(" peer alternative names: " + arrayList);
                    }
                    X500Principal issuerX500Principal = x509Certificate.getIssuerX500Principal();
                    this.n.debug(" issuer principal: " + issuerX500Principal.toString());
                    Collection<List<?>> issuerAlternativeNames = x509Certificate.getIssuerAlternativeNames();
                    if (issuerAlternativeNames != null) {
                        ArrayList arrayList2 = new ArrayList();
                        for (List<?> list2 : issuerAlternativeNames) {
                            if (!list2.isEmpty()) {
                                arrayList2.add((String) list2.get(1));
                            }
                        }
                        this.n.debug(" issuer alternative names: " + arrayList2);
                    }
                } catch (Exception unused) {
                }
            }
            if (this.p.verify(str, session)) {
                return;
            }
            throw new SSLPeerUnverifiedException("Certificate for <" + str + "> doesn't match any of the subject alternative names: " + zo0.c((X509Certificate) session.getPeerCertificates()[0]));
        } catch (IOException e) {
            try {
                sSLSocket.close();
            } catch (Exception unused2) {
            }
            throw e;
        }
    }

    @Override // defpackage.le0
    public final Socket connectSocket(int i, Socket socket, em1 em1Var, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, ul1 ul1Var) throws IOException {
        w80.L(em1Var, "HTTP host");
        String str = em1Var.n;
        if (inetSocketAddress2 != null) {
            socket.bind(inetSocketAddress2);
        }
        if (i > 0) {
            try {
                if (socket.getSoTimeout() == 0) {
                    socket.setSoTimeout(i);
                }
            } catch (IOException e) {
                try {
                    socket.close();
                } catch (IOException unused) {
                }
                throw e;
            }
        }
        if (this.n.isDebugEnabled()) {
            this.n.debug("Connecting socket to " + inetSocketAddress + " with timeout " + i);
        }
        socket.connect(inetSocketAddress, i);
        if (!(socket instanceof SSLSocket)) {
            return createLayeredSocket(socket, str, inetSocketAddress.getPort(), ul1Var);
        }
        SSLSocket sSLSocket = (SSLSocket) socket;
        this.n.debug("Starting handshake");
        sSLSocket.startHandshake();
        a(str, sSLSocket);
        return socket;
    }

    @Override // defpackage.dy1
    public final Socket createLayeredSocket(Socket socket, String str, int i, ul1 ul1Var) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) this.o.createSocket(socket, str, i, true);
        String[] strArr = this.q;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        } else {
            String[] enabledProtocols = sSLSocket.getEnabledProtocols();
            ArrayList arrayList = new ArrayList(enabledProtocols.length);
            for (String str2 : enabledProtocols) {
                if (!str2.startsWith(rb3.SSL)) {
                    arrayList.add(str2);
                }
            }
            if (!arrayList.isEmpty()) {
                sSLSocket.setEnabledProtocols((String[]) arrayList.toArray(new String[arrayList.size()]));
            }
        }
        String[] strArr2 = this.r;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        } else {
            String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
            ArrayList arrayList2 = new ArrayList(enabledCipherSuites.length);
            for (String str3 : enabledCipherSuites) {
                Iterator it = s.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        arrayList2.add(str3);
                        break;
                    }
                    if (((Pattern) it.next()).matcher(str3).matches()) {
                        break;
                    }
                }
            }
            if (!arrayList2.isEmpty()) {
                sSLSocket.setEnabledCipherSuites((String[]) arrayList2.toArray(new String[arrayList2.size()]));
            }
        }
        if (this.n.isDebugEnabled()) {
            this.n.debug("Enabled protocols: " + Arrays.asList(sSLSocket.getEnabledProtocols()));
            this.n.debug("Enabled cipher suites:" + Arrays.asList(sSLSocket.getEnabledCipherSuites()));
        }
        this.n.debug("Starting handshake");
        sSLSocket.startHandshake();
        a(str, sSLSocket);
        return sSLSocket;
    }

    @Override // defpackage.le0
    public final Socket createSocket(ul1 ul1Var) {
        return SocketFactory.getDefault().createSocket();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public qb3(SSLContext sSLContext, zo0 zo0Var) {
        this(sSLContext.getSocketFactory(), null, null, zo0Var);
        w80.L(sSLContext, "SSL context");
    }
}
