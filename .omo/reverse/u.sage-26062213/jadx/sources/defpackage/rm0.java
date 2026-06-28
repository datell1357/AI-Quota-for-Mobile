package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rm0 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ fn0 t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ rm0(fn0 fn0Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = fn0Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((rm0) o((dh0) obj2, (b81) obj)).q(t64Var);
            case 1:
                return ((rm0) o((dh0) obj2, (qi0) obj)).q(t64Var);
            default:
                return ((rm0) o((dh0) obj2, (qi0) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        fn0 fn0Var = this.t;
        switch (i) {
            case 0:
                return new rm0(fn0Var, dh0Var, 0);
            case 1:
                return new rm0(fn0Var, dh0Var, 1);
            default:
                return new rm0(fn0Var, dh0Var, 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0049, code lost:
    
        if (r10 == r5) goto L22;
     */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r10) throws java.lang.Throwable {
        /*
            r9 = this;
            int r0 = r9.r
            t64 r1 = defpackage.t64.a
            r2 = -1
            r3 = 0
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            ri0 r5 = defpackage.ri0.n
            fn0 r6 = r9.t
            r7 = 1
            r8 = 2
            switch(r0) {
                case 0: goto L9d;
                case 1: goto L57;
                default: goto L11;
            }
        L11:
            wu4 r0 = r6.h
            int r1 = r9.s
            if (r1 == 0) goto L29
            if (r1 == r7) goto L23
            if (r1 != r8) goto L1f
            defpackage.gg4.T(r10)
            goto L4d
        L1f:
            defpackage.k21.n(r4)
            goto L56
        L23:
            defpackage.gg4.T(r10)     // Catch: java.lang.Throwable -> L27
            goto L42
        L27:
            r9 = move-exception
            goto L51
        L29:
            defpackage.gg4.T(r10)
            sr3 r10 = r0.m()
            boolean r10 = r10 instanceof defpackage.y51
            if (r10 == 0) goto L39
            sr3 r3 = r0.m()
            goto L56
        L39:
            r9.s = r7     // Catch: java.lang.Throwable -> L27
            java.lang.Object r10 = defpackage.fn0.f(r6, r9)     // Catch: java.lang.Throwable -> L27
            if (r10 != r5) goto L42
            goto L4b
        L42:
            r9.s = r8
            r10 = 0
            java.lang.Object r10 = defpackage.fn0.g(r6, r10, r9)
            if (r10 != r5) goto L4d
        L4b:
            r3 = r5
            goto L56
        L4d:
            r3 = r10
            sr3 r3 = (defpackage.sr3) r3
            goto L56
        L51:
            x13 r3 = new x13
            r3.<init>(r9, r2)
        L56:
            return r3
        L57:
            int r0 = r9.s
            if (r0 == 0) goto L6c
            if (r0 == r7) goto L68
            if (r0 != r8) goto L63
            defpackage.gg4.T(r10)
            goto L9c
        L63:
            defpackage.k21.n(r4)
            r1 = r3
            goto L9c
        L68:
            defpackage.gg4.T(r10)
            goto L82
        L6c:
            defpackage.gg4.T(r10)
            qd1 r10 = r6.i
            r9.s = r7
            java.lang.Object r10 = r10.p
            z80 r10 = (defpackage.z80) r10
            java.lang.Object r10 = r10.s(r9)
            if (r10 != r5) goto L7e
            goto L7f
        L7e:
            r10 = r1
        L7f:
            if (r10 != r5) goto L82
            goto L9b
        L82:
            vs1 r10 = r6.i()
            a81 r10 = r10.d()
            a81 r10 = defpackage.qj0.u(r10, r2)
            t50 r0 = new t50
            r0.<init>(r8, r6)
            r9.s = r8
            java.lang.Object r9 = r10.b(r0, r9)
            if (r9 != r5) goto L9c
        L9b:
            r1 = r5
        L9c:
            return r1
        L9d:
            int r0 = r9.s
            if (r0 == 0) goto Lac
            if (r0 != r7) goto La7
            defpackage.gg4.T(r10)
            goto Lb8
        La7:
            defpackage.k21.n(r4)
            r1 = r3
            goto Lb8
        Lac:
            defpackage.gg4.T(r10)
            r9.s = r7
            java.lang.Object r9 = defpackage.fn0.e(r6, r9)
            if (r9 != r5) goto Lb8
            r1 = r5
        Lb8:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rm0.q(java.lang.Object):java.lang.Object");
    }
}
