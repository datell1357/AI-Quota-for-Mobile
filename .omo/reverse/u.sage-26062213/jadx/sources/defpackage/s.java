package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ vf2 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ hy2 f304u;
    public final /* synthetic */ e60 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ s(vf2 vf2Var, hy2 hy2Var, e60 e60Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = vf2Var;
        this.f304u = hy2Var;
        this.v = e60Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((s) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        switch (this.r) {
            case 0:
                return new s(this.t, this.f304u, this.v, dh0Var, 0);
            default:
                return new s(this.t, this.f304u, this.v, dh0Var, 1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003d, code lost:
    
        if (r3.b(r9, r10) == r6) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006d, code lost:
    
        if (r3.b(r9, r10) == r6) goto L31;
     */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r11) {
        /*
            r10 = this;
            int r0 = r10.r
            t64 r1 = defpackage.t64.a
            e60 r2 = r10.v
            vf2 r3 = r10.t
            r4 = 0
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            ri0 r6 = defpackage.ri0.n
            r7 = 1
            r8 = 2
            hy2 r9 = r10.f304u
            switch(r0) {
                case 0: goto L44;
                default: goto L14;
            }
        L14:
            int r0 = r10.s
            if (r0 == 0) goto L29
            if (r0 == r7) goto L25
            if (r0 != r8) goto L20
            defpackage.gg4.T(r11)
            goto L41
        L20:
            defpackage.k21.n(r5)
            r1 = r4
            goto L43
        L25:
            defpackage.gg4.T(r11)
            goto L37
        L29:
            defpackage.gg4.T(r11)
            long r4 = defpackage.f60.a
            r10.s = r7
            java.lang.Object r11 = defpackage.zf5.A(r4, r10)
            if (r11 != r6) goto L37
            goto L3f
        L37:
            r10.s = r8
            java.lang.Object r10 = r3.b(r9, r10)
            if (r10 != r6) goto L41
        L3f:
            r1 = r6
            goto L43
        L41:
            r2.O = r9
        L43:
            return r1
        L44:
            int r0 = r10.s
            if (r0 == 0) goto L59
            if (r0 == r7) goto L55
            if (r0 != r8) goto L50
            defpackage.gg4.T(r11)
            goto L71
        L50:
            defpackage.k21.n(r5)
            r1 = r4
            goto L73
        L55:
            defpackage.gg4.T(r11)
            goto L67
        L59:
            defpackage.gg4.T(r11)
            long r4 = defpackage.f60.a
            r10.s = r7
            java.lang.Object r11 = defpackage.zf5.A(r4, r10)
            if (r11 != r6) goto L67
            goto L6f
        L67:
            r10.s = r8
            java.lang.Object r10 = r3.b(r9, r10)
            if (r10 != r6) goto L71
        L6f:
            r1 = r6
            goto L73
        L71:
            r2.S = r9
        L73:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.s.q(java.lang.Object):java.lang.Object");
    }
}
