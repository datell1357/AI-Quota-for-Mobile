package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cn0 extends bv3 implements pe1 {
    public final /* synthetic */ int r = 1;
    public int s;
    public final /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Object f55u;
    public Object v;
    public final /* synthetic */ Object w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cn0(w33 w33Var, fn0 fn0Var, u33 u33Var, dh0 dh0Var) {
        super(1, dh0Var);
        this.v = w33Var;
        this.t = fn0Var;
        this.w = u33Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        Object obj2 = this.w;
        Object obj3 = this.t;
        dh0 dh0Var = (dh0) obj;
        switch (i) {
            case 0:
                return new cn0((w33) this.v, (fn0) obj3, (u33) obj2, dh0Var).q(t64Var);
            case 1:
                return new cn0((fn0) obj3, (hi0) this.v, (df1) obj2, dh0Var).q(t64Var);
            default:
                return new cn0((s51) obj3, obj2, dh0Var).q(t64Var);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x0150, code lost:
    
        if (r12 != r6) goto L91;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00df  */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r12) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cn0.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cn0(s51 s51Var, Object obj, dh0 dh0Var) {
        super(1, dh0Var);
        this.t = s51Var;
        this.w = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cn0(fn0 fn0Var, hi0 hi0Var, df1 df1Var, dh0 dh0Var) {
        super(1, dh0Var);
        this.t = fn0Var;
        this.v = hi0Var;
        this.w = df1Var;
    }
}
