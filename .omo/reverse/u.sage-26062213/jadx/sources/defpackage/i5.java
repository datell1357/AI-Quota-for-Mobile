package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i5 extends bv3 implements pe1 {
    public int r;
    public final /* synthetic */ String s;
    public final /* synthetic */ y3 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ n8 f131u;
    public final /* synthetic */ ps v;
    public final /* synthetic */ Context w;
    public final /* synthetic */ s33 x;
    public final /* synthetic */ e4 y;
    public final /* synthetic */ ne1 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i5(String str, y3 y3Var, n8 n8Var, ps psVar, Context context, s33 s33Var, e4 e4Var, ne1 ne1Var, dh0 dh0Var) {
        super(1, dh0Var);
        this.s = str;
        this.t = y3Var;
        this.f131u = n8Var;
        this.v = psVar;
        this.w = context;
        this.x = s33Var;
        this.y = e4Var;
        this.z = ne1Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        e4 e4Var = this.y;
        ne1 ne1Var = this.z;
        return new i5(this.s, this.t, this.f131u, this.v, this.w, this.x, e4Var, ne1Var, (dh0) obj).q(t64.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x009b, code lost:
    
        if (defpackage.ca.O(r13, r0, r12) != r9) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0078  */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r13) {
        /*
            r12 = this;
            y3 r0 = r12.t
            y84 r0 = r0.a
            int r1 = r12.r
            ps r2 = r12.v
            r3 = 0
            r4 = 4
            r5 = 3
            r6 = 2
            r7 = 1
            r8 = 0
            ri0 r9 = defpackage.ri0.n
            if (r1 == 0) goto L31
            if (r1 == r7) goto L2d
            if (r1 == r6) goto L29
            if (r1 == r5) goto L25
            if (r1 != r4) goto L1f
            defpackage.gg4.T(r13)
            goto L9e
        L1f:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r12)
            return r3
        L25:
            defpackage.gg4.T(r13)
            goto L78
        L29:
            defpackage.gg4.T(r13)
            goto L6f
        L2d:
            defpackage.gg4.T(r13)
            goto L57
        L31:
            defpackage.gg4.T(r13)
            ra3 r13 = defpackage.ez3.a
            r0.toString()
            java.lang.Object[] r1 = new java.lang.Object[r8]
            r13.getClass()
            defpackage.ra3.c(r1)
            zp0 r13 = defpackage.zu0.a
            xi1 r13 = defpackage.n92.a
            p4 r1 = new p4
            s33 r10 = r12.x
            e4 r11 = r12.y
            r1.<init>(r10, r11, r3, r7)
            r12.r = r7
            java.lang.Object r13 = defpackage.ca.O(r13, r1, r12)
            if (r13 != r9) goto L57
            goto L9d
        L57:
            n8 r13 = r12.f131u
            r13.e(r0)
            ra3 r13 = defpackage.ez3.a
            java.lang.Object[] r1 = new java.lang.Object[r8]
            r13.getClass()
            defpackage.ra3.c(r1)
            r12.r = r6
            java.lang.Object r13 = r2.h(r12)
            if (r13 != r9) goto L6f
            goto L9d
        L6f:
            r12.r = r5
            java.lang.Object r13 = r2.i(r8, r12)
            if (r13 != r9) goto L78
            goto L9d
        L78:
            ra3 r13 = defpackage.ez3.a
            r0.toString()
            java.lang.Object[] r1 = new java.lang.Object[r8]
            r13.getClass()
            defpackage.ra3.c(r1)
            android.content.Context r13 = r12.w
            defpackage.mt1.T(r13, r0)
            zp0 r13 = defpackage.zu0.a
            xi1 r13 = defpackage.n92.a
            h5 r0 = new h5
            ne1 r1 = r12.z
            r0.<init>(r1, r3, r8)
            r12.r = r4
            java.lang.Object r12 = defpackage.ca.O(r13, r0, r12)
            if (r12 != r9) goto L9e
        L9d:
            return r9
        L9e:
            t64 r12 = defpackage.t64.a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i5.q(java.lang.Object):java.lang.Object");
    }
}
