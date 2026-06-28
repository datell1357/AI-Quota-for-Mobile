package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vs implements a81 {
    public final /* synthetic */ int n;
    public final /* synthetic */ a81 o;
    public final /* synthetic */ pt p;

    public /* synthetic */ vs(a81 a81Var, pt ptVar, int i) {
        this.n = i;
        this.o = a81Var;
        this.p = ptVar;
    }

    @Override // defpackage.a81
    public final Object b(b81 b81Var, dh0 dh0Var) {
        int i = this.n;
        t64 t64Var = t64.a;
        ri0 ri0Var = ri0.n;
        pt ptVar = this.p;
        a81 a81Var = this.o;
        switch (i) {
            case 0:
                Object objB = a81Var.b(new us(b81Var, ptVar, 0), dh0Var);
                return objB == ri0Var ? objB : t64Var;
            default:
                Object objB2 = a81Var.b(new us(b81Var, ptVar, 1), dh0Var);
                return objB2 == ri0Var ? objB2 : t64Var;
        }
    }
}
