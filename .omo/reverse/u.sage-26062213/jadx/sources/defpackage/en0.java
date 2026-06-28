package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class en0 extends bv3 implements df1 {
    public u33 r;
    public int s;
    public /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ u33 f89u;
    public final /* synthetic */ fn0 v;
    public final /* synthetic */ Object w;
    public final /* synthetic */ boolean x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public en0(u33 u33Var, fn0 fn0Var, Object obj, boolean z, dh0 dh0Var) {
        super(2, dh0Var);
        this.f89u = u33Var;
        this.v = fn0Var;
        this.w = obj;
        this.x = z;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((en0) o((dh0) obj2, (s51) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        en0 en0Var = new en0(this.f89u, this.v, this.w, this.x, dh0Var);
        en0Var.t = obj;
        return en0Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0069, code lost:
    
        if (r10 == r8) goto L21;
     */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r10) throws java.io.IOException {
        /*
            r9 = this;
            int r0 = r9.s
            t64 r1 = defpackage.t64.a
            java.lang.Object r2 = r9.w
            fn0 r3 = r9.v
            u33 r4 = r9.f89u
            r5 = 2
            r6 = 1
            r7 = 0
            ri0 r8 = defpackage.ri0.n
            if (r0 == 0) goto L29
            if (r0 == r6) goto L1f
            if (r0 != r5) goto L19
            defpackage.gg4.T(r10)
            goto L6c
        L19:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r9)
            return r7
        L1f:
            u33 r0 = r9.r
            java.lang.Object r6 = r9.t
            s51 r6 = (defpackage.s51) r6
            defpackage.gg4.T(r10)
            goto L44
        L29:
            defpackage.gg4.T(r10)
            java.lang.Object r10 = r9.t
            s51 r10 = (defpackage.s51) r10
            vs1 r0 = r3.i()
            r9.t = r10
            r9.r = r4
            r9.s = r6
            java.lang.Object r0 = r0.c(r9)
            if (r0 != r8) goto L41
            goto L6b
        L41:
            r6 = r10
            r10 = r0
            r0 = r4
        L44:
            java.lang.Number r10 = (java.lang.Number) r10
            int r10 = r10.intValue()
            r0.n = r10
            r9.t = r7
            r9.r = r7
            r9.s = r5
            java.util.concurrent.atomic.AtomicBoolean r10 = r6.c
            boolean r10 = r10.get()
            if (r10 != 0) goto L85
            java.io.File r10 = r6.a
            cn0 r0 = new cn0
            r0.<init>(r6, r2, r7)
            java.lang.Object r10 = defpackage.zf5.h(r10, r0, r9)
            if (r10 != r8) goto L68
            goto L69
        L68:
            r10 = r1
        L69:
            if (r10 != r8) goto L6c
        L6b:
            return r8
        L6c:
            boolean r9 = r9.x
            if (r9 == 0) goto L84
            wu4 r9 = r3.h
            am0 r10 = new am0
            if (r2 == 0) goto L7b
            int r0 = r2.hashCode()
            goto L7c
        L7b:
            r0 = 0
        L7c:
            int r3 = r4.n
            r10.<init>(r0, r3, r2)
            r9.v(r10)
        L84:
            return r1
        L85:
            java.lang.String r9 = "This scope has already been closed."
            defpackage.k21.n(r9)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.en0.q(java.lang.Object):java.lang.Object");
    }
}
