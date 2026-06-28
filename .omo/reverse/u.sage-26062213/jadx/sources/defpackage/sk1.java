package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.net.Proxy;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sk1 implements y21 {
    public static final kj1 f;
    public final io2 a;
    public final x21 b;
    public final eh c;
    public int d;
    public final lj1 e;

    static {
        kj1 kj1Var = kj1.o;
        String[] strArr = (String[]) Arrays.copyOf(new String[]{"OkHttp-Response-Body", "Truncated"}, 2);
        if (strArr.length % 2 != 0) {
            k21.f("Expected alternating header names and values");
            return;
        }
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        int length = strArr2.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (strArr2[i2] == null) {
                k21.f("Headers cannot be null");
                return;
            }
            strArr2[i2] = zs3.Y0(strArr[i2]).toString();
        }
        int iJ = zf5.J(0, strArr2.length - 1, 2);
        if (iJ >= 0) {
            while (true) {
                String str = strArr2[i];
                String str2 = strArr2[i + 1];
                ci4.b(str);
                ci4.c(str2, str);
                if (i == iJ) {
                    break;
                } else {
                    i += 2;
                }
            }
        }
        f = new kj1(strArr2);
    }

    public sk1(io2 io2Var, x21 x21Var, eh ehVar) {
        ehVar.getClass();
        this.a = io2Var;
        this.b = x21Var;
        this.c = ehVar;
        d23 d23Var = (d23) ehVar.p;
        d23Var.getClass();
        lj1 lj1Var = new lj1();
        lj1Var.o = d23Var;
        lj1Var.n = 262144L;
        this.e = lj1Var;
    }

    public final qk1 a(cn1 cn1Var, long j) {
        if (this.d == 4) {
            this.d = 5;
            return new qk1(this, cn1Var, j);
        }
        q73.h(this.d, "state: ");
        return null;
    }

    public final void b(kj1 kj1Var, String str) {
        kj1Var.getClass();
        if (this.d != 0) {
            q73.h(this.d, "state: ");
            return;
        }
        eh ehVar = this.c;
        c23 c23Var = (c23) ehVar.q;
        c23Var.e0(str);
        c23Var.e0("\r\n");
        int size = kj1Var.size();
        int i = 0;
        while (true) {
            c23 c23Var2 = (c23) ehVar.q;
            if (i >= size) {
                c23Var2.e0("\r\n");
                this.d = 1;
                return;
            } else {
                c23Var2.e0(kj1Var.d(i));
                c23Var2.e0(": ");
                c23Var2.e0(kj1Var.f(i));
                c23Var2.e0("\r\n");
                i++;
            }
        }
    }

    @Override // defpackage.y21
    public final void cancel() {
        this.b.cancel();
    }

    @Override // defpackage.y21
    public final jp3 f() {
        return this.c;
    }

    @Override // defpackage.y21
    public final void g(k63 k63Var) {
        Proxy.Type type = this.b.i().b.type();
        type.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(k63Var.b);
        sb.append(' ');
        cn1 cn1Var = k63Var.a;
        if (nt1.g(cn1Var.a, "https") || type != Proxy.Type.HTTP) {
            String strB = cn1Var.b();
            String strD = cn1Var.d();
            if (strD != null) {
                strB = strB + '?' + strD;
            }
            sb.append(strB);
        } else {
            sb.append(cn1Var);
        }
        sb.append(" HTTP/1.1");
        b(k63Var.c, sb.toString());
    }

    @Override // defpackage.y21
    public final yp3 h(w73 w73Var) {
        k63 k63Var = w73Var.n;
        if (!dm1.a(w73Var)) {
            return a(k63Var.a, 0L);
        }
        String strA = w73Var.s.a("Transfer-Encoding");
        if (strA == null) {
            strA = null;
        }
        if ("chunked".equalsIgnoreCase(strA)) {
            cn1 cn1Var = k63Var.a;
            if (this.d == 4) {
                this.d = 5;
                return new pk1(this, cn1Var);
            }
            q73.h(this.d, "state: ");
            return null;
        }
        long jD = hi4.d(w73Var);
        if (jD != -1) {
            return a(k63Var.a, jD);
        }
        cn1 cn1Var2 = k63Var.a;
        if (this.d != 4) {
            q73.h(this.d, "state: ");
            return null;
        }
        this.d = 5;
        this.b.k();
        cn1Var2.getClass();
        return new rk1(this, cn1Var2);
    }

    @Override // defpackage.y21
    public final void i() {
        ((c23) this.c.q).flush();
    }

    @Override // defpackage.y21
    public final boolean j() {
        return this.d == 6;
    }

    @Override // defpackage.y21
    public final void k() {
        ((c23) this.c.q).flush();
    }

    @Override // defpackage.y21
    public final kn3 l(k63 k63Var, long j) {
        if ("chunked".equalsIgnoreCase(k63Var.c.a("Transfer-Encoding"))) {
            if (this.d == 1) {
                this.d = 2;
                return new ok1(this);
            }
            q73.h(this.d, "state: ");
            return null;
        }
        if (j == -1) {
            k21.n("Cannot stream a request body without chunked encoding or a known content length!");
            return null;
        }
        if (this.d == 1) {
            this.d = 2;
            return new t41(this);
        }
        q73.h(this.d, "state: ");
        return null;
    }

    @Override // defpackage.y21
    public final x21 m() {
        return this.b;
    }

    @Override // defpackage.y21
    public final long n(w73 w73Var) {
        if (!dm1.a(w73Var)) {
            return 0L;
        }
        String strA = w73Var.s.a("Transfer-Encoding");
        if (strA == null) {
            strA = null;
        }
        if ("chunked".equalsIgnoreCase(strA)) {
            return -1L;
        }
        return hi4.d(w73Var);
    }

    @Override // defpackage.y21
    public final v73 o(boolean z) {
        lj1 lj1Var = this.e;
        int i = this.d;
        if (i != 0 && i != 1 && i != 2 && i != 3) {
            q73.h(this.d, "state: ");
            return null;
        }
        try {
            String strQ = ((fz) lj1Var.o).Q(lj1Var.n);
            lj1Var.n -= (long) strQ.length();
            hb hbVarE = bi4.E(strQ);
            int i2 = hbVarE.b;
            v73 v73Var = new v73();
            v73Var.b = (d03) hbVarE.c;
            v73Var.c = i2;
            v73Var.d = (String) hbVarE.d;
            v73Var.f = lj1Var.d().e();
            if (z && i2 == 100) {
                return null;
            }
            if (i2 == 100) {
                this.d = 3;
                return v73Var;
            }
            if (102 > i2 || i2 >= 200) {
                this.d = 4;
                return v73Var;
            }
            this.d = 3;
            return v73Var;
        } catch (EOFException e) {
            throw new IOException("unexpected end of stream on ".concat(this.b.i().a.h.f()), e);
        }
    }
}
