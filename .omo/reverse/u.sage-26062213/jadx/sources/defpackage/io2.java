package defpackage;

import java.net.ProxySelector;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import javax.net.SocketFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class io2 {
    public static final List B = hi4.i(new d03[]{d03.HTTP_2, d03.HTTP_1_1});
    public static final List C = hi4.i(new ne0[]{ne0.e, ne0.f});
    public final wu4 A;
    public final qd1 a;
    public final List b;
    public final List c;
    public final q73 d;
    public final boolean e;
    public final boolean f;
    public final w13 g;
    public final boolean h;
    public final boolean i;
    public final mj1 j;
    public final w13 k;
    public final ProxySelector l;
    public final w13 m;
    public final SocketFactory n;
    public final SSLSocketFactory o;
    public final X509TrustManager p;
    public final List q;
    public final List r;
    public final ho2 s;
    public final j30 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final zf5 f141u;
    public final int v;
    public final int w;
    public final int x;
    public final ra3 y;
    public final tw3 z;

    public io2() throws NoSuchAlgorithmException, KeyStoreException {
        qd1 qd1Var = new qd1(7);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        TimeZone timeZone = hi4.a;
        q73 q73Var = new q73(21);
        w13 w13Var = w13.o;
        mj1 mj1Var = mj1.I;
        w13 w13Var2 = w13.x;
        SocketFactory socketFactory = SocketFactory.getDefault();
        socketFactory.getClass();
        List list = C;
        List list2 = B;
        ho2 ho2Var = ho2.a;
        j30 j30Var = j30.c;
        this.a = qd1Var;
        this.b = hi4.h(arrayList);
        this.c = hi4.h(arrayList2);
        this.d = q73Var;
        this.e = true;
        this.f = true;
        this.g = w13Var;
        this.h = true;
        this.i = true;
        this.j = mj1Var;
        this.k = w13Var2;
        ProxySelector proxySelector = ProxySelector.getDefault();
        this.l = proxySelector == null ? gn2.a : proxySelector;
        this.m = w13Var;
        this.n = socketFactory;
        this.q = list;
        this.r = list2;
        this.s = ho2Var;
        this.v = 10000;
        this.w = 10000;
        this.x = 10000;
        this.y = new ra3(0);
        this.z = tw3.l;
        this.A = new wu4(16);
        if (list == null || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((ne0) it.next()).a) {
                    iv2 iv2Var = iv2.a;
                    iv2.a.getClass();
                    TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                    trustManagerFactory.init((KeyStore) null);
                    TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                    trustManagers.getClass();
                    if (trustManagers.length == 1) {
                        TrustManager trustManager = trustManagers[0];
                        if (trustManager instanceof X509TrustManager) {
                            X509TrustManager x509TrustManager = (X509TrustManager) trustManager;
                            this.p = x509TrustManager;
                            iv2 iv2Var2 = iv2.a;
                            iv2Var2.getClass();
                            try {
                                SSLContext sSLContextK = iv2Var2.k();
                                sSLContextK.init(null, new TrustManager[]{x509TrustManager}, null);
                                SSLSocketFactory socketFactory2 = sSLContextK.getSocketFactory();
                                socketFactory2.getClass();
                                this.o = socketFactory2;
                                zf5 zf5VarC = iv2.a.c(x509TrustManager);
                                this.f141u = zf5VarC;
                                j30Var.getClass();
                                this.t = nt1.g(j30Var.b, zf5VarC) ? j30Var : new j30(j30Var.a, zf5VarC);
                            } catch (GeneralSecurityException e) {
                                throw new AssertionError("No System TLS: " + e, e);
                            }
                        }
                    }
                    String string = Arrays.toString(trustManagers);
                    string.getClass();
                    p61.e("Unexpected default trust managers: ".concat(string));
                    throw null;
                }
            }
            this.o = null;
            this.f141u = null;
            this.p = null;
            this.t = j30.c;
        } else {
            this.o = null;
            this.f141u = null;
            this.p = null;
            this.t = j30.c;
        }
        X509TrustManager x509TrustManager2 = this.p;
        zf5 zf5Var = this.f141u;
        SSLSocketFactory sSLSocketFactory = this.o;
        List list3 = this.c;
        List list4 = this.b;
        list4.getClass();
        if (list4.contains(null)) {
            p61.y(list4, "Null interceptor: ");
            throw null;
        }
        list3.getClass();
        if (list3.contains(null)) {
            p61.y(list3, "Null network interceptor: ");
            throw null;
        }
        List list5 = this.q;
        if (list5 == null || !list5.isEmpty()) {
            Iterator it2 = list5.iterator();
            while (it2.hasNext()) {
                if (((ne0) it2.next()).a) {
                    if (sSLSocketFactory == null) {
                        k21.n("sslSocketFactory == null");
                        throw null;
                    }
                    if (zf5Var == null) {
                        k21.n("certificateChainCleaner == null");
                        throw null;
                    }
                    if (x509TrustManager2 != null) {
                        return;
                    }
                    k21.n("x509TrustManager == null");
                    throw null;
                }
            }
        }
        if (sSLSocketFactory != null) {
            k21.n("Check failed.");
            throw null;
        }
        if (zf5Var != null) {
            k21.n("Check failed.");
            throw null;
        }
        if (x509TrustManager2 != null) {
            k21.n("Check failed.");
            throw null;
        }
        if (nt1.g(this.t, j30.c)) {
            return;
        }
        k21.n("Check failed.");
        throw null;
    }
}
