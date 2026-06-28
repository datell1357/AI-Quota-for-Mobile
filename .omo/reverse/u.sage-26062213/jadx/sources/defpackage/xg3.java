package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xg3 implements ff1 {
    public final /* synthetic */ zp1 n;
    public final /* synthetic */ boolean o;
    public final /* synthetic */ boolean p;
    public final /* synthetic */ q93 q;
    public final /* synthetic */ ne1 r;

    public xg3(zp1 zp1Var, boolean z, boolean z2, q93 q93Var, ne1 ne1Var) {
        this.n = zp1Var;
        this.o = z;
        this.p = z2;
        this.q = q93Var;
        this.r = ne1Var;
    }

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        ag1 ag1Var = (ag1) obj2;
        ((Number) obj3).intValue();
        ag1Var.W(-1525724089);
        Object objK = ag1Var.K();
        if (objK == rb0.a) {
            objK = new vf2();
            ag1Var.g0(objK);
        }
        vf2 vf2Var = (vf2) objK;
        nd2 nd2VarC = wp1.a(kd2.b, vf2Var, this.n).c(new wg3(this.r, null, vf2Var, this.q, this.o, this.p));
        ag1Var.p(false);
        return nd2VarC;
    }
}
