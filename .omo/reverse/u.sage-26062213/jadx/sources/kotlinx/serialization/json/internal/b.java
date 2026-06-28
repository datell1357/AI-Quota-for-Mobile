package kotlinx.serialization.json.internal;

import defpackage.b21;
import defpackage.bi4;
import defpackage.d90;
import defpackage.fv1;
import defpackage.gi3;
import defpackage.jw1;
import defpackage.lx1;
import defpackage.ly2;
import defpackage.pv1;
import defpackage.rh4;
import defpackage.sb0;
import defpackage.sh4;
import defpackage.ts3;
import defpackage.ub0;
import defpackage.vb0;
import defpackage.zv1;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    public final sb0 a;
    public final fv1 b;
    public final rh4 c;
    public final b[] d;
    public final b21 e;
    public final pv1 f;
    public boolean g;
    public String h;
    public String i;

    public b(sb0 sb0Var, fv1 fv1Var, rh4 rh4Var, b[] bVarArr) {
        sb0Var.getClass();
        this.a = sb0Var;
        this.b = fv1Var;
        this.c = rh4Var;
        this.d = bVarArr;
        this.e = fv1Var.b;
        this.f = fv1Var.a;
        int iOrdinal = rh4Var.ordinal();
        if (bVarArr != null) {
            b bVar = bVarArr[iOrdinal];
            if (bVar == null && bVar == this) {
                return;
            }
            bVarArr[iOrdinal] = this;
        }
    }

    public final b a(gi3 gi3Var) {
        b bVar;
        gi3Var.getClass();
        fv1 fv1Var = this.b;
        rh4 rh4VarB = sh4.b(fv1Var, gi3Var);
        char c = rh4VarB.n;
        sb0 sb0Var = this.a;
        sb0Var.d(c);
        sb0Var.n = true;
        String str = this.h;
        if (str != null) {
            String strB = this.i;
            if (strB == null) {
                strB = gi3Var.b();
            }
            sb0Var.b();
            sb0Var.h(str);
            sb0Var.d(':');
            r(strB);
            this.h = null;
            this.i = null;
        }
        if (this.c == rh4VarB) {
            return this;
        }
        b[] bVarArr = this.d;
        return (bVarArr == null || (bVar = bVarArr[rh4VarB.ordinal()]) == null) ? new b(sb0Var, fv1Var, rh4VarB, bVarArr) : bVar;
    }

    public final void b(boolean z) {
        if (this.g) {
            r(String.valueOf(z));
        } else {
            ((d90) this.a.o).q(String.valueOf(z));
        }
    }

    public final void c(byte b) {
        if (this.g) {
            r(String.valueOf((int) b));
        } else {
            this.a.c(b);
        }
    }

    public final void d(char c) {
        r(String.valueOf(c));
    }

    public final void e(double d) {
        boolean z = this.g;
        sb0 sb0Var = this.a;
        if (z) {
            r(String.valueOf(d));
        } else {
            ((d90) sb0Var.o).q(String.valueOf(d));
        }
        this.f.getClass();
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            throw bi4.d(Double.valueOf(d), ((d90) sb0Var.o).toString());
        }
    }

    public final void f(gi3 gi3Var, int i) {
        gi3Var.getClass();
        int iOrdinal = this.c.ordinal();
        sb0 sb0Var = this.a;
        boolean z = true;
        if (iOrdinal == 1) {
            if (!sb0Var.n) {
                sb0Var.d(',');
            }
            sb0Var.b();
            return;
        }
        if (iOrdinal == 2) {
            if (sb0Var.n) {
                this.g = true;
                sb0Var.b();
                return;
            }
            if (i % 2 == 0) {
                sb0Var.d(',');
                sb0Var.b();
            } else {
                sb0Var.d(':');
                sb0Var.i();
                z = false;
            }
            this.g = z;
            return;
        }
        if (iOrdinal != 3) {
            if (!sb0Var.n) {
                sb0Var.d(',');
            }
            sb0Var.b();
            jw1.a(this.b, gi3Var);
            r(gi3Var.e(i));
            sb0Var.d(':');
            sb0Var.i();
            return;
        }
        if (i == 0) {
            this.g = true;
        }
        if (i == 1) {
            sb0Var.d(',');
            sb0Var.i();
            this.g = false;
        }
    }

    public final void g(float f) {
        boolean z = this.g;
        sb0 sb0Var = this.a;
        if (z) {
            r(String.valueOf(f));
        } else {
            ((d90) sb0Var.o).q(String.valueOf(f));
        }
        this.f.getClass();
        if (Float.isInfinite(f) || Float.isNaN(f)) {
            throw bi4.d(Float.valueOf(f), ((d90) sb0Var.o).toString());
        }
    }

    public final b h(gi3 gi3Var) {
        gi3Var.getClass();
        boolean zA = ts3.a(gi3Var);
        rh4 rh4Var = this.c;
        fv1 fv1Var = this.b;
        sb0 ub0Var = this.a;
        if (zA) {
            if (!(ub0Var instanceof vb0)) {
                ub0Var = new vb0((d90) ub0Var.o, this.g);
            }
            return new b(ub0Var, fv1Var, rh4Var, null);
        }
        if (gi3Var.f() && gi3Var.equals(zv1.a)) {
            if (!(ub0Var instanceof ub0)) {
                ub0Var = new ub0((d90) ub0Var.o, this.g);
            }
            return new b(ub0Var, fv1Var, rh4Var, null);
        }
        if (this.h != null) {
            this.i = gi3Var.b();
        }
        return this;
    }

    public final b i(ly2 ly2Var, int i) {
        ly2Var.getClass();
        f(ly2Var, i);
        return h(ly2Var.j(i));
    }

    public final void j(int i) {
        if (this.g) {
            r(String.valueOf(i));
        } else {
            this.a.e(i);
        }
    }

    public final void k(long j) {
        if (this.g) {
            r(String.valueOf(j));
        } else {
            this.a.f(j);
        }
    }

    public final void l(gi3 gi3Var, int i, long j) {
        gi3Var.getClass();
        f(gi3Var, i);
        k(j);
    }

    public final void m() {
        sb0 sb0Var = this.a;
        sb0Var.getClass();
        ((d90) sb0Var.o).q("null");
    }

    public final void n(gi3 gi3Var, int i, lx1 lx1Var, Object obj) {
        gi3Var.getClass();
        lx1Var.getClass();
        if (obj != null || this.f.c) {
            gi3Var.getClass();
            lx1Var.getClass();
            f(gi3Var, i);
            if (lx1Var.d().h()) {
                p(lx1Var, obj);
            } else if (obj == null) {
                m();
            } else {
                p(lx1Var, obj);
            }
        }
    }

    public final void o(gi3 gi3Var, int i, lx1 lx1Var, Object obj) {
        gi3Var.getClass();
        lx1Var.getClass();
        f(gi3Var, i);
        p(lx1Var, obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void p(defpackage.lx1 r6, java.lang.Object r7) {
        /*
            r5 = this;
            r6.getClass()
            fv1 r0 = r5.b
            pv1 r1 = r0.a
            r1.getClass()
            boolean r2 = r6 instanceof defpackage.jw2
            java.lang.Object r1 = r1.f
            h50 r1 = (defpackage.h50) r1
            r3 = 0
            if (r2 == 0) goto L18
            h50 r4 = defpackage.h50.n
            if (r1 == r4) goto L4a
            goto L41
        L18:
            int r1 = r1.ordinal()
            if (r1 == 0) goto L4a
            r4 = 1
            if (r1 == r4) goto L29
            r0 = 2
            if (r1 != r0) goto L25
            goto L4a
        L25:
            defpackage.p61.x()
            return
        L29:
            gi3 r1 = r6.d()
            dm0 r1 = r1.c()
            it3 r4 = defpackage.it3.P
            boolean r4 = defpackage.nt1.g(r1, r4)
            if (r4 != 0) goto L41
            it3 r4 = defpackage.it3.S
            boolean r1 = defpackage.nt1.g(r1, r4)
            if (r1 == 0) goto L4a
        L41:
            gi3 r1 = r6.d()
            java.lang.String r0 = defpackage.qn0.l(r0, r1)
            goto L4b
        L4a:
            r0 = r3
        L4b:
            if (r2 == 0) goto L61
            jw2 r6 = (defpackage.jw2) r6
            if (r7 != 0) goto L5d
            gi3 r5 = r6.d()
            java.lang.String r6 = " should always be non-null. Please report issue to the kotlinx.serialization tracker."
            java.lang.String r7 = "Value for serializer "
            defpackage.p61.h(r5, r6, r7)
            return
        L5d:
            defpackage.mt1.r(r6, r5, r7)
            throw r3
        L61:
            if (r0 == 0) goto L6f
            gi3 r1 = r6.d()
            java.lang.String r1 = r1.b()
            r5.h = r0
            r5.i = r1
        L6f:
            r6.c(r5, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.b.p(lx1, java.lang.Object):void");
    }

    public final void q(short s) {
        if (this.g) {
            r(String.valueOf((int) s));
        } else {
            this.a.g(s);
        }
    }

    public final void r(String str) {
        str.getClass();
        this.a.h(str);
    }

    public final void s(gi3 gi3Var) {
        gi3Var.getClass();
        sb0 sb0Var = this.a;
        sb0Var.getClass();
        sb0Var.n = false;
        sb0Var.d(this.c.o);
    }

    public final boolean t(gi3 gi3Var) {
        this.f.getClass();
        return false;
    }
}
