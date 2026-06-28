package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class an0 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public /* synthetic */ boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ fn0 f9u;
    public final /* synthetic */ int v;
    public Object w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ an0(fn0 fn0Var, int i, dh0 dh0Var, int i2) {
        super(2, dh0Var);
        this.r = i2;
        this.f9u = fn0Var;
        this.v = i;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        Boolean bool = (Boolean) obj;
        bool.booleanValue();
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((an0) o(dh0Var, bool)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        int i2 = this.v;
        fn0 fn0Var = this.f9u;
        switch (i) {
            case 0:
                an0 an0Var = new an0(fn0Var, i2, dh0Var, 0);
                an0Var.t = ((Boolean) obj).booleanValue();
                return an0Var;
            default:
                an0 an0Var2 = new an0(fn0Var, i2, dh0Var, 1);
                an0Var2.t = ((Boolean) obj).booleanValue();
                return an0Var2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005d  */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v7 */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r10) {
        /*
            r9 = this;
            int r0 = r9.r
            int r1 = r9.v
            r2 = 0
            java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
            ri0 r4 = defpackage.ri0.n
            r5 = 1
            r6 = 2
            fn0 r7 = r9.f9u
            switch(r0) {
                case 0: goto L62;
                default: goto L10;
            }
        L10:
            int r0 = r9.s
            if (r0 == 0) goto L28
            if (r0 == r5) goto L22
            if (r0 != r6) goto L1e
            java.lang.Object r9 = r9.w
            defpackage.gg4.T(r10)
            goto L4d
        L1e:
            defpackage.k21.n(r3)
            goto L61
        L22:
            boolean r0 = r9.t
            defpackage.gg4.T(r10)
            goto L38
        L28:
            defpackage.gg4.T(r10)
            boolean r0 = r9.t
            r9.t = r0
            r9.s = r5
            java.lang.Object r10 = r7.j(r9)
            if (r10 != r4) goto L38
            goto L48
        L38:
            if (r0 == 0) goto L54
            vs1 r0 = r7.i()
            r9.w = r10
            r9.s = r6
            java.lang.Object r9 = r0.b(r9)
            if (r9 != r4) goto L4a
        L48:
            r2 = r4
            goto L61
        L4a:
            r8 = r10
            r10 = r9
            r9 = r8
        L4d:
            java.lang.Number r10 = (java.lang.Number) r10
            int r1 = r10.intValue()
            r10 = r9
        L54:
            am0 r2 = new am0
            if (r10 == 0) goto L5d
            int r9 = r10.hashCode()
            goto L5e
        L5d:
            r9 = 0
        L5e:
            r2.<init>(r9, r1, r10)
        L61:
            return r2
        L62:
            int r0 = r9.s
            if (r0 == 0) goto L80
            if (r0 == r5) goto L78
            if (r0 != r6) goto L74
            boolean r0 = r9.t
            java.lang.Object r9 = r9.w
            java.lang.Throwable r9 = (java.lang.Throwable) r9
            defpackage.gg4.T(r10)
            goto Laa
        L74:
            defpackage.k21.n(r3)
            goto Lc0
        L78:
            boolean r0 = r9.t
            defpackage.gg4.T(r10)     // Catch: java.lang.Throwable -> L7e
            goto L90
        L7e:
            r10 = move-exception
            goto L93
        L80:
            defpackage.gg4.T(r10)
            boolean r0 = r9.t
            r9.t = r0     // Catch: java.lang.Throwable -> L7e
            r9.s = r5     // Catch: java.lang.Throwable -> L7e
            java.lang.Object r10 = defpackage.fn0.h(r7, r0, r9)     // Catch: java.lang.Throwable -> L7e
            if (r10 != r4) goto L90
            goto La5
        L90:
            sr3 r10 = (defpackage.sr3) r10     // Catch: java.lang.Throwable -> L7e
            goto Lb7
        L93:
            if (r0 == 0) goto Lb1
            vs1 r1 = r7.i()
            r9.w = r10
            r9.t = r0
            r9.s = r6
            java.lang.Object r9 = r1.b(r9)
            if (r9 != r4) goto La7
        La5:
            r2 = r4
            goto Lc0
        La7:
            r8 = r10
            r10 = r9
            r9 = r8
        Laa:
            java.lang.Number r10 = (java.lang.Number) r10
            int r1 = r10.intValue()
            r10 = r9
        Lb1:
            x13 r9 = new x13
            r9.<init>(r10, r1)
            r10 = r9
        Lb7:
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r0)
            js2 r2 = new js2
            r2.<init>(r10, r9)
        Lc0:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.an0.q(java.lang.Object):java.lang.Object");
    }
}
