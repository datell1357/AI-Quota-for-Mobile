package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i33 implements kh {
    public final sf2 n = new sf2();
    public final dg2 o = new dg2();
    public final Object p;

    public i33(Object obj) {
        this.p = obj;
    }

    public final void a(g64 g64Var, l53 l53Var) {
        Exception exc;
        sf2 sf2Var = this.n;
        int i = sf2Var.b;
        dg2 dg2Var = new dg2();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            dg2 dg2Var2 = this.o;
            if (i2 >= i) {
                if (i3 != dg2Var2.b) {
                    wb0.a("Applier operation size mismatch");
                }
                dg2Var2.d();
                sf2Var.b = 0;
                g64Var.g();
                return;
            }
            int i4 = i2 + 1;
            try {
                try {
                    switch (sf2Var.c(i2)) {
                        case 0:
                            g64Var.n();
                            i2 = i4;
                            break;
                        case 1:
                            int i5 = i3 + 1;
                            g64Var.d(dg2Var2.f(i3));
                            i3 = i5;
                            i2 = i4;
                            break;
                        case 2:
                            int i6 = i2 + 2;
                            i2 += 3;
                            g64Var.j(sf2Var.c(i4), sf2Var.c(i6));
                            break;
                        case 3:
                            int i7 = i2 + 2;
                            try {
                                int i8 = i2 + 3;
                                try {
                                    i2 += 4;
                                    g64Var.h(sf2Var.c(i4), sf2Var.c(i7), sf2Var.c(i8));
                                } catch (Exception e) {
                                    exc = e;
                                    i2 = i8;
                                }
                            } catch (Exception e2) {
                                exc = e2;
                                i2 = i7;
                            }
                            break;
                        case 4:
                            g64Var.a();
                            i2 = i4;
                            break;
                        case 5:
                            i2 += 2;
                            int i9 = i3 + 1;
                            g64Var.b(sf2Var.c(i4), dg2Var2.f(i3));
                            i3 = i9;
                            break;
                        case 6:
                            i2 += 2;
                            try {
                                sf2Var.c(i4);
                                int i10 = i3 + 1;
                                i3 = i10;
                            } catch (Exception e3) {
                                exc = e3;
                            }
                            break;
                        case 7:
                            int i11 = i3 + 1;
                            Object objF = dg2Var2.f(i3);
                            objF.getClass();
                            n44.R(2, objF);
                            i3 += 2;
                            g64Var.l((df1) objF, dg2Var2.f(i11));
                            i2 = i4;
                            break;
                        case 8:
                            Object obj = g64Var.p;
                            if (obj instanceof ya0) {
                                ya0 ya0Var = (ya0) obj;
                                if (l53Var.f.k(ya0Var)) {
                                    ya0Var.h();
                                }
                            }
                            dg2Var.a(obj);
                            g64Var.e();
                            i2 = i4;
                            break;
                        default:
                            i2 = i4;
                            break;
                    }
                } catch (Throwable th) {
                    g64Var.g();
                    throw th;
                }
            } catch (Exception e4) {
                exc = e4;
                i2 = i4;
            }
            exc = e3;
            throw new ab0(dg2Var2, dg2Var, sf2Var, i2 - 1, exc);
        }
    }

    @Override // defpackage.kh
    public final void b(int i, Object obj) {
        sf2 sf2Var = this.n;
        sf2Var.a(5);
        sf2Var.a(i);
        this.o.a(obj);
    }

    @Override // defpackage.kh
    public final void d(Object obj) {
        this.n.a(1);
        this.o.a(obj);
    }

    @Override // defpackage.kh
    public final void e() {
        this.n.a(8);
    }

    @Override // defpackage.kh
    public final void f(int i, Object obj) {
        sf2 sf2Var = this.n;
        sf2Var.a(6);
        sf2Var.a(i);
        this.o.a(obj);
    }

    @Override // defpackage.kh
    public final void h(int i, int i2, int i3) {
        sf2 sf2Var = this.n;
        sf2Var.a(3);
        sf2Var.a(i);
        sf2Var.a(i2);
        sf2Var.a(i3);
    }

    @Override // defpackage.kh
    public final Object i() {
        return this.p;
    }

    @Override // defpackage.kh
    public final void j(int i, int i2) {
        sf2 sf2Var = this.n;
        sf2Var.a(2);
        sf2Var.a(i);
        sf2Var.a(i2);
    }

    @Override // defpackage.kh
    public final void l(df1 df1Var, Object obj) {
        this.n.a(7);
        dg2 dg2Var = this.o;
        dg2Var.a(df1Var);
        dg2Var.a(obj);
    }

    @Override // defpackage.kh
    public final void n() {
        this.n.a(0);
    }
}
