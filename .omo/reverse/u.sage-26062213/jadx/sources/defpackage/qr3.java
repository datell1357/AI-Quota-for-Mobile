package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qr3 extends bv3 implements ff1 {
    public int r;
    public /* synthetic */ b81 s;
    public /* synthetic */ int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ rr3 f282u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qr3(rr3 rr3Var, dh0 dh0Var) {
        super(3, dh0Var);
        this.f282u = rr3Var;
    }

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        int iIntValue = ((Number) obj2).intValue();
        qr3 qr3Var = new qr3(this.f282u, (dh0) obj3);
        qr3Var.s = (b81) obj;
        qr3Var.t = iIntValue;
        return qr3Var.q(t64.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (r14.m(defpackage.mm3.n, r13) == r10) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0081, code lost:
    
        if (r0.m(defpackage.mm3.p, r13) != r10) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0077 A[PHI: r0
  0x0077: PHI (r0v6 b81) = (r0v4 b81), (r0v5 b81), (r0v9 b81) binds: [B:26:0x005d, B:31:0x0074, B:12:0x0021] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r14) {
        /*
            r13 = this;
            rr3 r0 = r13.f282u
            long r1 = r0.o
            int r3 = r13.r
            r4 = 0
            r5 = 5
            r6 = 4
            r7 = 3
            r8 = 2
            r9 = 1
            ri0 r10 = defpackage.ri0.n
            if (r3 == 0) goto L37
            if (r3 == r9) goto L33
            if (r3 == r8) goto L2d
            if (r3 == r7) goto L27
            if (r3 == r6) goto L21
            if (r3 != r5) goto L1b
            goto L33
        L1b:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r13)
            return r4
        L21:
            b81 r0 = r13.s
            defpackage.gg4.T(r14)
            goto L77
        L27:
            b81 r0 = r13.s
            defpackage.gg4.T(r14)
            goto L6c
        L2d:
            b81 r0 = r13.s
            defpackage.gg4.T(r14)
            goto L59
        L33:
            defpackage.gg4.T(r14)
            goto L84
        L37:
            defpackage.gg4.T(r14)
            b81 r14 = r13.s
            int r3 = r13.t
            if (r3 <= 0) goto L4b
            r13.r = r9
            mm3 r0 = defpackage.mm3.n
            java.lang.Object r13 = r14.m(r0, r13)
            if (r13 != r10) goto L84
            goto L83
        L4b:
            long r11 = r0.n
            r13.s = r14
            r13.r = r8
            java.lang.Object r0 = defpackage.zf5.A(r11, r13)
            if (r0 != r10) goto L58
            goto L83
        L58:
            r0 = r14
        L59:
            r8 = 0
            int r14 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r14 <= 0) goto L77
            r13.s = r0
            r13.r = r7
            mm3 r14 = defpackage.mm3.o
            java.lang.Object r14 = r0.m(r14, r13)
            if (r14 != r10) goto L6c
            goto L83
        L6c:
            r13.s = r0
            r13.r = r6
            java.lang.Object r14 = defpackage.zf5.A(r1, r13)
            if (r14 != r10) goto L77
            goto L83
        L77:
            r13.s = r4
            r13.r = r5
            mm3 r14 = defpackage.mm3.p
            java.lang.Object r13 = r0.m(r14, r13)
            if (r13 != r10) goto L84
        L83:
            return r10
        L84:
            t64 r13 = defpackage.t64.a
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qr3.q(java.lang.Object):java.lang.Object");
    }
}
