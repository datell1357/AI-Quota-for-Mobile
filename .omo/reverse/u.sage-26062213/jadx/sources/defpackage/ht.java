package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ht extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ pt t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ht(pt ptVar, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = ptVar;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((ht) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        pt ptVar = this.t;
        switch (i) {
            case 0:
                return new ht(ptVar, dh0Var, 0);
            case 1:
                return new ht(ptVar, dh0Var, 1);
            default:
                return new ht(ptVar, dh0Var, 2);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        ri0 ri0Var = ri0.n;
        pt ptVar = this.t;
        switch (i) {
            case 0:
                int i2 = this.s;
                if (i2 == 0) {
                    gg4.T(obj);
                    a81 a81Var = (a81) ptVar.j.getValue();
                    ct ctVar = new ct(ptVar, 1);
                    this.s = 1;
                    if (a81Var.b(ctVar, this) == ri0Var) {
                    }
                } else if (i2 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
            case 1:
                int i3 = this.s;
                if (i3 == 0) {
                    gg4.T(obj);
                    a81 a81Var2 = (a81) ((nv3) ptVar.c().c).getValue();
                    ct ctVar2 = new ct(ptVar, 2);
                    this.s = 1;
                    if (a81Var2.b(ctVar2, this) == ri0Var) {
                    }
                } else if (i3 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
            default:
                int i4 = this.s;
                if (i4 == 0) {
                    gg4.T(obj);
                    int i5 = 0;
                    a81[] a81VarArr = {new yq(qj0.D(ptVar.l().c()), 10), new mt(0, new yq(ptVar.i, 9)), new yq(qj0.D((a81) ptVar.l().d.getValue()), 11)};
                    int i6 = u81.a;
                    q30 q30Var = new q30(a81VarArr.length == 0 ? g01.n : new ii(i5, a81VarArr), d01.n, -2, vy.n, 1);
                    ct ctVar3 = new ct(ptVar, 3);
                    this.s = 1;
                    if (q30Var.b(ctVar3, this) == ri0Var) {
                    }
                } else if (i4 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
        }
        return ri0Var;
    }
}
