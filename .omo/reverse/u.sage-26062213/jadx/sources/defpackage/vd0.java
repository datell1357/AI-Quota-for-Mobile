package defpackage;

import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.UnknownServiceException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vd0 implements wa3, x21 {
    public final tw3 a;
    public final az0 b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final boolean g;
    public final h23 h;
    public final u23 i;
    public final qa3 j;
    public final List k;
    public final k63 l;
    public final int m;
    public final boolean n;
    public volatile boolean o;
    public Socket p;
    public Socket q;
    public aj1 r;
    public d03 s;
    public eh t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public i23 f376u;

    public vd0(tw3 tw3Var, az0 az0Var, int i, int i2, int i3, int i4, boolean z, h23 h23Var, u23 u23Var, qa3 qa3Var, List list, k63 k63Var, int i5, boolean z2) {
        tw3Var.getClass();
        az0Var.getClass();
        qa3Var.getClass();
        this.a = tw3Var;
        this.b = az0Var;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = z;
        this.h = h23Var;
        this.i = u23Var;
        this.j = qa3Var;
        this.k = list;
        this.l = k63Var;
        this.m = i5;
        this.n = z2;
    }

    @Override // defpackage.wa3
    public final wa3 a() {
        return new vd0(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n);
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x0139  */
    @Override // defpackage.wa3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.va3 b() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vd0.b():va3");
    }

    @Override // defpackage.wa3
    public final i23 c() {
        ra3 ra3Var = this.h.n.y;
        qa3 qa3Var = this.j;
        synchronized (ra3Var) {
            qa3Var.getClass();
            ((LinkedHashSet) ra3Var.o).remove(qa3Var);
        }
        i23 i23Var = this.f376u;
        i23Var.getClass();
        this.j.getClass();
        p83 p83VarD = this.i.d(this, this.k);
        if (p83VarD != null) {
            return p83VarD.a;
        }
        synchronized (i23Var) {
            az0 az0Var = this.b;
            az0Var.getClass();
            TimeZone timeZone = hi4.a;
            ((ConcurrentLinkedQueue) az0Var.d).add(i23Var);
            ((sw3) az0Var.b).c((j23) az0Var.c, 0L);
            this.h.b(i23Var);
        }
        return i23Var;
    }

    @Override // defpackage.wa3
    public final void cancel() {
        this.o = true;
        Socket socket = this.p;
        if (socket != null) {
            hi4.b(socket);
        }
    }

    @Override // defpackage.wa3
    public final boolean d() {
        return this.s != null;
    }

    @Override // defpackage.wa3
    public final va3 e() {
        Socket socket;
        Socket socket2;
        az0 az0Var = this.b;
        CopyOnWriteArrayList copyOnWriteArrayList = this.h.E;
        qa3 qa3Var = this.j;
        if (this.p != null) {
            k21.n("TCP already connected");
            return null;
        }
        copyOnWriteArrayList.add(this);
        boolean z = false;
        try {
            try {
                qa3Var.c.getClass();
                az0Var.getClass();
                f();
                z = true;
                va3 va3Var = new va3(this, (Throwable) null, 6);
                copyOnWriteArrayList.remove(this);
                return va3Var;
            } catch (IOException e) {
                e7 e7Var = qa3Var.a;
                if (qa3Var.b.type() != Proxy.Type.DIRECT) {
                    e7 e7Var2 = qa3Var.a;
                    e7Var2.g.connectFailed(e7Var2.h.g(), qa3Var.b.address(), e);
                }
                qa3Var.c.getClass();
                az0Var.getClass();
                va3 va3Var2 = new va3(this, e, 2);
                copyOnWriteArrayList.remove(this);
                if (!z && (socket2 = this.p) != null) {
                    hi4.b(socket2);
                }
                return va3Var2;
            }
        } catch (Throwable th) {
            copyOnWriteArrayList.remove(this);
            if (!z && (socket = this.p) != null) {
                hi4.b(socket);
            }
            throw th;
        }
    }

    public final void f() throws IOException {
        Socket socketCreateSocket;
        Proxy.Type type = this.j.b.type();
        int i = type == null ? -1 : ud0.a[type.ordinal()];
        if (i == 1 || i == 2) {
            socketCreateSocket = this.j.a.b.createSocket();
            socketCreateSocket.getClass();
        } else {
            socketCreateSocket = new Socket(this.j.b);
        }
        this.p = socketCreateSocket;
        if (this.o) {
            p61.k("canceled");
            return;
        }
        socketCreateSocket.setSoTimeout(this.f);
        try {
            iv2 iv2Var = iv2.a;
            iv2.a.e(socketCreateSocket, this.j.c, this.e);
            try {
                this.t = new eh(new qd1(socketCreateSocket));
            } catch (NullPointerException e) {
                if (nt1.g(e.getMessage(), "throw with null exception")) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.j.c);
            connectException.initCause(e2);
            throw connectException;
        }
    }

    public final void g(SSLSocket sSLSocket, ne0 ne0Var) {
        d03 d03VarM;
        e7 e7Var = this.j.a;
        try {
            if (ne0Var.b) {
                iv2 iv2Var = iv2.a;
                iv2.a.d(sSLSocket, e7Var.h.d, e7Var.i);
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            session.getClass();
            aj1 aj1VarS = ca.s(session);
            HostnameVerifier hostnameVerifier = e7Var.d;
            hostnameVerifier.getClass();
            boolean zVerify = hostnameVerifier.verify(e7Var.h.d, session);
            int i = 2;
            if (!zVerify) {
                List listA = aj1VarS.a();
                if (listA.isEmpty()) {
                    throw new SSLPeerUnverifiedException("Hostname " + e7Var.h.d + " not verified (no certificates)");
                }
                Object obj = listA.get(0);
                obj.getClass();
                X509Certificate x509Certificate = (X509Certificate) obj;
                StringBuilder sb = new StringBuilder("\n            |Hostname ");
                sb.append(e7Var.h.d);
                sb.append(" not verified:\n            |    certificate: ");
                j30 j30Var = j30.c;
                sb.append(w80.M(x509Certificate));
                sb.append("\n            |    DN: ");
                sb.append(x509Certificate.getSubjectDN().getName());
                sb.append("\n            |    subjectAltNames: ");
                sb.append(o70.s0(ho2.b(x509Certificate, 7), ho2.b(x509Certificate, 2)));
                sb.append("\n            ");
                throw new SSLPeerUnverifiedException(at3.p0(sb.toString()));
            }
            j30 j30Var2 = e7Var.e;
            j30Var2.getClass();
            this.r = new aj1(aj1VarS.a, aj1VarS.b, aj1VarS.c, new pp(j30Var2, aj1VarS, e7Var, i));
            e7Var.h.d.getClass();
            Iterator it = j30Var2.a.iterator();
            String strF = null;
            if (it.hasNext()) {
                di0.D(it.next());
                throw null;
            }
            if (ne0Var.b) {
                iv2 iv2Var2 = iv2.a;
                strF = iv2.a.f(sSLSocket);
            }
            this.q = sSLSocket;
            this.t = new eh(new qd1(sSLSocket));
            if (strF != null) {
                d03.o.getClass();
                d03VarM = qz0.m(strF);
            } else {
                d03VarM = d03.HTTP_1_1;
            }
            this.s = d03VarM;
            iv2 iv2Var3 = iv2.a;
            iv2.a.getClass();
        } catch (Throwable th) {
            iv2 iv2Var4 = iv2.a;
            iv2.a.getClass();
            hi4.b(sSLSocket);
            throw th;
        }
    }

    public final va3 h() throws IOException {
        k63 k63Var = this.l;
        k63Var.getClass();
        qa3 qa3Var = this.j;
        String str = "CONNECT " + hi4.g(qa3Var.a.h, true) + " HTTP/1.1";
        eh ehVar = this.t;
        if (ehVar == null) {
            nt1.X("socket");
            throw null;
        }
        sk1 sk1Var = new sk1(null, this, ehVar);
        eh ehVar2 = this.t;
        if (ehVar2 == null) {
            nt1.X("socket");
            throw null;
        }
        ((d23) ehVar2.p).n.g().g(this.c);
        eh ehVar3 = this.t;
        if (ehVar3 == null) {
            nt1.X("socket");
            throw null;
        }
        ((c23) ehVar3.q).n.g().g(this.d);
        sk1Var.b(k63Var.c, str);
        sk1Var.i();
        v73 v73VarO = sk1Var.o(false);
        v73VarO.getClass();
        v73VarO.a = k63Var;
        w73 w73VarA = v73VarO.a();
        int i = w73VarA.q;
        long jD = hi4.d(w73VarA);
        if (jD != -1) {
            qk1 qk1VarA = sk1Var.a(w73VarA.n.a, jD);
            hi4.e(qk1VarA, Api.BaseClientBuilder.API_PRIORITY_OTHER);
            qk1VarA.close();
        }
        if (i == 200) {
            return new va3(this, (Throwable) null, 6);
        }
        if (i != 407) {
            p61.k(di0.q(i, "Unexpected response code for CONNECT: "));
            return null;
        }
        qa3Var.a.f.getClass();
        p61.k("Failed to authenticate with proxy");
        return null;
    }

    @Override // defpackage.x21
    public final qa3 i() {
        return this.j;
    }

    public final vd0 l(List list, SSLSocket sSLSocket) {
        String[] strArr;
        String[] strArr2;
        list.getClass();
        int i = this.m;
        int size = list.size();
        for (int i2 = i + 1; i2 < size; i2++) {
            ne0 ne0Var = (ne0) list.get(i2);
            ne0Var.getClass();
            if (ne0Var.a && (((strArr = ne0Var.d) == null || fi4.d(strArr, sSLSocket.getEnabledProtocols(), uh2.o)) && ((strArr2 = ne0Var.c) == null || fi4.d(strArr2, sSLSocket.getEnabledCipherSuites(), d50.c)))) {
                return new vd0(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, i2, i != -1);
            }
        }
        return null;
    }

    public final vd0 m(List list, SSLSocket sSLSocket) throws UnknownServiceException {
        list.getClass();
        if (this.m != -1) {
            return this;
        }
        vd0 vd0VarL = l(list, sSLSocket);
        if (vd0VarL != null) {
            return vd0VarL;
        }
        StringBuilder sb = new StringBuilder("Unable to find acceptable protocols. isFallback=");
        sb.append(this.n);
        sb.append(", modes=");
        sb.append(list);
        String[] enabledProtocols = sSLSocket.getEnabledProtocols();
        enabledProtocols.getClass();
        String string = Arrays.toString(enabledProtocols);
        string.getClass();
        sb.append(", supported protocols=");
        sb.append(string);
        throw new UnknownServiceException(sb.toString());
    }

    @Override // defpackage.x21
    public final void k() {
    }

    @Override // defpackage.x21
    public final void j(h23 h23Var, IOException iOException) {
    }
}
