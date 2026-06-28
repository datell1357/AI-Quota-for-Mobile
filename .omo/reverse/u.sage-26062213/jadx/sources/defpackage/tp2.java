package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tp2 extends zq2 {
    public static final tp2 c = new tp2(0, 2, 1);

    @Override // defpackage.zq2
    public final void a(e50 e50Var, kh khVar, xn3 xn3Var, l53 l53Var, ar2 ar2Var) {
        os1 os1Var = (os1) e50Var.d(1);
        int i = os1Var != null ? os1Var.a : 0;
        k30 k30Var = (k30) e50Var.d(0);
        if (i > 0) {
            khVar = new en1(khVar, i);
        }
        k30Var.p(khVar, xn3Var, l53Var, ar2Var != null ? new xh1(ar2Var, xn3Var) : null);
    }
}
