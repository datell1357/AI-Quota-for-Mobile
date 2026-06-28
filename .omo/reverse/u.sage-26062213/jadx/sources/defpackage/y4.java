package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y4 extends bv3 implements pe1 {
    public int r;
    public final /* synthetic */ String s;
    public final /* synthetic */ n8 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ y3 f417u;
    public final /* synthetic */ ps v;
    public final /* synthetic */ Context w;
    public final /* synthetic */ h4 x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y4(String str, n8 n8Var, y3 y3Var, ps psVar, Context context, h4 h4Var, dh0 dh0Var) {
        super(1, dh0Var);
        this.s = str;
        this.t = n8Var;
        this.f417u = y3Var;
        this.v = psVar;
        this.w = context;
        this.x = h4Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        Context context = this.w;
        h4 h4Var = this.x;
        return new y4(this.s, this.t, this.f417u, this.v, context, h4Var, (dh0) obj).q(t64.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0063, code lost:
    
        if (defpackage.ca.O(r10, r0, r9) != r8) goto L21;
     */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r10) {
        /*
            r9 = this;
            y3 r0 = r9.f417u
            y84 r0 = r0.a
            int r1 = r9.r
            r2 = 0
            ps r3 = r9.v
            r4 = 0
            r5 = 3
            r6 = 2
            r7 = 1
            ri0 r8 = defpackage.ri0.n
            if (r1 == 0) goto L29
            if (r1 == r7) goto L25
            if (r1 == r6) goto L21
            if (r1 != r5) goto L1b
            defpackage.gg4.T(r10)
            goto L66
        L1b:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r9)
            return r2
        L21:
            defpackage.gg4.T(r10)
            goto L4d
        L25:
            defpackage.gg4.T(r10)
            goto L44
        L29:
            defpackage.gg4.T(r10)
            ra3 r10 = defpackage.ez3.a
            java.lang.Object[] r1 = new java.lang.Object[r4]
            r10.getClass()
            defpackage.ra3.c(r1)
            n8 r10 = r9.t
            r10.e(r0)
            r9.r = r7
            java.lang.Object r10 = r3.h(r9)
            if (r10 != r8) goto L44
            goto L65
        L44:
            r9.r = r6
            java.lang.Object r10 = r3.i(r4, r9)
            if (r10 != r8) goto L4d
            goto L65
        L4d:
            android.content.Context r10 = r9.w
            defpackage.mt1.T(r10, r0)
            zp0 r10 = defpackage.zu0.a
            xi1 r10 = defpackage.n92.a
            x4 r0 = new x4
            h4 r1 = r9.x
            r0.<init>(r1, r2, r4)
            r9.r = r5
            java.lang.Object r9 = defpackage.ca.O(r10, r0, r9)
            if (r9 != r8) goto L66
        L65:
            return r8
        L66:
            t64 r9 = defpackage.t64.a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.y4.q(java.lang.Object):java.lang.Object");
    }
}
