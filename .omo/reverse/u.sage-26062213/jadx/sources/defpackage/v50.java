package defpackage;

import android.content.Context;
import u.sage.ClaudeUsageService;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v50 extends pt {
    public final n8 k;
    public final Class l;
    public final y84 m;
    public final jf n;
    public final r50 o;
    public final p50 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v50(Context context, n8 n8Var) {
        super(context);
        context.getClass();
        n8Var.getClass();
        this.k = n8Var;
        this.l = ClaudeUsageService.class;
        this.m = y84.r;
        this.n = new jf(context, 1);
        this.o = new r50(context);
        this.p = new p50(context);
        r();
        q();
        p();
        ca.y(this.f, null, null, new n(this, context, null, 10), 3);
        o();
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
    public final java.lang.Object b(defpackage.fh0 r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof defpackage.u50
            if (r0 == 0) goto L13
            r0 = r9
            u50 r0 = (defpackage.u50) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            u50 r0 = new u50
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.r
            int r1 = r0.t
            r2 = 2
            r3 = 1
            r4 = 0
            wr3 r5 = r8.h
            ri0 r6 = defpackage.ri0.n
            if (r1 == 0) goto L3b
            if (r1 == r3) goto L37
            if (r1 != r2) goto L31
            d84 r8 = r0.q
            defpackage.gg4.T(r9)     // Catch: java.lang.Throwable -> L2f
            goto L69
        L2f:
            r8 = move-exception
            goto L73
        L31:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r8)
            return r4
        L37:
            defpackage.gg4.T(r9)     // Catch: java.lang.Throwable -> L2f
            goto L57
        L3b:
            defpackage.gg4.T(r9)
            java.lang.Boolean r9 = java.lang.Boolean.TRUE
            r5.getClass()
            r5.i(r4, r9)
            q50 r9 = new q50     // Catch: java.lang.Throwable -> L2f
            android.content.Context r1 = r8.a     // Catch: java.lang.Throwable -> L2f
            r7 = 0
            r9.<init>(r1, r7)     // Catch: java.lang.Throwable -> L2f
            r0.t = r3     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r9 = defpackage.n84.a(r9, r0)     // Catch: java.lang.Throwable -> L2f
            if (r9 != r6) goto L57
            goto L67
        L57:
            d84 r9 = (defpackage.d84) r9     // Catch: java.lang.Throwable -> L2f
            if (r9 == 0) goto L6a
            r50 r8 = r8.o     // Catch: java.lang.Throwable -> L2f
            r0.q = r9     // Catch: java.lang.Throwable -> L2f
            r0.t = r2     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r8 = r8.g(r9, r0)     // Catch: java.lang.Throwable -> L2f
            if (r8 != r6) goto L68
        L67:
            return r6
        L68:
            r8 = r9
        L69:
            r9 = r8
        L6a:
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            r5.getClass()
            r5.i(r4, r8)
            return r9
        L73:
            java.lang.Boolean r9 = java.lang.Boolean.FALSE
            r5.getClass()
            r5.i(r4, r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v50.b(fh0):java.lang.Object");
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
        int i = ClaudeUsageService.Z;
        return is0.v();
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
