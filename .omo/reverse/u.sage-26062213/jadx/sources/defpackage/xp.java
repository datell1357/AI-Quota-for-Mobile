package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xp implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ boolean o;
    public final /* synthetic */ Object p;

    public /* synthetic */ xp(boolean z, ne1 ne1Var) {
        this.n = 1;
        this.o = z;
        this.p = ne1Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.n;
        boolean z = this.o;
        Object obj2 = this.p;
        switch (i) {
            case 0:
                ra0 ra0Var = (ra0) obj2;
                ((up) ra0Var.a).e(z);
                ((tp) ra0Var.b).g(z);
                return new zp((w22) obj, ra0Var, 0);
            case 1:
                ((o83) obj).c(z ? 1.0f : ((Number) ((ne1) obj2).a()).floatValue());
                return t64.a;
            default:
                cb0 cb0Var = (cb0) obj2;
                cb0Var.l(z);
                return new zp((w22) obj, cb0Var, 1);
        }
    }

    public /* synthetic */ xp(nq0 nq0Var, boolean z, int i) {
        this.n = i;
        this.p = nq0Var;
        this.o = z;
    }
}
