package defpackage;

import java.net.URI;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x54 {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public int g;
    public String h;
    public List i;
    public String j;
    public ArrayList k;
    public Charset l = null;
    public String m;
    public String n;

    public x54(URI uri) {
        List listD;
        ArrayList arrayListB = null;
        this.a = uri.getScheme();
        this.b = uri.getRawSchemeSpecificPart();
        this.c = uri.getRawAuthority();
        this.f = uri.getHost();
        this.g = uri.getPort();
        this.e = uri.getRawUserInfo();
        this.d = uri.getUserInfo();
        this.h = uri.getRawPath();
        String rawPath = uri.getRawPath();
        Charset charset = this.l;
        charset = charset == null ? uf0.a : charset;
        if (rawPath == null || rawPath.isEmpty()) {
            listD = null;
        } else {
            listD = a64.d(rawPath);
            for (int i = 0; i < listD.size(); i++) {
                listD.set(i, a64.e((String) listD.get(i), charset != null ? charset : uf0.a, false));
            }
        }
        this.i = listD;
        this.j = uri.getRawQuery();
        String rawQuery = uri.getRawQuery();
        Charset charset2 = this.l;
        charset2 = charset2 == null ? uf0.a : charset2;
        if (rawQuery != null && !rawQuery.isEmpty()) {
            BitSet bitSet = a64.a;
            b40 b40Var = new b40(rawQuery.length());
            b40Var.b(rawQuery);
            arrayListB = a64.b(b40Var, charset2, '&', ';');
        }
        this.k = arrayListB;
        this.n = uri.getRawFragment();
        this.m = uri.getFragment();
    }

    public final String a() {
        StringBuilder sb = new StringBuilder();
        String str = this.a;
        if (str != null) {
            sb.append(str);
            sb.append(':');
        }
        String str2 = this.b;
        if (str2 != null) {
            sb.append(str2);
        } else {
            if (this.c != null) {
                sb.append("//");
                sb.append(this.c);
            } else if (this.f != null) {
                sb.append("//");
                String str3 = this.e;
                if (str3 != null) {
                    sb.append(str3);
                    sb.append("@");
                } else {
                    String str4 = this.d;
                    if (str4 != null) {
                        Charset charset = this.l;
                        if (charset == null) {
                            charset = uf0.a;
                        }
                        sb.append(a64.f(str4, charset, a64.d, false));
                        sb.append("@");
                    }
                }
                if (nq1.a(this.f)) {
                    sb.append("[");
                    sb.append(this.f);
                    sb.append("]");
                } else {
                    sb.append(this.f);
                }
                if (this.g >= 0) {
                    sb.append(":");
                    sb.append(this.g);
                }
            }
            String strConcat = this.h;
            if (strConcat != null) {
                boolean z = sb.length() == 0;
                if (ht4.v(strConcat)) {
                    strConcat = "";
                } else if (!z && !strConcat.startsWith("/")) {
                    strConcat = "/".concat(strConcat);
                }
                sb.append(strConcat);
            } else {
                List<String> list = this.i;
                if (list != null) {
                    Charset charset2 = this.l;
                    if (charset2 == null) {
                        charset2 = uf0.a;
                    }
                    BitSet bitSet = a64.a;
                    StringBuilder sb2 = new StringBuilder();
                    for (String str5 : list) {
                        sb2.append('/');
                        sb2.append(a64.f(str5, charset2, a64.e, false));
                    }
                    sb.append(sb2.toString());
                }
            }
            if (this.j != null) {
                sb.append("?");
                sb.append(this.j);
            } else {
                ArrayList arrayList = this.k;
                if (arrayList != null && !arrayList.isEmpty()) {
                    sb.append("?");
                    ArrayList arrayList2 = this.k;
                    Charset charset3 = this.l;
                    if (charset3 == null) {
                        charset3 = uf0.a;
                    }
                    sb.append(a64.a(arrayList2, charset3));
                }
            }
        }
        if (this.n != null) {
            sb.append("#");
            sb.append(this.n);
        } else if (this.m != null) {
            sb.append("#");
            String str6 = this.m;
            Charset charset4 = this.l;
            if (charset4 == null) {
                charset4 = uf0.a;
            }
            sb.append(a64.f(str6, charset4, a64.f, false));
        }
        return sb.toString();
    }

    public final ArrayList b() {
        return this.i != null ? new ArrayList(this.i) : new ArrayList();
    }

    public final void c(List list) {
        this.i = (list == null || list.size() <= 0) ? null : new ArrayList(list);
        this.b = null;
        this.h = null;
    }

    public final String toString() {
        return a();
    }
}
