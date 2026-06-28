package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rt0 implements df1 {
    public final /* synthetic */ yh2 n;
    public final /* synthetic */ ut0 o;
    public final /* synthetic */ fc3 p;
    public final /* synthetic */ gp3 q;
    public final /* synthetic */ tt0 r;

    public rt0(yh2 yh2Var, ut0 ut0Var, gc3 gc3Var, gp3 gp3Var, tt0 tt0Var) {
        this.n = yh2Var;
        this.o = ut0Var;
        this.p = gc3Var;
        this.q = gp3Var;
        this.r = tt0Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        ag1 ag1Var = (ag1) obj;
        if ((((Number) obj2).intValue() & 3) == 2 && ag1Var.z()) {
            ag1Var.Q();
        } else {
            yh2 yh2Var = this.n;
            boolean zH = ag1Var.h(yh2Var);
            ut0 ut0Var = this.o;
            boolean zH2 = zH | ag1Var.h(ut0Var);
            Object objK = ag1Var.K();
            if (zH2 || objK == rb0.a) {
                objK = new md(this.q, yh2Var, ut0Var, 3);
                ag1Var.g0(objK);
            }
            zf5.a(yh2Var, (pe1) objK, ag1Var);
            qj0.j(yh2Var, this.p, qj0.U(-497631156, new qt0(0, this.r, yh2Var), ag1Var), ag1Var, 384);
        }
        return t64.a;
    }
}
