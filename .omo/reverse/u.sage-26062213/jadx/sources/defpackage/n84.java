package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class n84 {
    public final Context a;
    public final pi1 b;
    public final nv3 c;
    public final nv3 d;

    public n84(Context context) {
        context.getClass();
        this.a = context;
        this.b = new pi1();
        final int i = 0;
        this.c = new nv3(new ne1(this) { // from class: e84
            public final /* synthetic */ n84 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i2 = i;
                n84 n84Var = this.o;
                switch (i2) {
                    case 0:
                        Context applicationContext = n84Var.a.getApplicationContext();
                        applicationContext.getClass();
                        return (n8) ((vl0) ((fn3) gg4.w(applicationContext, fn3.class))).c.get();
                    default:
                        return new us0(n84Var.a);
                }
            }
        });
        final int i2 = 1;
        this.d = new nv3(new ne1(this) { // from class: e84
            public final /* synthetic */ n84 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i22 = i2;
                n84 n84Var = this.o;
                switch (i22) {
                    case 0:
                        Context applicationContext = n84Var.a.getApplicationContext();
                        applicationContext.getClass();
                        return (n8) ((vl0) ((fn3) gg4.w(applicationContext, fn3.class))).c.get();
                    default:
                        return new us0(n84Var.a);
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(defpackage.n84 r17, defpackage.fh0 r18) throws java.lang.Throwable {
        /*
            r0 = r17
            r1 = r18
            boolean r2 = r1 instanceof defpackage.f84
            if (r2 == 0) goto L17
            r2 = r1
            f84 r2 = (defpackage.f84) r2
            int r3 = r2.f95u
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.f95u = r3
            goto L1c
        L17:
            f84 r2 = new f84
            r2.<init>(r0, r1)
        L1c:
            java.lang.Object r1 = r2.s
            int r3 = r2.f95u
            r4 = 2
            r5 = 1
            r6 = 0
            r7 = 0
            ri0 r8 = defpackage.ri0.n
            if (r3 == 0) goto L42
            if (r3 == r5) goto L38
            if (r3 != r4) goto L32
            n84 r0 = r2.q
            defpackage.gg4.T(r1)     // Catch: java.lang.Exception -> La3
            goto L9f
        L32:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r0)
            return r6
        L38:
            long r9 = r2.r
            n84 r0 = r2.q
            defpackage.gg4.T(r1)
        L3f:
            r12 = r0
            r14 = r9
            goto L60
        L42:
            defpackage.gg4.T(r1)
            long r9 = java.lang.System.currentTimeMillis()
            ra3 r1 = defpackage.ez3.a
            java.lang.Object[] r3 = new java.lang.Object[r7]
            r1.getClass()
            defpackage.ra3.c(r3)
            r2.q = r0
            r2.r = r9
            r2.f95u = r5
            java.lang.Object r1 = r0.h(r2)
            if (r1 != r8) goto L3f
            goto L9d
        L60:
            r13 = r1
            java.lang.String r13 = (java.lang.String) r13
            if (r13 != 0) goto L76
            ra3 r0 = defpackage.ez3.a
            r12.c()
            java.lang.System.currentTimeMillis()
            java.lang.Object[] r1 = new java.lang.Object[r7]
            r0.getClass()
            defpackage.ra3.m(r1)
            return r6
        L76:
            ra3 r0 = defpackage.ez3.a
            r12.c()
            java.lang.System.currentTimeMillis()
            java.lang.Object[] r1 = new java.lang.Object[r7]
            r0.getClass()
            defpackage.ra3.c(r1)
            zp0 r0 = defpackage.zu0.a     // Catch: java.lang.Exception -> La2
            xi1 r0 = defpackage.n92.a     // Catch: java.lang.Exception -> La2
            g84 r11 = new g84     // Catch: java.lang.Exception -> La2
            r16 = 0
            r11.<init>(r12, r13, r14, r16)     // Catch: java.lang.Exception -> La2
            r2.q = r12     // Catch: java.lang.Exception -> La2
            r2.r = r14     // Catch: java.lang.Exception -> La2
            r2.f95u = r4     // Catch: java.lang.Exception -> La2
            java.lang.Object r1 = defpackage.ca.O(r0, r11, r2)     // Catch: java.lang.Exception -> La2
            if (r1 != r8) goto L9e
        L9d:
            return r8
        L9e:
            r0 = r12
        L9f:
            d84 r1 = (defpackage.d84) r1     // Catch: java.lang.Exception -> La3
            return r1
        La2:
            r0 = r12
        La3:
            ra3 r1 = defpackage.ez3.a
            r0.c()
            java.lang.System.currentTimeMillis()
            java.lang.Object[] r0 = new java.lang.Object[r7]
            r1.getClass()
            defpackage.ra3.g(r0)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n84.a(n84, fh0):java.lang.Object");
    }

    public abstract n1 b();

    public abstract String c();

    public abstract xr d();

    public abstract y84 e();

    public abstract ps f();

    public String g() {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(defpackage.fh0 r14) {
        /*
            Method dump skipped, instruction units count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n84.h(fh0):java.lang.Object");
    }
}
