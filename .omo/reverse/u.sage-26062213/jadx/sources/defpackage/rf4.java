package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rf4 extends bv3 implements ff1 {
    public int r;
    public /* synthetic */ b81 s;
    public /* synthetic */ Object[] t;

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        rf4 rf4Var = new rf4(3, (dh0) obj3);
        rf4Var.s = (b81) obj;
        rf4Var.t = (Object[]) obj2;
        return rf4Var.q(t64.a);
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        sf0 sf0Var;
        int i = this.r;
        sf0 sf0Var2 = null;
        if (i == 0) {
            gg4.T(obj);
            b81 b81Var = this.s;
            sf0[] sf0VarArr = (sf0[]) this.t;
            int length = sf0VarArr.length;
            int i2 = 0;
            while (true) {
                sf0Var = qf0.a;
                if (i2 >= length) {
                    break;
                }
                sf0 sf0Var3 = sf0VarArr[i2];
                if (!nt1.g(sf0Var3, sf0Var)) {
                    sf0Var2 = sf0Var3;
                    break;
                }
                i2++;
            }
            if (sf0Var2 != null) {
                sf0Var = sf0Var2;
            }
            this.r = 1;
            Object objM = b81Var.m(sf0Var, this);
            ri0 ri0Var = ri0.n;
            if (objM == ri0Var) {
                return ri0Var;
            }
        } else {
            if (i != 1) {
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            gg4.T(obj);
        }
        return t64.a;
    }
}
