package defpackage;

import android.content.Context;
import u.sage.GeminiUsageService;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jg1 extends pt {
    public final n8 k;
    public final Class l;
    public final y84 m;
    public final jf n;
    public final hg1 o;
    public final gg1 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jg1(Context context, n8 n8Var) {
        super(context);
        n8Var.getClass();
        this.k = n8Var;
        this.l = GeminiUsageService.class;
        this.m = y84.s;
        this.n = new jf(context, 4);
        this.o = new hg1(context);
        this.p = new gg1(context);
        r();
        q();
        p();
    }

    @Override // defpackage.pt
    public final boolean a(w3 w3Var) {
        w3Var.getClass();
        return !w3Var.l();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // defpackage.pt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(defpackage.fh0 r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof defpackage.ig1
            if (r0 == 0) goto L13
            r0 = r8
            ig1 r0 = (defpackage.ig1) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            ig1 r0 = new ig1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.r
            int r1 = r0.t
            r2 = 2
            r3 = 1
            r4 = 0
            wr3 r5 = r7.h
            ri0 r6 = defpackage.ri0.n
            if (r1 == 0) goto L3b
            if (r1 == r3) goto L37
            if (r1 != r2) goto L31
            d84 r7 = r0.q
            defpackage.gg4.T(r8)     // Catch: java.lang.Throwable -> L2f
            goto L68
        L2f:
            r7 = move-exception
            goto L72
        L31:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r7)
            return r4
        L37:
            defpackage.gg4.T(r8)     // Catch: java.lang.Throwable -> L2f
            goto L56
        L3b:
            defpackage.gg4.T(r8)
            java.lang.Boolean r8 = java.lang.Boolean.TRUE
            r5.getClass()
            r5.i(r4, r8)
            mf r8 = new mf     // Catch: java.lang.Throwable -> L2f
            android.content.Context r1 = r7.a     // Catch: java.lang.Throwable -> L2f
            r8.<init>(r1, r3)     // Catch: java.lang.Throwable -> L2f
            r0.t = r3     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r8 = defpackage.n84.a(r8, r0)     // Catch: java.lang.Throwable -> L2f
            if (r8 != r6) goto L56
            goto L66
        L56:
            d84 r8 = (defpackage.d84) r8     // Catch: java.lang.Throwable -> L2f
            if (r8 == 0) goto L69
            hg1 r7 = r7.o     // Catch: java.lang.Throwable -> L2f
            r0.q = r8     // Catch: java.lang.Throwable -> L2f
            r0.t = r2     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r7 = r7.g(r8, r0)     // Catch: java.lang.Throwable -> L2f
            if (r7 != r6) goto L67
        L66:
            return r6
        L67:
            r7 = r8
        L68:
            r8 = r7
        L69:
            java.lang.Boolean r7 = java.lang.Boolean.FALSE
            r5.getClass()
            r5.i(r4, r7)
            return r8
        L72:
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            r5.getClass()
            r5.i(r4, r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.jg1.b(fh0):java.lang.Object");
    }

    @Override // defpackage.pt
    public final n1 c() {
        return this.n;
    }

    @Override // defpackage.pt
    public final n8 d() {
        return this.k;
    }

    @Override // defpackage.pt
    public final d84 f() {
        int i = GeminiUsageService.Y;
        return c75.u();
    }

    @Override // defpackage.pt
    public final xr h() {
        return this.p;
    }

    @Override // defpackage.pt
    public final Class i() {
        return this.l;
    }

    @Override // defpackage.pt
    public final y84 j() {
        return this.m;
    }

    @Override // defpackage.pt
    public final ps l() {
        return this.o;
    }
}
