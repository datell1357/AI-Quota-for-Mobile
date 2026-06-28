package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dl1 implements y21 {
    public static final List g = hi4.i(new String[]{"connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority"});
    public static final List h = hi4.i(new String[]{"connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade"});
    public final i23 a;
    public final q23 b;
    public final cl1 c;
    public volatile jl1 d;
    public final d03 e;
    public volatile boolean f;

    public dl1(io2 io2Var, i23 i23Var, q23 q23Var, cl1 cl1Var) {
        cl1Var.getClass();
        this.a = i23Var;
        this.b = q23Var;
        this.c = cl1Var;
        List list = io2Var.r;
        d03 d03Var = d03.H2_PRIOR_KNOWLEDGE;
        this.e = list.contains(d03Var) ? d03Var : d03.HTTP_2;
    }

    @Override // defpackage.y21
    public final void cancel() {
        this.f = true;
        jl1 jl1Var = this.d;
        if (jl1Var != null) {
            jl1Var.e(d21.f62u);
        }
    }

    @Override // defpackage.y21
    public final jp3 f() {
        jl1 jl1Var = this.d;
        jl1Var.getClass();
        return jl1Var;
    }

    @Override // defpackage.y21
    public final void g(k63 k63Var) throws IOException {
        int i;
        jl1 jl1Var;
        boolean z;
        if (this.d != null) {
            return;
        }
        boolean z2 = k63Var.d != null;
        kj1 kj1Var = k63Var.c;
        ArrayList arrayList = new ArrayList(kj1Var.size() + 4);
        arrayList.add(new hj1(hj1.f, k63Var.b));
        g00 g00Var = hj1.g;
        cn1 cn1Var = k63Var.a;
        cn1Var.getClass();
        String strB = cn1Var.b();
        String strD = cn1Var.d();
        if (strD != null) {
            strB = strB + '?' + strD;
        }
        arrayList.add(new hj1(g00Var, strB));
        String strA = kj1Var.a("Host");
        if (strA != null) {
            arrayList.add(new hj1(hj1.i, strA));
        }
        arrayList.add(new hj1(hj1.h, cn1Var.a));
        int size = kj1Var.size();
        for (int i2 = 0; i2 < size; i2++) {
            String strD2 = kj1Var.d(i2);
            Locale locale = Locale.US;
            locale.getClass();
            String lowerCase = strD2.toLowerCase(locale);
            lowerCase.getClass();
            if (!g.contains(lowerCase) || (lowerCase.equals("te") && kj1Var.f(i2).equals("trailers"))) {
                arrayList.add(new hj1(lowerCase, kj1Var.f(i2)));
            }
        }
        cl1 cl1Var = this.c;
        cl1Var.getClass();
        boolean z3 = !z2;
        synchronized (cl1Var.J) {
            synchronized (cl1Var) {
                try {
                    if (cl1Var.r > 1073741823) {
                        cl1Var.z(d21.t);
                    }
                    if (cl1Var.s) {
                        throw new ke0();
                    }
                    i = cl1Var.r;
                    cl1Var.r = i + 2;
                    jl1Var = new jl1(i, cl1Var, z3, false, null);
                    z = !z2 || cl1Var.G >= cl1Var.H || jl1Var.q >= jl1Var.r;
                    if (jl1Var.j()) {
                        cl1Var.o.put(Integer.valueOf(i), jl1Var);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            cl1Var.J.A(z3, i, arrayList);
        }
        if (z) {
            cl1Var.J.flush();
        }
        this.d = jl1Var;
        boolean z4 = this.f;
        jl1 jl1Var2 = this.d;
        if (z4) {
            jl1Var2.getClass();
            jl1Var2.e(d21.f62u);
            p61.k("Canceled");
        } else {
            jl1Var2.getClass();
            jl1Var2.w.g(this.b.g);
            jl1 jl1Var3 = this.d;
            jl1Var3.getClass();
            jl1Var3.x.g(this.b.h);
        }
    }

    @Override // defpackage.y21
    public final yp3 h(w73 w73Var) {
        jl1 jl1Var = this.d;
        jl1Var.getClass();
        return jl1Var.f152u;
    }

    @Override // defpackage.y21
    public final void i() {
        jl1 jl1Var = this.d;
        jl1Var.getClass();
        jl1Var.v.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0019  */
    @Override // defpackage.y21
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean j() {
        /*
            r4 = this;
            jl1 r4 = r4.d
            r0 = 0
            if (r4 == 0) goto L20
            monitor-enter(r4)
            hl1 r1 = r4.f152u     // Catch: java.lang.Throwable -> L17
            boolean r2 = r1.o     // Catch: java.lang.Throwable -> L17
            r3 = 1
            if (r2 == 0) goto L19
            sy r1 = r1.q     // Catch: java.lang.Throwable -> L17
            boolean r1 = r1.r()     // Catch: java.lang.Throwable -> L17
            if (r1 == 0) goto L19
            r1 = r3
            goto L1a
        L17:
            r0 = move-exception
            goto L1e
        L19:
            r1 = r0
        L1a:
            monitor-exit(r4)
            if (r1 != r3) goto L20
            return r3
        L1e:
            monitor-exit(r4)
            throw r0
        L20:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dl1.j():boolean");
    }

    @Override // defpackage.y21
    public final void k() {
        this.c.flush();
    }

    @Override // defpackage.y21
    public final kn3 l(k63 k63Var, long j) {
        jl1 jl1Var = this.d;
        jl1Var.getClass();
        return jl1Var.v;
    }

    @Override // defpackage.y21
    public final x21 m() {
        return this.a;
    }

    @Override // defpackage.y21
    public final long n(w73 w73Var) {
        if (dm1.a(w73Var)) {
            return hi4.d(w73Var);
        }
        return 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002d  */
    @Override // defpackage.y21
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.v73 o(boolean r11) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dl1.o(boolean):v73");
    }
}
