package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a20 extends q30 {
    public final df1 s;

    public a20(df1 df1Var, hi0 hi0Var, int i, vy vyVar) {
        super(df1Var, hi0Var, i, vyVar, 0);
        this.s = df1Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // defpackage.q30, defpackage.p30
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(defpackage.hz2 r5, defpackage.dh0 r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof defpackage.z10
            if (r0 == 0) goto L13
            r0 = r6
            z10 r0 = (defpackage.z10) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L1a
        L13:
            z10 r0 = new z10
            fh0 r6 = (defpackage.fh0) r6
            r0.<init>(r4, r6)
        L1a:
            java.lang.Object r6 = r0.r
            int r1 = r0.t
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            hz2 r5 = r0.q
            defpackage.gg4.T(r6)
            goto L40
        L2a:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r4)
            return r2
        L30:
            defpackage.gg4.T(r6)
            r0.q = r5
            r0.t = r3
            java.lang.Object r4 = super.d(r5, r0)
            ri0 r6 = defpackage.ri0.n
            if (r4 != r6) goto L40
            return r6
        L40:
            zy r4 = r5.s
            boolean r4 = r4.C()
            if (r4 == 0) goto L4b
            t64 r4 = defpackage.t64.a
            return r4
        L4b:
            java.lang.String r4 = "'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."
            defpackage.k21.n(r4)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a20.d(hz2, dh0):java.lang.Object");
    }

    @Override // defpackage.q30, defpackage.p30
    public final p30 e(hi0 hi0Var, int i, vy vyVar) {
        return new a20(this.s, hi0Var, i, vyVar);
    }
}
