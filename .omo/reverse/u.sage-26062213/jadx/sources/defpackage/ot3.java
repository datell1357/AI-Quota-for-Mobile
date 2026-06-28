package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ot3 extends xx1 implements df1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ pt3 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ot3(pt3 pt3Var, int i) {
        super(2);
        this.o = i;
        this.p = pt3Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.o;
        t64 t64Var = t64.a;
        pt3 pt3Var = this.p;
        switch (i) {
            case 0:
                pt3Var.a().o = (zb0) obj2;
                break;
            case 1:
                lz1 lz1VarA = pt3Var.a();
                ((xy1) obj).e0(new hz1(lz1VarA, (df1) obj2, lz1VarA.C));
                break;
            default:
                xy1 xy1Var = (xy1) obj;
                st3 st3Var = pt3Var.a;
                lz1 lz1Var = xy1Var.U;
                if (lz1Var == null) {
                    lz1Var = new lz1(xy1Var, st3Var);
                    xy1Var.U = lz1Var;
                }
                pt3Var.b = lz1Var;
                pt3Var.a().g();
                lz1 lz1VarA2 = pt3Var.a();
                if (lz1VarA2.p != st3Var) {
                    lz1VarA2.p = st3Var;
                    lz1VarA2.i(false);
                    xy1.X(lz1VarA2.n, false, 7);
                }
                break;
        }
        return t64Var;
    }
}
