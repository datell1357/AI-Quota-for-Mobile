package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cl3 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ m10 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ wh1 f54u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ cl3(m10 m10Var, wh1 wh1Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = m10Var;
        this.f54u = wh1Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((cl3) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        wh1 wh1Var = this.f54u;
        m10 m10Var = this.t;
        switch (i) {
            case 0:
                return new cl3(m10Var, wh1Var, dh0Var, 0);
            default:
                return new cl3(m10Var, wh1Var, dh0Var, 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c4  */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cl3.q(java.lang.Object):java.lang.Object");
    }
}
