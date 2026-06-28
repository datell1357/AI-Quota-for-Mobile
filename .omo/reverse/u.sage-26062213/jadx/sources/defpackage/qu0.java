package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qu0 implements AutoCloseable {
    public static final w43 E = new w43("[a-z0-9_-]{1,120}");
    public boolean A;
    public boolean B;
    public boolean C;
    public final pu0 D;
    public final bt2 n;
    public final long o;
    public final bt2 p;
    public final bt2 q;
    public final bt2 r;
    public final LinkedHashMap s;
    public final bh0 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Object f283u;
    public long v;
    public int w;
    public c23 x;
    public boolean y;
    public boolean z;

    public qu0(long j, r51 r51Var, bt2 bt2Var) {
        this.n = bt2Var;
        this.o = j;
        if (j <= 0) {
            k21.f("maxSize <= 0");
            throw null;
        }
        this.p = bt2Var.e("journal");
        this.q = bt2Var.e("journal.tmp");
        this.r = bt2Var.e("journal.bkp");
        this.s = new LinkedHashMap(0, 0.75f, true);
        bu3 bu3VarF = k30.f();
        ji0.o.getClass();
        zp0 zp0Var = zu0.a;
        this.t = dm0.c(ca.B(bu3VarF, lp0.p.q0(1)));
        this.f283u = new Object();
        this.D = new pu0(r51Var);
    }

    public static void V(String str) {
        if (E.c(str)) {
            return;
        }
        k21.l(di0.v("keys must match regex [a-z0-9_-]{1,120}: \"", str, "\""));
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x010f A[Catch: all -> 0x0037, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:8:0x0013, B:12:0x001a, B:14:0x0022, B:16:0x0032, B:24:0x0040, B:27:0x005a, B:29:0x0069, B:31:0x0077, B:33:0x007e, B:28:0x005e, B:37:0x009e, B:39:0x00a5, B:42:0x00aa, B:44:0x00bb, B:47:0x00c0, B:52:0x00fb, B:54:0x0106, B:58:0x010f, B:48:0x00d8, B:50:0x00ed, B:51:0x00f8, B:36:0x008e, B:61:0x0114, B:62:0x011b), top: B:65:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(defpackage.qu0 r10, defpackage.mu0 r11, boolean r12) {
        /*
            Method dump skipped, instruction units count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qu0.b(qu0, mu0, boolean):void");
    }

    public final void A() {
        ca.y(this.t, null, null, new x4(this, null, 2), 3);
    }

    public final c23 B() {
        pu0 pu0Var = this.D;
        pu0Var.getClass();
        bt2 bt2Var = this.p;
        bt2Var.getClass();
        return new c23(new t41(pu0Var.p.b(bt2Var), new v(6, this)));
    }

    public final void F() {
        Iterator it = this.s.values().iterator();
        long j = 0;
        while (it.hasNext()) {
            nu0 nu0Var = (nu0) it.next();
            int i = 0;
            if (nu0Var.g == null) {
                while (i < 2) {
                    j += nu0Var.b[i];
                    i++;
                }
            } else {
                nu0Var.g = null;
                while (i < 2) {
                    bt2 bt2Var = (bt2) nu0Var.c.get(i);
                    pu0 pu0Var = this.D;
                    pu0Var.A(bt2Var);
                    pu0Var.A((bt2) nu0Var.d.get(i));
                    i++;
                }
                it.remove();
            }
        }
        this.v = j;
    }

    public final void K() throws Throwable {
        yp3 yp3VarV = this.D.V(this.p);
        yp3VarV.getClass();
        d23 d23Var = new d23(yp3VarV);
        try {
            String strQ = d23Var.Q(Long.MAX_VALUE);
            String strQ2 = d23Var.Q(Long.MAX_VALUE);
            String strQ3 = d23Var.Q(Long.MAX_VALUE);
            String strQ4 = d23Var.Q(Long.MAX_VALUE);
            String strQ5 = d23Var.Q(Long.MAX_VALUE);
            if (!"libcore.io.DiskLruCache".equals(strQ) || !"1".equals(strQ2) || !nt1.g(String.valueOf(3), strQ3) || !nt1.g(String.valueOf(2), strQ4) || strQ5.length() > 0) {
                throw new IOException("unexpected journal header: [" + strQ + ", " + strQ2 + ", " + strQ3 + ", " + strQ4 + ", " + strQ5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    L(d23Var.Q(Long.MAX_VALUE));
                    i++;
                } catch (EOFException unused) {
                    this.w = i - this.s.size();
                    if (d23Var.b()) {
                        this.x = B();
                    } else {
                        Y();
                    }
                    try {
                        d23Var.close();
                        th = null;
                    } catch (Throwable th) {
                        th = th;
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            try {
                d23Var.close();
            } catch (Throwable th3) {
                on4.j(th, th3);
            }
        }
        if (th != null) {
            throw th;
        }
    }

    public final void L(String str) throws IOException {
        String strSubstring;
        int iF0 = zs3.F0(str, ' ', 0, 6);
        if (iF0 == -1) {
            p61.k("unexpected journal line: ".concat(str));
            return;
        }
        int i = iF0 + 1;
        int iF02 = zs3.F0(str, ' ', i, 4);
        LinkedHashMap linkedHashMap = this.s;
        if (iF02 == -1) {
            strSubstring = str.substring(i);
            if (iF0 == 6 && gt3.y0(str, "REMOVE", false)) {
                linkedHashMap.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i, iF02);
        }
        Object nu0Var = linkedHashMap.get(strSubstring);
        if (nu0Var == null) {
            nu0Var = new nu0(this, strSubstring);
            linkedHashMap.put(strSubstring, nu0Var);
        }
        nu0 nu0Var2 = (nu0) nu0Var;
        if (iF02 == -1 || iF0 != 5 || !gt3.y0(str, "CLEAN", false)) {
            if (iF02 == -1 && iF0 == 5 && gt3.y0(str, "DIRTY", false)) {
                nu0Var2.g = new mu0(this, nu0Var2);
                return;
            } else {
                if (iF02 == -1 && iF0 == 4 && gt3.y0(str, "READ", false)) {
                    return;
                }
                p61.k("unexpected journal line: ".concat(str));
                return;
            }
        }
        List listR0 = zs3.R0(str.substring(iF02 + 1), new char[]{' '});
        nu0Var2.e = true;
        nu0Var2.g = null;
        if (listR0.size() != 2) {
            q73.q(listR0, "unexpected journal line: ");
            return;
        }
        try {
            int size = listR0.size();
            for (int i2 = 0; i2 < size; i2++) {
                nu0Var2.b[i2] = Long.parseLong((String) listR0.get(i2));
            }
        } catch (NumberFormatException unused) {
            q73.q(listR0, "unexpected journal line: ");
        }
    }

    public final void N(nu0 nu0Var) {
        c23 c23Var;
        int i = nu0Var.h;
        String str = nu0Var.a;
        if (i > 0 && (c23Var = this.x) != null) {
            c23Var.e0("DIRTY");
            c23Var.writeByte(32);
            c23Var.e0(str);
            c23Var.writeByte(10);
            c23Var.flush();
        }
        if (nu0Var.h > 0 || nu0Var.g != null) {
            nu0Var.f = true;
            return;
        }
        for (int i2 = 0; i2 < 2; i2++) {
            this.D.A((bt2) nu0Var.c.get(i2));
            long j = this.v;
            long[] jArr = nu0Var.b;
            this.v = j - jArr[i2];
            jArr[i2] = 0;
        }
        this.w++;
        c23 c23Var2 = this.x;
        if (c23Var2 != null) {
            c23Var2.e0("REMOVE");
            c23Var2.writeByte(32);
            c23Var2.e0(str);
            c23Var2.writeByte(10);
            c23Var2.flush();
        }
        this.s.remove(str);
        if (this.w >= 2000) {
            A();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
    
        N(r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void R() {
        /*
            r4 = this;
        L0:
            long r0 = r4.v
            long r2 = r4.o
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto L27
            java.util.LinkedHashMap r0 = r4.s
            java.util.Collection r0 = r0.values()
            java.util.Iterator r0 = r0.iterator()
        L12:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L26
            java.lang.Object r1 = r0.next()
            nu0 r1 = (defpackage.nu0) r1
            boolean r2 = r1.f
            if (r2 != 0) goto L12
            r4.N(r1)
            goto L0
        L26:
            return
        L27:
            r0 = 0
            r4.B = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qu0.R():void");
    }

    public final void Y() {
        synchronized (this.f283u) {
            try {
                c23 c23Var = this.x;
                if (c23Var != null) {
                    c23Var.close();
                }
                kn3 kn3VarR = this.D.R(this.q, false);
                kn3VarR.getClass();
                c23 c23Var2 = new c23(kn3VarR);
                try {
                    c23Var2.e0("libcore.io.DiskLruCache");
                    c23Var2.writeByte(10);
                    c23Var2.e0("1");
                    c23Var2.writeByte(10);
                    c23Var2.j(3L);
                    c23Var2.writeByte(10);
                    c23Var2.j(2L);
                    c23Var2.writeByte(10);
                    c23Var2.writeByte(10);
                    for (nu0 nu0Var : this.s.values()) {
                        if (nu0Var.g != null) {
                            c23Var2.e0("DIRTY");
                            c23Var2.writeByte(32);
                            c23Var2.e0(nu0Var.a);
                            c23Var2.writeByte(10);
                        } else {
                            c23Var2.e0("CLEAN");
                            c23Var2.writeByte(32);
                            c23Var2.e0(nu0Var.a);
                            for (long j : nu0Var.b) {
                                c23Var2.writeByte(32);
                                c23Var2.j(j);
                            }
                            c23Var2.writeByte(10);
                        }
                    }
                    try {
                        c23Var2.close();
                        th = null;
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        c23Var2.close();
                    } catch (Throwable th3) {
                        on4.j(th, th3);
                    }
                }
                if (th != null) {
                    throw th;
                }
                boolean zB = this.D.B(this.p);
                pu0 pu0Var = this.D;
                if (zB) {
                    pu0Var.j(this.p, this.r);
                    this.D.j(this.q, this.p);
                    this.D.A(this.r);
                } else {
                    pu0Var.j(this.q, this.p);
                }
                this.x = B();
                this.w = 0;
                this.y = false;
                this.C = false;
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f283u) {
            try {
                if (this.z && !this.A) {
                    for (nu0 nu0Var : (nu0[]) this.s.values().toArray(new nu0[0])) {
                        mu0 mu0Var = nu0Var.g;
                        if (mu0Var != null) {
                            nu0 nu0Var2 = (nu0) mu0Var.b;
                            if (nt1.g(nu0Var2.g, mu0Var)) {
                                nu0Var2.f = true;
                            }
                        }
                    }
                    R();
                    dm0.o(this.t, null);
                    c23 c23Var = this.x;
                    c23Var.getClass();
                    c23Var.close();
                    this.x = null;
                    this.A = true;
                    return;
                }
                this.A = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final mu0 j(String str) {
        synchronized (this.f283u) {
            if (this.A) {
                throw new IllegalStateException("cache is closed");
            }
            V(str);
            z();
            nu0 nu0Var = (nu0) this.s.get(str);
            if ((nu0Var != null ? nu0Var.g : null) != null) {
                return null;
            }
            if (nu0Var != null && nu0Var.h != 0) {
                return null;
            }
            if (!this.B && !this.C) {
                c23 c23Var = this.x;
                c23Var.getClass();
                c23Var.e0("DIRTY");
                c23Var.writeByte(32);
                c23Var.e0(str);
                c23Var.writeByte(10);
                c23Var.flush();
                if (this.y) {
                    return null;
                }
                if (nu0Var == null) {
                    nu0Var = new nu0(this, str);
                    this.s.put(str, nu0Var);
                }
                mu0 mu0Var = new mu0(this, nu0Var);
                nu0Var.g = mu0Var;
                return mu0Var;
            }
            A();
            return null;
        }
    }

    public final ou0 r(String str) {
        ou0 ou0VarA;
        synchronized (this.f283u) {
            if (this.A) {
                throw new IllegalStateException("cache is closed");
            }
            V(str);
            z();
            nu0 nu0Var = (nu0) this.s.get(str);
            if (nu0Var != null && (ou0VarA = nu0Var.a()) != null) {
                boolean z = true;
                this.w++;
                c23 c23Var = this.x;
                c23Var.getClass();
                c23Var.e0("READ");
                c23Var.writeByte(32);
                c23Var.e0(str);
                c23Var.writeByte(10);
                c23Var.flush();
                if (this.w < 2000) {
                    z = false;
                }
                if (z) {
                    A();
                }
                return ou0VarA;
            }
            return null;
        }
    }

    public final void z() {
        synchronized (this.f283u) {
            try {
                if (this.z) {
                    return;
                }
                this.D.A(this.q);
                if (this.D.B(this.r)) {
                    boolean zB = this.D.B(this.p);
                    pu0 pu0Var = this.D;
                    bt2 bt2Var = this.r;
                    if (zB) {
                        pu0Var.A(bt2Var);
                    } else {
                        pu0Var.j(bt2Var, this.p);
                    }
                }
                if (this.D.B(this.p)) {
                    try {
                        K();
                        F();
                        this.z = true;
                        return;
                    } catch (IOException unused) {
                        try {
                            close();
                            w80.r(this.D, this.n);
                            this.A = false;
                            Y();
                            this.z = true;
                        } catch (Throwable th) {
                            this.A = false;
                            throw th;
                        }
                    }
                }
                Y();
                this.z = true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
