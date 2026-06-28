package defpackage;

import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e7 {
    public final w13 a;
    public final SocketFactory b;
    public final SSLSocketFactory c;
    public final HostnameVerifier d;
    public final j30 e;
    public final w13 f;
    public final ProxySelector g;
    public final cn1 h;
    public final List i;
    public final List j;

    public e7(String str, int i, w13 w13Var, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, ho2 ho2Var, j30 j30Var, w13 w13Var2, List list, List list2, ProxySelector proxySelector) {
        str.getClass();
        w13Var.getClass();
        socketFactory.getClass();
        w13Var2.getClass();
        list.getClass();
        list2.getClass();
        proxySelector.getClass();
        this.a = w13Var;
        this.b = socketFactory;
        this.c = sSLSocketFactory;
        this.d = ho2Var;
        this.e = j30Var;
        this.f = w13Var2;
        this.g = proxySelector;
        bn1 bn1Var = new bn1();
        String str2 = sSLSocketFactory != null ? "https" : "http";
        if (str2.equalsIgnoreCase("http")) {
            bn1Var.a = "http";
        } else {
            if (!str2.equalsIgnoreCase("https")) {
                k21.f("unexpected scheme: ".concat(str2));
                throw null;
            }
            bn1Var.a = "https";
        }
        String strB = di4.b(zf5.T(0, 0, 7, str));
        if (strB == null) {
            k21.f("unexpected host: ".concat(str));
            throw null;
        }
        bn1Var.d = strB;
        if (1 > i || i >= 65536) {
            k21.l(di0.q(i, "unexpected port: "));
            throw null;
        }
        bn1Var.e = i;
        this.h = bn1Var.a();
        this.i = hi4.h(list);
        this.j = hi4.h(list2);
    }

    public final boolean a(e7 e7Var) {
        e7Var.getClass();
        return nt1.g(this.a, e7Var.a) && nt1.g(this.f, e7Var.f) && nt1.g(this.i, e7Var.i) && nt1.g(this.j, e7Var.j) && nt1.g(this.g, e7Var.g) && nt1.g(this.c, e7Var.c) && nt1.g(this.d, e7Var.d) && nt1.g(this.e, e7Var.e) && this.h.e == e7Var.h.e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof e7)) {
            return false;
        }
        e7 e7Var = (e7) obj;
        return nt1.g(this.h, e7Var.h) && a(e7Var);
    }

    public final int hashCode() {
        return Objects.hashCode(this.e) + ((Objects.hashCode(this.d) + ((Objects.hashCode(this.c) + ((this.g.hashCode() + ((this.j.hashCode() + ((this.i.hashCode() + ((this.f.hashCode() + ((this.a.hashCode() + xw1.m(527, this.h.h, 31)) * 31)) * 31)) * 31)) * 31)) * 961)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Address{");
        cn1 cn1Var = this.h;
        sb.append(cn1Var.d);
        sb.append(':');
        sb.append(cn1Var.e);
        sb.append(", ");
        sb.append("proxySelector=" + this.g);
        sb.append('}');
        return sb.toString();
    }
}
