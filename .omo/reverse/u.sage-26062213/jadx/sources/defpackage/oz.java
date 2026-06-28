package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oz extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ pd t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ float f250u;
    public final /* synthetic */ boolean v;
    public final /* synthetic */ ws1 w;
    public final /* synthetic */ Object x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oz(pd pdVar, float f, boolean z, ws1 ws1Var, pg2 pg2Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 2;
        this.t = pdVar;
        this.f250u = f;
        this.v = z;
        this.w = ws1Var;
        this.x = pg2Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((oz) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.x;
        switch (i) {
            case 0:
                return new oz(this.t, this.f250u, this.v, (pz) obj2, this.w, dh0Var, 0);
            case 1:
                return new oz(this.t, this.f250u, this.v, (a30) obj2, this.w, dh0Var, 1);
            default:
                return new oz(this.t, this.f250u, this.v, this.w, (pg2) obj2, dh0Var);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0051, code lost:
    
        if (r9.e(r1, r16) == r8) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0060, code lost:
    
        if (defpackage.bz0.a(r9, r10, r1, r14, r16) == r8) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:?, code lost:
    
        return r8;
     */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r17) {
        /*
            Method dump skipped, instruction units count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.oz.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ oz(pd pdVar, float f, boolean z, Object obj, ws1 ws1Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = pdVar;
        this.f250u = f;
        this.v = z;
        this.x = obj;
        this.w = ws1Var;
    }
}
