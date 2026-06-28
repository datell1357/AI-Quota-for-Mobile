package defpackage;

import java.net.Proxy;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r23 {
    public final boolean a;
    public final List b;
    public int c;
    public final Object d;
    public final Object e;
    public Object f;
    public final Object g;

    public r23(e7 e7Var, ra3 ra3Var, h23 h23Var, boolean z) {
        List listI;
        ra3Var.getClass();
        this.d = e7Var;
        this.e = ra3Var;
        this.a = z;
        g01 g01Var = g01.n;
        this.b = g01Var;
        this.f = g01Var;
        this.g = new ArrayList();
        cn1 cn1Var = e7Var.h;
        cn1Var.getClass();
        URI uriG = cn1Var.g();
        if (uriG.getHost() == null) {
            listI = hi4.i(new Proxy[]{Proxy.NO_PROXY});
        } else {
            List<Proxy> listSelect = e7Var.g.select(uriG);
            listI = (listSelect == null || listSelect.isEmpty()) ? hi4.i(new Proxy[]{Proxy.NO_PROXY}) : hi4.h(listSelect);
        }
        this.b = listI;
        this.c = 0;
    }

    public boolean a() {
        return this.c < this.b.size() || !((ArrayList) this.g).isEmpty();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(defpackage.fh0 r13) {
        /*
            r12 = this;
            java.lang.Object r0 = r12.d
            r2 = r0
            jo1 r2 = (defpackage.jo1) r2
            int r0 = r12.c
            boolean r1 = r13 instanceof defpackage.p23
            if (r1 == 0) goto L1b
            r1 = r13
            p23 r1 = (defpackage.p23) r1
            int r3 = r1.t
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L1b
            int r3 = r3 - r4
            r1.t = r3
        L19:
            r13 = r1
            goto L21
        L1b:
            p23 r1 = new p23
            r1.<init>(r12, r13)
            goto L19
        L21:
            java.lang.Object r1 = r13.r
            int r3 = r13.t
            r9 = 0
            r10 = 1
            if (r3 == 0) goto L37
            if (r3 != r10) goto L31
            x01 r12 = r13.q
            defpackage.gg4.T(r1)
            goto L6b
        L31:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r12)
            return r9
        L37:
            defpackage.gg4.T(r1)
            java.util.List r1 = r12.b
            java.lang.Object r1 = r1.get(r0)
            r11 = r1
            x01 r11 = (defpackage.x01) r11
            int r4 = r0 + 1
            java.lang.Object r0 = r12.e
            r5 = r0
            jo1 r5 = (defpackage.jo1) r5
            java.lang.Object r0 = r12.f
            r6 = r0
            ln3 r6 = (defpackage.ln3) r6
            r23 r1 = new r23
            java.lang.Object r0 = r12.g
            r7 = r0
            j21 r7 = (defpackage.j21) r7
            boolean r8 = r12.a
            java.util.List r3 = r12.b
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            r13.q = r11
            r13.t = r10
            java.lang.Object r1 = r11.d(r1, r13)
            ri0 r12 = defpackage.ri0.n
            if (r1 != r12) goto L6a
            return r12
        L6a:
            r12 = r11
        L6b:
            oo1 r1 = (defpackage.oo1) r1
            jo1 r13 = r1.a()
            android.content.Context r0 = r13.a
            android.content.Context r3 = r2.a
            java.lang.String r4 = "Interceptor '"
            if (r0 != r3) goto L9e
            java.lang.Object r0 = r13.b
            hn2 r3 = defpackage.hn2.a
            if (r0 == r3) goto L98
            jw3 r0 = r13.c
            jw3 r3 = r2.c
            if (r0 != r3) goto L92
            qn3 r13 = r13.o
            qn3 r0 = r2.o
            if (r13 != r0) goto L8c
            return r1
        L8c:
            java.lang.String r13 = "' cannot modify the request's size resolver. Use `Interceptor.Chain.withSize` instead."
            defpackage.k21.m(r12, r13, r4)
            return r9
        L92:
            java.lang.String r13 = "' cannot modify the request's target."
            defpackage.k21.m(r12, r13, r4)
            return r9
        L98:
            java.lang.String r13 = "' cannot set the request's data to null."
            defpackage.k21.m(r12, r13, r4)
            return r9
        L9e:
            java.lang.String r13 = "' cannot modify the request's context."
            defpackage.k21.m(r12, r13, r4)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.r23.b(fh0):java.lang.Object");
    }

    public r23(jo1 jo1Var, List list, int i, jo1 jo1Var2, ln3 ln3Var, j21 j21Var, boolean z) {
        this.d = jo1Var;
        this.b = list;
        this.c = i;
        this.e = jo1Var2;
        this.f = ln3Var;
        this.g = j21Var;
        this.a = z;
    }
}
