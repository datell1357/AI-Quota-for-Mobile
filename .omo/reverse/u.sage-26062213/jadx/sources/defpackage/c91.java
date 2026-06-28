package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c91 implements a81 {
    public final /* synthetic */ int n;
    public final /* synthetic */ a81 o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ ef1 q;

    public /* synthetic */ c91(a81 a81Var, Object obj, ef1 ef1Var, int i) {
        this.n = i;
        this.o = a81Var;
        this.p = obj;
        this.q = ef1Var;
    }

    @Override // defpackage.a81
    public final Object b(b81 b81Var, dh0 dh0Var) {
        int i = this.n;
        t64 t64Var = t64.a;
        ri0 ri0Var = ri0.n;
        ef1 ef1Var = this.q;
        Object obj = this.p;
        a81 a81Var = this.o;
        switch (i) {
            case 0:
                Object objO = w80.o(dh0Var, b81Var, ag0.p, new t81((ff1) ef1Var, null, 2), new a81[]{a81Var, (a81) obj});
                return objO == ri0Var ? objO : t64Var;
            default:
                Object objB = a81Var.b(new ke(b81Var, (ga3) obj, (ba4) ef1Var, 3), dh0Var);
                return objB == ri0Var ? objB : t64Var;
        }
    }
}
