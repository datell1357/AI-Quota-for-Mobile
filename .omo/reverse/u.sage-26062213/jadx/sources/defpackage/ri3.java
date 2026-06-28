package defpackage;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ri3 {
    public static final Set e;
    public final s61 a;
    public final wr3 b;
    public final b23 c;
    public volatile boolean d;

    static {
        t11 t11Var = y84.x;
        ArrayList arrayList = new ArrayList(p70.a0(t11Var, 10));
        g1 g1Var = new g1(0, t11Var);
        while (g1Var.hasNext()) {
            arrayList.add(qn0.F((y84) g1Var.next()));
        }
        e = o70.F0(arrayList);
    }

    public ri3() {
        e61 e61VarB = e61.b();
        e61VarB.a();
        s61 s61VarA = ((s53) e61VarB.d.a(s53.class)).a();
        s61VarA.getClass();
        this.a = s61VarA;
        t11 t11Var = y84.x;
        int iA0 = oa2.a0(p70.a0(t11Var, 10));
        LinkedHashMap linkedHashMap = new LinkedHashMap(iA0 < 16 ? 16 : iA0);
        g1 g1Var = new g1(0, t11Var);
        while (g1Var.hasNext()) {
            Object next = g1Var.next();
            linkedHashMap.put(next, Boolean.TRUE);
        }
        wr3 wr3VarA = xr3.a(linkedHashMap);
        this.b = wr3VarA;
        this.c = new b23(wr3VarA);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r12 = this;
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r1 = 10
            t11 r2 = defpackage.y84.x
            int r1 = defpackage.p70.a0(r2, r1)
            int r1 = defpackage.oa2.a0(r1)
            r3 = 16
            if (r1 >= r3) goto L13
            r1 = r3
        L13:
            r0.<init>(r1)
            g1 r1 = new g1
            r3 = 0
            r1.<init>(r3, r2)
        L1c:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L8f
            java.lang.Object r2 = r1.next()
            r4 = r2
            y84 r4 = (defpackage.y84) r4
            java.lang.String r4 = defpackage.qn0.F(r4)
            s61 r5 = r12.a
            fd0 r5 = r5.g
            java.util.regex.Pattern r6 = defpackage.fd0.f
            java.util.regex.Pattern r7 = defpackage.fd0.e
            yc0 r8 = r5.c
            java.lang.String r9 = defpackage.fd0.b(r8, r4)
            r10 = 1
            if (r9 == 0) goto L63
            java.util.regex.Matcher r11 = r7.matcher(r9)
            boolean r11 = r11.matches()
            if (r11 == 0) goto L50
            ad0 r6 = r8.c()
            r5.a(r4, r6)
            goto L87
        L50:
            java.util.regex.Matcher r9 = r6.matcher(r9)
            boolean r9 = r9.matches()
            if (r9 == 0) goto L63
            ad0 r6 = r8.c()
            r5.a(r4, r6)
        L61:
            r10 = r3
            goto L87
        L63:
            yc0 r5 = r5.d
            java.lang.String r5 = defpackage.fd0.b(r5, r4)
            if (r5 == 0) goto L81
            java.util.regex.Matcher r7 = r7.matcher(r5)
            boolean r7 = r7.matches()
            if (r7 == 0) goto L76
            goto L87
        L76:
            java.util.regex.Matcher r5 = r6.matcher(r5)
            boolean r5 = r5.matches()
            if (r5 == 0) goto L81
            goto L61
        L81:
            java.lang.String r5 = "Boolean"
            defpackage.fd0.c(r4, r5)
            goto L61
        L87:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r10)
            r0.put(r2, r4)
            goto L1c
        L8f:
            wr3 r12 = r12.b
            r12.getClass()
            r1 = 0
            r12.i(r1, r0)
            ra3 r0 = defpackage.ez3.a
            java.lang.Object r12 = r12.getValue()
            java.util.Objects.toString(r12)
            java.lang.Object[] r12 = new java.lang.Object[r3]
            r0.getClass()
            defpackage.ra3.c(r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ri3.a():void");
    }
}
