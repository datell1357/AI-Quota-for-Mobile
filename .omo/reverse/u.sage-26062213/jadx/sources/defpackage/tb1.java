package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tb1 extends e83 implements df1 {
    public final /* synthetic */ int p = 0;
    public Object q;
    public int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ ef1 t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tb1(hi0 hi0Var, df1 df1Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.s = hi0Var;
        this.t = df1Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.p;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((tb1) o((dh0) obj2, (ev3) obj)).q(t64Var);
            default:
                return ((tb1) o((dh0) obj2, (bi3) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.p;
        ef1 ef1Var = this.t;
        switch (i) {
            case 0:
                tb1 tb1Var = new tb1((hi0) this.s, (df1) ef1Var, dh0Var);
                tb1Var.q = obj;
                return tb1Var;
            default:
                tb1 tb1Var2 = new tb1((ne1) ef1Var, dh0Var);
                tb1Var2.s = obj;
                return tb1Var2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x009a, code lost:
    
        if (r13 != r4) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00af, code lost:
    
        if (r13 == r4) goto L47;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0083 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v2, types: [ev3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v3, types: [ev3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v8, types: [df1] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0040 -> B:14:0x0041). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x009a -> B:25:0x006a). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00af -> B:25:0x006a). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r13) {
        /*
            r12 = this;
            int r0 = r12.p
            t64 r1 = defpackage.t64.a
            ef1 r2 = r12.t
            java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
            ri0 r4 = defpackage.ri0.n
            r5 = 1
            r6 = 0
            switch(r0) {
                case 0: goto L44;
                default: goto Lf;
            }
        Lf:
            int r0 = r12.r
            if (r0 == 0) goto L24
            if (r0 != r5) goto L1f
            java.lang.Object r0 = r12.q
            java.lang.Object r3 = r12.s
            bi3 r3 = (defpackage.bi3) r3
            defpackage.gg4.T(r13)
            goto L41
        L1f:
            defpackage.k21.n(r3)
            r1 = r6
            goto L43
        L24:
            defpackage.gg4.T(r13)
            java.lang.Object r13 = r12.s
            bi3 r13 = (defpackage.bi3) r13
            r3 = r13
        L2c:
            r13 = r2
            ne1 r13 = (defpackage.ne1) r13
            java.lang.Object r13 = r13.a()
            if (r13 == 0) goto L40
            r12.s = r3
            r12.q = r13
            r12.r = r5
            r3.d(r13, r12)
            r1 = r4
            goto L43
        L40:
            r0 = r6
        L41:
            if (r0 != 0) goto L2c
        L43:
            return r1
        L44:
            java.lang.Object r0 = r12.s
            hi0 r0 = (defpackage.hi0) r0
            int r7 = r12.r
            wv2 r8 = defpackage.wv2.p
            r9 = 3
            r10 = 2
            if (r7 == 0) goto L76
            if (r7 == r5) goto L6e
            if (r7 == r10) goto L63
            if (r7 != r9) goto L5e
            java.lang.Object r3 = r12.q
            ev3 r3 = (defpackage.ev3) r3
            defpackage.gg4.T(r13)
            goto L6a
        L5e:
            defpackage.k21.n(r3)
            r1 = r6
            goto Lb4
        L63:
            java.lang.Object r3 = r12.q
            ev3 r3 = (defpackage.ev3) r3
            defpackage.gg4.T(r13)     // Catch: java.util.concurrent.CancellationException -> L6c
        L6a:
            r13 = r3
            goto L7d
        L6c:
            r13 = move-exception
            goto La1
        L6e:
            java.lang.Object r3 = r12.q
            ev3 r3 = (defpackage.ev3) r3
            defpackage.gg4.T(r13)     // Catch: java.util.concurrent.CancellationException -> L6c
            goto L92
        L76:
            defpackage.gg4.T(r13)
            java.lang.Object r13 = r12.q
            ev3 r13 = (defpackage.ev3) r13
        L7d:
            boolean r3 = defpackage.n44.t0(r0)
            if (r3 == 0) goto Lb4
            r3 = r2
            df1 r3 = (defpackage.df1) r3     // Catch: java.util.concurrent.CancellationException -> L9d
            r12.q = r13     // Catch: java.util.concurrent.CancellationException -> L9d
            r12.r = r5     // Catch: java.util.concurrent.CancellationException -> L9d
            java.lang.Object r3 = r3.f(r13, r12)     // Catch: java.util.concurrent.CancellationException -> L9d
            if (r3 != r4) goto L91
            goto Lb1
        L91:
            r3 = r13
        L92:
            r12.q = r3     // Catch: java.util.concurrent.CancellationException -> L6c
            r12.r = r10     // Catch: java.util.concurrent.CancellationException -> L6c
            java.lang.Object r13 = defpackage.ht4.e(r3, r8, r12)     // Catch: java.util.concurrent.CancellationException -> L6c
            if (r13 != r4) goto L6a
            goto Lb1
        L9d:
            r3 = move-exception
            r11 = r3
            r3 = r13
            r13 = r11
        La1:
            boolean r6 = defpackage.n44.t0(r0)
            if (r6 == 0) goto Lb3
            r12.q = r3
            r12.r = r9
            java.lang.Object r13 = defpackage.ht4.e(r3, r8, r12)
            if (r13 != r4) goto L6a
        Lb1:
            r1 = r4
            goto Lb4
        Lb3:
            throw r13
        Lb4:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tb1.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tb1(ne1 ne1Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.t = ne1Var;
    }
}
