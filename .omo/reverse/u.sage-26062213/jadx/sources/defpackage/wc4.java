package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wc4 extends bv3 implements pe1 {
    public int r;
    public final /* synthetic */ boolean s;
    public final /* synthetic */ String t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ y84 f397u;
    public final /* synthetic */ v43 v;
    public final /* synthetic */ n8 w;
    public final /* synthetic */ ps x;
    public final /* synthetic */ pe1 y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wc4(boolean z, String str, y84 y84Var, v43 v43Var, n8 n8Var, ps psVar, pe1 pe1Var, dh0 dh0Var) {
        super(1, dh0Var);
        this.s = z;
        this.t = str;
        this.f397u = y84Var;
        this.v = v43Var;
        this.w = n8Var;
        this.x = psVar;
        this.y = pe1Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        ps psVar = this.x;
        pe1 pe1Var = this.y;
        return new wc4(this.s, this.t, this.f397u, this.v, this.w, psVar, pe1Var, (dh0) obj).q(t64.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x007d A[RETURN] */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r12) {
        /*
            r11 = this;
            int r0 = r11.r
            r1 = 0
            t64 r2 = defpackage.t64.a
            ps r3 = r11.x
            r4 = 3
            r5 = 2
            r6 = 1
            ri0 r7 = defpackage.ri0.n
            if (r0 == 0) goto L26
            if (r0 == r6) goto L22
            if (r0 == r5) goto L1e
            if (r0 != r4) goto L18
            defpackage.gg4.T(r12)
            goto L7d
        L18:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r11)
            return r1
        L1e:
            defpackage.gg4.T(r12)
            goto L72
        L22:
            defpackage.gg4.T(r12)
            goto L69
        L26:
            defpackage.gg4.T(r12)
            boolean r12 = r11.s
            r0 = 0
            v43 r8 = r11.v
            if (r12 == 0) goto L47
            ra3 r12 = defpackage.ez3.a
            y84 r9 = r11.f397u
            r9.name()
            java.lang.String r10 = r8.a
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r12.getClass()
            defpackage.ra3.m(r0)
            n8 r12 = r11.w
            r12.h(r9, r8)
            goto L51
        L47:
            ra3 r12 = defpackage.ez3.a
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r12.getClass()
            defpackage.ra3.c(r0)
        L51:
            java.lang.String r12 = r8.a
            r11.r = r6
            lm0 r0 = r3.a()
            ns r8 = new ns
            r8.<init>(r6, r12, r1)
            java.lang.Object r12 = defpackage.ht4.o(r0, r8, r11)
            if (r12 != r7) goto L65
            goto L66
        L65:
            r12 = r2
        L66:
            if (r12 != r7) goto L69
            goto L7c
        L69:
            r11.r = r5
            java.lang.Object r12 = r3.h(r11)
            if (r12 != r7) goto L72
            goto L7c
        L72:
            r11.r = r4
            pe1 r12 = r11.y
            java.lang.Object r11 = r12.k(r11)
            if (r11 != r7) goto L7d
        L7c:
            return r7
        L7d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wc4.q(java.lang.Object):java.lang.Object");
    }
}
