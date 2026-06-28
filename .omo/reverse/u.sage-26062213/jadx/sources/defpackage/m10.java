package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m10 {
    public final lm0 a;
    public final nv3 b;
    public final nv3 c;
    public final nv3 d;
    public final nv3 e;

    public m10(Context context, y84 y84Var) {
        px2 px2VarA;
        context.getClass();
        y84Var.getClass();
        int iOrdinal = y84Var.ordinal();
        final int i = 0;
        final int i2 = 1;
        final int i3 = 3;
        if (iOrdinal == 0) {
            px2VarA = n10.b.a(context, n10.a[0]);
        } else {
            if (iOrdinal != 3) {
                mk0.k(y84Var, "Calendar sync is not supported for ");
                throw null;
            }
            px2VarA = n10.c.a(context, n10.a[1]);
        }
        this.a = px2VarA;
        di0.v("CalendarSyncDataStore[", y84Var.name(), "]");
        this.b = new nv3(new ne1(this) { // from class: f10
            public final /* synthetic */ m10 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i4 = i;
                m10 m10Var = this.o;
                switch (i4) {
                    case 0:
                        return qj0.D(new yq(m10Var.a.b(), 15));
                    case 1:
                        return qj0.D(new yq(m10Var.a.b(), 13));
                    case 2:
                        return qj0.D(new yq(m10Var.a.b(), 12));
                    default:
                        return qj0.D(new yq(m10Var.a.b(), 14));
                }
            }
        });
        this.c = new nv3(new ne1(this) { // from class: f10
            public final /* synthetic */ m10 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i4 = i2;
                m10 m10Var = this.o;
                switch (i4) {
                    case 0:
                        return qj0.D(new yq(m10Var.a.b(), 15));
                    case 1:
                        return qj0.D(new yq(m10Var.a.b(), 13));
                    case 2:
                        return qj0.D(new yq(m10Var.a.b(), 12));
                    default:
                        return qj0.D(new yq(m10Var.a.b(), 14));
                }
            }
        });
        final int i4 = 2;
        this.d = new nv3(new ne1(this) { // from class: f10
            public final /* synthetic */ m10 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i42 = i4;
                m10 m10Var = this.o;
                switch (i42) {
                    case 0:
                        return qj0.D(new yq(m10Var.a.b(), 15));
                    case 1:
                        return qj0.D(new yq(m10Var.a.b(), 13));
                    case 2:
                        return qj0.D(new yq(m10Var.a.b(), 12));
                    default:
                        return qj0.D(new yq(m10Var.a.b(), 14));
                }
            }
        });
        this.e = new nv3(new ne1(this) { // from class: f10
            public final /* synthetic */ m10 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i42 = i3;
                m10 m10Var = this.o;
                switch (i42) {
                    case 0:
                        return qj0.D(new yq(m10Var.a.b(), 15));
                    case 1:
                        return qj0.D(new yq(m10Var.a.b(), 13));
                    case 2:
                        return qj0.D(new yq(m10Var.a.b(), 12));
                    default:
                        return qj0.D(new yq(m10Var.a.b(), 14));
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.Serializable a(defpackage.fh0 r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof defpackage.h10
            if (r0 == 0) goto L13
            r0 = r5
            h10 r0 = (defpackage.h10) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            h10 r0 = new h10
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.q
            int r1 = r0.s
            r2 = 1
            if (r1 == 0) goto L2c
            if (r1 != r2) goto L25
            defpackage.gg4.T(r5)
            goto L42
        L25:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            r4 = 0
            return r4
        L2c:
            defpackage.gg4.T(r5)
            nv3 r4 = r4.e
            java.lang.Object r4 = r4.getValue()
            a81 r4 = (defpackage.a81) r4
            r0.s = r2
            java.lang.Object r5 = defpackage.qj0.H(r4, r0)
            ri0 r4 = defpackage.ri0.n
            if (r5 != r4) goto L42
            return r4
        L42:
            java.lang.String r5 = (java.lang.String) r5
            if (r5 == 0) goto L71
            java.lang.String r4 = ","
            java.lang.String[] r4 = new java.lang.String[]{r4}
            java.util.List r4 = defpackage.zs3.Q0(r5, r4)
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            java.util.Iterator r4 = r4.iterator()
        L59:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L70
            java.lang.Object r0 = r4.next()
            r1 = r0
            java.lang.String r1 = (java.lang.String) r1
            boolean r1 = defpackage.zs3.I0(r1)
            if (r1 != 0) goto L59
            r5.add(r0)
            goto L59
        L70:
            return r5
        L71:
            g01 r4 = defpackage.g01.n
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m10.a(fh0):java.io.Serializable");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(defpackage.fh0 r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof defpackage.i10
            if (r0 == 0) goto L13
            r0 = r5
            i10 r0 = (defpackage.i10) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            i10 r0 = new i10
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.q
            int r1 = r0.s
            r2 = 1
            if (r1 == 0) goto L2c
            if (r1 != r2) goto L25
            defpackage.gg4.T(r5)
            goto L40
        L25:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            r4 = 0
            return r4
        L2c:
            defpackage.gg4.T(r5)
            lm0 r4 = r4.a
            a81 r4 = r4.b()
            r0.s = r2
            java.lang.Object r5 = defpackage.qj0.H(r4, r0)
            ri0 r4 = defpackage.ri0.n
            if (r5 != r4) goto L40
            return r4
        L40:
            hg2 r5 = (defpackage.hg2) r5
            rx2 r4 = defpackage.o10.e
            java.lang.Object r4 = r5.c(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m10.b(fh0):java.lang.Object");
    }

    public final Object c(String str, fh0 fh0Var) {
        ez3.a.getClass();
        ra3.c(new Object[0]);
        Object objO = ht4.o(this.a, new ar(str, null, 3), fh0Var);
        return objO == ri0.n ? objO : t64.a;
    }

    public final Object d(String str, bv3 bv3Var) {
        ez3.a.getClass();
        ra3.c(new Object[0]);
        Object objO = ht4.o(this.a, new ar(str, null, 4), bv3Var);
        return objO == ri0.n ? objO : t64.a;
    }

    public final Object e(boolean z, fh0 fh0Var) {
        ez3.a.getClass();
        ra3.c(new Object[0]);
        Object objO = ht4.o(this.a, new ms(z, null, 3), fh0Var);
        return objO == ri0.n ? objO : t64.a;
    }
}
