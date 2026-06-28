package defpackage;

import com.google.api.client.http.HttpMethods;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u23 {
    public final tw3 a;
    public final az0 b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final boolean g;
    public final boolean h;
    public final e7 i;
    public final ra3 j;
    public final h23 k;
    public final boolean l;
    public aa3 m;
    public r23 n;
    public qa3 o;
    public final vh p;

    public u23(tw3 tw3Var, az0 az0Var, int i, int i2, int i3, int i4, boolean z, boolean z2, e7 e7Var, ra3 ra3Var, h23 h23Var, k63 k63Var) {
        tw3Var.getClass();
        az0Var.getClass();
        ra3Var.getClass();
        this.a = tw3Var;
        this.b = az0Var;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = z;
        this.h = z2;
        this.i = e7Var;
        this.j = ra3Var;
        this.k = h23Var;
        this.l = !nt1.g(k63Var.b, HttpMethods.GET);
        this.p = new vh();
    }

    public final boolean a(i23 i23Var) {
        r23 r23Var;
        qa3 qa3Var;
        if (this.p.isEmpty() && this.o == null) {
            if (i23Var != null) {
                synchronized (i23Var) {
                    qa3Var = null;
                    if (i23Var.l == 0 && i23Var.j && hi4.a(i23Var.c.a.h, this.i.h)) {
                        qa3Var = i23Var.c;
                    }
                }
                if (qa3Var != null) {
                    this.o = qa3Var;
                    return true;
                }
            }
            aa3 aa3Var = this.m;
            if ((aa3Var == null || aa3Var.b >= aa3Var.a.size()) && (r23Var = this.n) != null) {
                return r23Var.a();
            }
        }
        return true;
    }

    public final wa3 b() {
        Socket socketI;
        p83 p83Var;
        vd0 vd0VarC;
        String hostAddress;
        int port;
        List listL;
        boolean zContains;
        i23 i23Var = this.k.f117u;
        if (i23Var == null) {
            p83Var = null;
        } else {
            boolean zE = i23Var.e(this.l);
            synchronized (i23Var) {
                boolean z = i23Var.j;
                try {
                    if (!zE) {
                        i23Var.j = true;
                        socketI = this.k.i();
                    } else if (!z) {
                        cn1 cn1Var = i23Var.c.a.h;
                        cn1Var.getClass();
                        cn1 cn1Var2 = this.i.h;
                        socketI = !(cn1Var.e == cn1Var2.e && nt1.g(cn1Var.d, cn1Var2.d)) ? this.k.i() : null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.k.f117u == null) {
                if (socketI != null) {
                    hi4.b(socketI);
                }
                p83Var = null;
            } else {
                if (socketI != null) {
                    k21.n("Check failed.");
                    return null;
                }
                p83Var = new p83(i23Var);
            }
        }
        if (p83Var != null) {
            return p83Var;
        }
        p83 p83VarD = d(null, null);
        if (p83VarD != null) {
            return p83VarD;
        }
        if (!this.p.isEmpty()) {
            return (wa3) this.p.removeFirst();
        }
        qa3 qa3Var = this.o;
        if (qa3Var != null) {
            this.o = null;
            vd0VarC = c(qa3Var, null);
        } else {
            aa3 aa3Var = this.m;
            if (aa3Var == null || aa3Var.b >= aa3Var.a.size()) {
                r23 r23Var = this.n;
                if (r23Var == null) {
                    r23Var = new r23(this.i, this.j, this.k, this.h);
                    this.n = r23Var;
                }
                if (!r23Var.a()) {
                    p61.k("exhausted all routes");
                    return null;
                }
                if (!r23Var.a()) {
                    p61.v();
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                while (r23Var.c < r23Var.b.size()) {
                    e7 e7Var = (e7) r23Var.d;
                    if (r23Var.c >= r23Var.b.size()) {
                        throw new SocketException("No route to " + e7Var.h.d + "; exhausted proxy configurations: " + r23Var.b);
                    }
                    List list = r23Var.b;
                    int i = r23Var.c;
                    r23Var.c = i + 1;
                    Proxy proxy = (Proxy) list.get(i);
                    ArrayList arrayList2 = new ArrayList();
                    r23Var.f = arrayList2;
                    if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
                        cn1 cn1Var3 = e7Var.h;
                        hostAddress = cn1Var3.d;
                        port = cn1Var3.e;
                    } else {
                        SocketAddress socketAddressAddress = proxy.address();
                        if (!(socketAddressAddress instanceof InetSocketAddress)) {
                            q73.s(socketAddressAddress.getClass(), "Proxy.address() is not an InetSocketAddress: ");
                            return null;
                        }
                        InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                        InetAddress address = inetSocketAddress.getAddress();
                        if (address == null) {
                            hostAddress = inetSocketAddress.getHostName();
                            hostAddress.getClass();
                        } else {
                            hostAddress = address.getHostAddress();
                            hostAddress.getClass();
                        }
                        port = inetSocketAddress.getPort();
                    }
                    if (1 > port || port >= 65536) {
                        throw new SocketException("No route to " + hostAddress + ':' + port + "; port is out of range");
                    }
                    if (proxy.type() == Proxy.Type.SOCKS) {
                        arrayList2.add(InetSocketAddress.createUnresolved(hostAddress, port));
                    } else {
                        w43 w43Var = di4.a;
                        hostAddress.getClass();
                        if (di4.a.c(hostAddress)) {
                            listL = tv4.E(InetAddress.getByName(hostAddress));
                        } else {
                            e7Var.a.getClass();
                            try {
                                InetAddress[] allByName = InetAddress.getAllByName(hostAddress);
                                allByName.getClass();
                                List listC0 = ji.c0(allByName);
                                if (listC0.isEmpty()) {
                                    throw new UnknownHostException(e7Var.a + " returned no addresses for " + hostAddress);
                                }
                                listL = listC0;
                            } catch (NullPointerException e) {
                                UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of ".concat(hostAddress));
                                unknownHostException.initCause(e);
                                throw unknownHostException;
                            }
                        }
                        if (r23Var.a && listL.size() >= 2) {
                            ArrayList arrayList3 = new ArrayList();
                            ArrayList arrayList4 = new ArrayList();
                            for (Object obj : listL) {
                                if (((InetAddress) obj) instanceof Inet6Address) {
                                    arrayList3.add(obj);
                                } else {
                                    arrayList4.add(obj);
                                }
                            }
                            if (!arrayList3.isEmpty() && !arrayList4.isEmpty()) {
                                byte[] bArr = fi4.a;
                                Iterator it = arrayList3.iterator();
                                Iterator it2 = arrayList4.iterator();
                                a42 a42VarP = tv4.p();
                                while (true) {
                                    if (!it.hasNext() && !it2.hasNext()) {
                                        break;
                                    }
                                    if (it.hasNext()) {
                                        a42VarP.add(it.next());
                                    }
                                    if (it2.hasNext()) {
                                        a42VarP.add(it2.next());
                                    }
                                }
                                listL = tv4.l(a42VarP);
                            }
                        }
                        Iterator it3 = listL.iterator();
                        while (it3.hasNext()) {
                            arrayList2.add(new InetSocketAddress((InetAddress) it3.next(), port));
                        }
                    }
                    Iterator it4 = ((List) r23Var.f).iterator();
                    while (it4.hasNext()) {
                        qa3 qa3Var2 = new qa3((e7) r23Var.d, proxy, (InetSocketAddress) it4.next());
                        ra3 ra3Var = (ra3) r23Var.e;
                        synchronized (ra3Var) {
                            zContains = ((LinkedHashSet) ra3Var.o).contains(qa3Var2);
                        }
                        if (zContains) {
                            ((ArrayList) r23Var.g).add(qa3Var2);
                        } else {
                            arrayList.add(qa3Var2);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        break;
                    }
                }
                if (arrayList.isEmpty()) {
                    o70.d0((ArrayList) r23Var.g, arrayList);
                    ((ArrayList) r23Var.g).clear();
                }
                aa3 aa3Var2 = new aa3(arrayList);
                this.m = aa3Var2;
                if (this.k.C) {
                    p61.k("Canceled");
                    return null;
                }
                if (aa3Var2.b >= arrayList.size()) {
                    p61.v();
                    return null;
                }
                int i2 = aa3Var2.b;
                aa3Var2.b = i2 + 1;
                vd0VarC = c((qa3) arrayList.get(i2), arrayList);
            } else {
                int i3 = aa3Var.b;
                ArrayList arrayList5 = aa3Var.a;
                if (i3 >= arrayList5.size()) {
                    p61.v();
                    return null;
                }
                int i4 = aa3Var.b;
                aa3Var.b = i4 + 1;
                vd0VarC = c((qa3) arrayList5.get(i4), null);
            }
        }
        p83 p83VarD2 = d(vd0VarC, vd0VarC.k);
        return p83VarD2 != null ? p83VarD2 : vd0VarC;
    }

    public final vd0 c(qa3 qa3Var, ArrayList arrayList) throws UnknownServiceException {
        d03 d03Var = d03.H2_PRIOR_KNOWLEDGE;
        qa3Var.getClass();
        e7 e7Var = qa3Var.a;
        if (e7Var.c == null) {
            if (!e7Var.j.contains(ne0.f)) {
                throw new UnknownServiceException("CLEARTEXT communication not enabled for client");
            }
            String str = qa3Var.a.h.d;
            iv2 iv2Var = iv2.a;
            if (!iv2.a.h(str)) {
                throw new UnknownServiceException(di0.v("CLEARTEXT communication to ", str, " not permitted by network security policy"));
            }
        } else if (e7Var.i.contains(d03Var)) {
            throw new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS");
        }
        k63 k63Var = null;
        if (qa3Var.b.type() == Proxy.Type.HTTP) {
            e7 e7Var2 = qa3Var.a;
            if (e7Var2.c != null || e7Var2.i.contains(d03Var)) {
                rp rpVar = new rp(5);
                cn1 cn1Var = qa3Var.a.h;
                cn1Var.getClass();
                rpVar.b = cn1Var;
                rpVar.m(HttpMethods.CONNECT, null);
                e7 e7Var3 = qa3Var.a;
                rpVar.k("Host", hi4.g(e7Var3.h, true));
                rpVar.k("Proxy-Connection", "Keep-Alive");
                rpVar.k("User-Agent", "okhttp/5.3.2");
                k63Var = new k63(rpVar);
                x73 x73Var = y73.n;
                ArrayList arrayList2 = new ArrayList(20);
                ci4.b("Proxy-Authenticate");
                ci4.c("OkHttp-Preemptive", "Proxy-Authenticate");
                int i = 0;
                while (i < arrayList2.size()) {
                    if ("Proxy-Authenticate".equalsIgnoreCase((String) arrayList2.get(i))) {
                        arrayList2.remove(i);
                        arrayList2.remove(i);
                        i -= 2;
                    }
                    i += 2;
                }
                arrayList2.add("Proxy-Authenticate");
                arrayList2.add(zs3.Y0("OkHttp-Preemptive").toString());
                new kj1((String[]) arrayList2.toArray(new String[0]));
                x73Var.getClass();
                e7Var3.f.getClass();
            }
        }
        return new vd0(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.k, this, qa3Var, arrayList, k63Var, -1, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0043 A[Catch: all -> 0x0041, TryCatch #0 {all -> 0x0041, blocks: (B:14:0x0036, B:22:0x0043, B:25:0x004a), top: B:51:0x0036 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.p83 d(defpackage.vd0 r11, java.util.List r12) {
        /*
            r10 = this;
            az0 r0 = r10.b
            boolean r1 = r10.l
            e7 r2 = r10.i
            h23 r3 = r10.k
            r4 = 0
            r5 = 1
            if (r11 == 0) goto L14
            boolean r6 = r11.d()
            if (r6 == 0) goto L14
            r6 = r5
            goto L15
        L14:
            r6 = r4
        L15:
            r0.getClass()
            java.lang.Object r0 = r0.d
            java.util.concurrent.ConcurrentLinkedQueue r0 = (java.util.concurrent.ConcurrentLinkedQueue) r0
            java.util.Iterator r0 = r0.iterator()
            r0.getClass()
        L23:
            boolean r7 = r0.hasNext()
            r8 = 0
            if (r7 == 0) goto L6b
            java.lang.Object r7 = r0.next()
            i23 r7 = (defpackage.i23) r7
            r7.getClass()
            monitor-enter(r7)
            if (r6 == 0) goto L43
            cl1 r9 = r7.i     // Catch: java.lang.Throwable -> L41
            if (r9 == 0) goto L3c
            r9 = r5
            goto L3d
        L3c:
            r9 = r4
        L3d:
            if (r9 != 0) goto L43
        L3f:
            r9 = r4
            goto L4e
        L41:
            r10 = move-exception
            goto L69
        L43:
            boolean r9 = r7.d(r2, r12)     // Catch: java.lang.Throwable -> L41
            if (r9 != 0) goto L4a
            goto L3f
        L4a:
            r3.b(r7)     // Catch: java.lang.Throwable -> L41
            r9 = r5
        L4e:
            monitor-exit(r7)
            if (r9 == 0) goto L23
            boolean r9 = r7.e(r1)
            if (r9 == 0) goto L58
            goto L6c
        L58:
            monitor-enter(r7)
            r7.j = r5     // Catch: java.lang.Throwable -> L66
            java.net.Socket r8 = r3.i()     // Catch: java.lang.Throwable -> L66
            monitor-exit(r7)
            if (r8 == 0) goto L23
            defpackage.hi4.b(r8)
            goto L23
        L66:
            r10 = move-exception
            monitor-exit(r7)
            throw r10
        L69:
            monitor-exit(r7)
            throw r10
        L6b:
            r7 = r8
        L6c:
            if (r7 != 0) goto L6f
            return r8
        L6f:
            if (r11 == 0) goto L7c
            qa3 r12 = r11.j
            r10.o = r12
            java.net.Socket r10 = r11.q
            if (r10 == 0) goto L7c
            defpackage.hi4.b(r10)
        L7c:
            p83 r10 = new p83
            r10.<init>(r7)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.u23.d(vd0, java.util.List):p83");
    }
}
