package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class wm2 {
    public final dg3 a;
    public final df1 b;
    public as0 c;
    public boolean d;
    public final gw4 e = new gw4(21);

    public wm2(dg3 dg3Var, df1 df1Var, as0 as0Var) {
        this.a = dg3Var;
        this.b = df1Var;
        this.c = as0Var;
    }

    public static void a(vv2 vv2Var) {
        List list = vv2Var.a;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ((zv2) list.get(i)).a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(defpackage.df1 r5, defpackage.fh0 r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof defpackage.vm2
            if (r0 == 0) goto L13
            r0 = r6
            vm2 r0 = (defpackage.vm2) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            vm2 r0 = new vm2
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.q
            int r1 = r0.s
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2c
            if (r1 != r3) goto L26
            defpackage.gg4.T(r6)
            goto L4d
        L26:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            return r2
        L2c:
            defpackage.gg4.T(r6)
            r4.d = r3
            n r6 = new n
            r1 = 26
            r6.<init>(r4, r5, r2, r1)
            r0.s = r3
            au3 r5 = new au3
            hi0 r1 = r0.o
            r1.getClass()
            r5.<init>(r0, r1)
            java.lang.Object r5 = defpackage.gg4.S(r5, r3, r5, r6)
            ri0 r6 = defpackage.ri0.n
            if (r5 != r6) goto L4d
            return r6
        L4d:
            r5 = 0
            r4.d = r5
            t64 r4 = defpackage.t64.a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wm2.b(df1, fh0):java.lang.Object");
    }
}
