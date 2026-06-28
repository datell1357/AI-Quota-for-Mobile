package defpackage;

import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.StringTokenizer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zt0 extends l13 {
    public static final char[] w = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public boolean q;
    public String r;
    public long s;
    public String t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f444u;
    public String v;

    public zt0(Charset charset) {
        super(charset);
        this.q = false;
    }

    public static String k(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length * 2];
        for (int i = 0; i < length; i++) {
            byte b = bArr[i];
            int i2 = i * 2;
            char[] cArr2 = w;
            cArr[i2] = cArr2[(b & 240) >> 4];
            cArr[i2 + 1] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    @Override // defpackage.oj
    public final gj1 a(yk0 yk0Var, om1 om1Var) {
        return b(yk0Var, om1Var, new vu());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.oj
    public final gj1 b(yk0 yk0Var, om1 om1Var, ul1 ul1Var) throws uj {
        String str;
        byte b;
        String str2;
        byte b2;
        int i;
        String string;
        String str3;
        w80.L(yk0Var, "Credentials");
        if (j("realm") == null) {
            throw new uj(cm1.a("missing realm in challenge"));
        }
        if (j("nonce") == null) {
            throw new uj(cm1.a("missing nonce in challenge"));
        }
        String str4 = ((hv) om1Var.getRequestLine()).o;
        HashMap map = this.o;
        map.put("methodname", str4);
        map.put("uri", ((hv) om1Var.getRequestLine()).p);
        if (j("charset") == null) {
            String strName = (String) om1Var.getParams().c("http.auth.credential-charset");
            if (strName == null) {
                Charset charset = this.p;
                if (charset == null) {
                    charset = uf0.b;
                }
                strName = charset.name();
            }
            map.put("charset", strName);
        }
        String strJ = j("uri");
        String strJ2 = j("realm");
        String strJ3 = j("nonce");
        String strJ4 = j("opaque");
        String strJ5 = j("methodname");
        String strJ6 = j("algorithm");
        if (strJ6 == null) {
            strJ6 = "MD5";
        }
        HashSet hashSet = new HashSet(8);
        String strJ7 = j("qop");
        if (strJ7 != null) {
            str = "uri";
            for (StringTokenizer stringTokenizer = new StringTokenizer(strJ7, ","); stringTokenizer.hasMoreTokens(); stringTokenizer = stringTokenizer) {
                hashSet.add(stringTokenizer.nextToken().trim().toLowerCase(Locale.ROOT));
            }
            b = ((om1Var instanceof zl1) && hashSet.contains("auth-int")) ? (byte) 1 : hashSet.contains("auth") ? (byte) 2 : (byte) -1;
        } else {
            str = "uri";
            b = 0;
        }
        if (b == -1) {
            throw new uj(cm1.a("None of the qop methods is supported: " + strJ7));
        }
        String strJ8 = j("charset");
        if (strJ8 == null) {
            strJ8 = "ISO-8859-1";
        }
        String str5 = strJ6.equalsIgnoreCase("MD5-sess") ? "MD5" : strJ6;
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str5);
                String name = yk0Var.b().getName();
                String strA = yk0Var.a();
                if (strJ3.equals(this.r)) {
                    this.s++;
                } else {
                    this.s = 1L;
                    this.t = null;
                    this.r = strJ3;
                }
                StringBuilder sb = new StringBuilder(256);
                Formatter formatter = new Formatter(sb, Locale.US);
                formatter.format("%08x", Long.valueOf(this.s));
                formatter.close();
                String string2 = sb.toString();
                if (this.t == null) {
                    byte[] bArr = new byte[8];
                    new SecureRandom().nextBytes(bArr);
                    this.t = k(bArr);
                }
                this.f444u = null;
                this.v = null;
                if (strJ6.equalsIgnoreCase("MD5-sess")) {
                    sb.setLength(0);
                    sb.append(name);
                    sb.append(':');
                    sb.append(strJ2);
                    sb.append(':');
                    sb.append(strA);
                    String strK = k(messageDigest.digest(qn0.s(sb.toString(), strJ8)));
                    sb.setLength(0);
                    sb.append(strK);
                    sb.append(':');
                    sb.append(strJ3);
                    sb.append(':');
                    sb.append(this.t);
                    this.f444u = sb.toString();
                } else {
                    sb.setLength(0);
                    sb.append(name);
                    sb.append(':');
                    sb.append(strJ2);
                    sb.append(':');
                    sb.append(strA);
                    this.f444u = sb.toString();
                }
                String strK2 = k(messageDigest.digest(qn0.s(this.f444u, strJ8)));
                if (b == 2) {
                    this.v = strJ5 + ':' + strJ;
                    str2 = "auth";
                } else if (b == 1) {
                    xl1 entity = om1Var instanceof zl1 ? ((zl1) om1Var).getEntity() : null;
                    if (entity == null || entity.isRepeatable()) {
                        str2 = "auth";
                        yl1 yl1Var = new yl1(messageDigest);
                        if (entity != null) {
                            try {
                                entity.writeTo(yl1Var);
                            } catch (IOException e) {
                                throw new uj("I/O error reading entity content", e);
                            }
                        }
                        yl1Var.close();
                        this.v = strJ5 + ':' + strJ + ':' + k(yl1Var.p);
                        b2 = b;
                    } else {
                        str2 = "auth";
                        if (!hashSet.contains(str2)) {
                            throw new uj(cm1.a("Qop auth-int cannot be used with a non-repeatable entity"));
                        }
                        this.v = strJ5 + ':' + strJ;
                        b2 = 2;
                    }
                    b = b2;
                } else {
                    str2 = "auth";
                    this.v = strJ5 + ':' + strJ;
                }
                String strK3 = k(messageDigest.digest(qn0.s(this.v, strJ8)));
                if (b == 0) {
                    i = 0;
                    sb.setLength(0);
                    sb.append(strK2);
                    sb.append(':');
                    sb.append(strJ3);
                    sb.append(':');
                    sb.append(strK3);
                    string = sb.toString();
                } else {
                    i = 0;
                    sb.setLength(0);
                    sb.append(strK2);
                    sb.append(':');
                    sb.append(strJ3);
                    sb.append(':');
                    sb.append(string2);
                    sb.append(':');
                    sb.append(this.t);
                    sb.append(':');
                    sb.append(b == 1 ? "auth-int" : str2);
                    sb.append(':');
                    sb.append(strK3);
                    string = sb.toString();
                }
                String strK4 = k(messageDigest.digest(string.getBytes(uf0.b)));
                b40 b40Var = new b40(128);
                if (g()) {
                    b40Var.b("Proxy-Authorization");
                } else {
                    b40Var.b("Authorization");
                }
                b40Var.b(": Digest ");
                ArrayList arrayList = new ArrayList(20);
                arrayList.add(new ev("username", name));
                arrayList.add(new ev("realm", strJ2));
                arrayList.add(new ev("nonce", strJ3));
                arrayList.add(new ev(str, strJ));
                arrayList.add(new ev("response", strK4));
                if (b != 0) {
                    str3 = "qop";
                    arrayList.add(new ev(str3, b == 1 ? "auth-int" : str2));
                    arrayList.add(new ev("nc", string2));
                    arrayList.add(new ev("cnonce", this.t));
                } else {
                    str3 = "qop";
                }
                arrayList.add(new ev("algorithm", strJ6));
                if (strJ4 != null) {
                    arrayList.add(new ev("opaque", strJ4));
                }
                for (int i2 = i; i2 < arrayList.size(); i2++) {
                    ev evVar = (ev) arrayList.get(i2);
                    if (i2 > 0) {
                        b40Var.b(", ");
                    }
                    String str6 = evVar.n;
                    bi4.r(b40Var, evVar, (("nc".equals(str6) || str3.equals(str6) || "algorithm".equals(str6)) ? 1 : i) ^ 1);
                }
                return new cz(b40Var);
            } catch (q74 unused) {
                throw new uj(cm1.a("Unsuppported digest algorithm: ".concat(str5)));
            }
        } catch (Exception unused2) {
            throw new q74("Unsupported algorithm in HTTP Digest authentication: " + str5);
        }
    }

    @Override // defpackage.oj
    public final String d() {
        return "digest";
    }

    @Override // defpackage.oj
    public final boolean e() {
        if ("true".equalsIgnoreCase(j("stale"))) {
            return false;
        }
        return this.q;
    }

    @Override // defpackage.oj
    public final boolean f() {
        return false;
    }

    @Override // defpackage.oj
    public final void i(gj1 gj1Var) throws o92 {
        super.i(gj1Var);
        this.q = true;
        if (this.o.isEmpty()) {
            throw new o92(cm1.a("Authentication challenge is empty"));
        }
    }

    @Override // defpackage.oj
    public final String toString() {
        StringBuilder sb = new StringBuilder("DIGEST [complete=");
        sb.append(this.q);
        sb.append(", nonce=");
        sb.append(this.r);
        sb.append(", nc=");
        return di0.x(sb, this.s, "]");
    }
}
