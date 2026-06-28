package defpackage;

import android.content.Context;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class n1 {
    public final Object a;
    public final Serializable b;
    public final Object c;

    public n1(Context context) {
        context.getClass();
        this.a = new pi1();
        final int i = 0;
        this.b = new nv3(new ne1(this) { // from class: rq
            public final /* synthetic */ n1 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i2 = i;
                n1 n1Var = this.o;
                int i3 = 0;
                switch (i2) {
                    case 0:
                        return qj0.D(new vq(0, n1Var.c().b(), n1Var));
                    default:
                        yq yqVar = new yq(n1Var.a(), i3);
                        sq sqVar = new sq(i3, n1Var);
                        n44.R(2, sqVar);
                        return new ov0(yqVar, sqVar);
                }
            }
        });
        final int i2 = 1;
        this.c = new nv3(new ne1(this) { // from class: rq
            public final /* synthetic */ n1 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i22 = i2;
                n1 n1Var = this.o;
                int i3 = 0;
                switch (i22) {
                    case 0:
                        return qj0.D(new vq(0, n1Var.c().b(), n1Var));
                    default:
                        yq yqVar = new yq(n1Var.a(), i3);
                        sq sqVar = new sq(i3, n1Var);
                        n44.R(2, sqVar);
                        return new ov0(yqVar, sqVar);
                }
            }
        });
    }

    public a81 a() {
        return (a81) ((nv3) this.b).getValue();
    }

    public Object b(fh0 fh0Var) {
        return qj0.H(a(), fh0Var);
    }

    public abstract lm0 c();

    public abstract String d();

    public Object e(bv3 bv3Var) {
        ez3.a.getClass();
        ra3.c(new Object[0]);
        Object objG = g(w3.l, bv3Var);
        return objG == ri0.n ? objG : t64.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object g(defpackage.w3 r7, defpackage.fh0 r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof defpackage.zq
            if (r0 == 0) goto L13
            r0 = r8
            zq r0 = (defpackage.zq) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            zq r0 = new zq
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.q
            int r1 = r0.s
            r2 = 0
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L2d
            if (r1 != r3) goto L27
            defpackage.gg4.T(r8)
            goto L69
        L27:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r6)
            return r4
        L2d:
            defpackage.gg4.T(r8)
            java.lang.Object r8 = r6.a
            pi1 r8 = (defpackage.pi1) r8
            java.lang.String r8 = r8.c(r7)
            ra3 r1 = defpackage.ez3.a
            r7.getClass()
            java.lang.String r7 = r7.e()
            if (r7 == 0) goto L48
            r5 = 80
            defpackage.zs3.X0(r5, r7)
        L48:
            r7 = 200(0xc8, float:2.8E-43)
            defpackage.zs3.X0(r7, r8)
            java.lang.Object[] r7 = new java.lang.Object[r2]
            r1.getClass()
            defpackage.ra3.c(r7)
            lm0 r6 = r6.c()
            ar r7 = new ar
            r7.<init>(r8, r4, r2)
            r0.s = r3
            java.lang.Object r6 = defpackage.ht4.o(r6, r7, r0)
            ri0 r7 = defpackage.ri0.n
            if (r6 != r7) goto L69
            return r7
        L69:
            ra3 r6 = defpackage.ez3.a
            java.lang.Object[] r7 = new java.lang.Object[r2]
            r6.getClass()
            defpackage.ra3.c(r7)
            t64 r6 = defpackage.t64.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n1.g(w3, fh0):java.lang.Object");
    }

    public void h(e1 e1Var) {
        b40 b40Var = (b40) this.b;
        zj3 zj3Var = (zj3) this.a;
        i(e1Var);
        jj1 jj1VarHeaderIterator = e1Var.headerIterator();
        while (jj1VarHeaderIterator.hasNext()) {
            gj1 gj1VarA = jj1VarHeaderIterator.a();
            ((mj1) this.c).getClass();
            zj3Var.e(mj1.p(b40Var, gj1VarA));
        }
        b40Var.o = 0;
        zj3Var.e(b40Var);
    }

    public abstract void i(e1 e1Var);

    public String f(String str) {
        return str;
    }

    public n1(zj3 zj3Var, int i) {
        mj1 mj1Var = mj1.C;
        w80.L(zj3Var, "Session input buffer");
        this.a = zj3Var;
        this.c = mj1Var;
        this.b = new b40(128);
    }

    public n1(zj3 zj3Var) {
        this.a = zj3Var;
        this.b = new b40(128);
        this.c = mj1.C;
    }
}
