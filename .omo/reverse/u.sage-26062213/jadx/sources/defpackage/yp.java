package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yp implements df1 {
    public final /* synthetic */ int n = 1;
    public final /* synthetic */ boolean o;
    public final /* synthetic */ int p;
    public final /* synthetic */ ef1 q;

    public /* synthetic */ yp(boolean z, ne1 ne1Var, int i, int i2) {
        this.o = z;
        this.q = ne1Var;
        this.p = i2;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.n;
        t64 t64Var = t64.a;
        int i2 = this.p;
        ef1 ef1Var = this.q;
        boolean z = this.o;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                n44.C(z, (ne1) ef1Var, (ag1) obj, qj0.f0(1), i2);
                break;
            default:
                ((Integer) obj2).getClass();
                fl4.c(z, (df1) ef1Var, (ag1) obj, qj0.f0(i2 | 1));
                break;
        }
        return t64Var;
    }

    public /* synthetic */ yp(boolean z, df1 df1Var, int i) {
        this.o = z;
        this.q = df1Var;
        this.p = i;
    }
}
