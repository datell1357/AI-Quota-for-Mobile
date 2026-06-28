package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h82 extends xx1 implements ne1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h82(Object obj, Object obj2, Object obj3, int i) {
        super(0);
        this.o = i;
        this.p = obj;
        this.q = obj2;
        this.r = obj3;
    }

    @Override // defpackage.ne1
    public final Object a() {
        int i = this.o;
        t64 t64Var = t64.a;
        Object obj = this.r;
        Object obj2 = this.q;
        Object obj3 = this.p;
        switch (i) {
            case 0:
                df1 df1Var = (df1) obj3;
                k82 k82Var = (k82) ((w33) obj2).n;
                ek1 ek1Var = (ek1) obj;
                kg2 kg2Var = k82Var.z;
                if (kg2Var == null) {
                    long[] jArr = td3.a;
                    kg2Var = new kg2();
                    k82Var.z = kg2Var;
                }
                Object objG = kg2Var.g(ek1Var);
                if (objG == null) {
                    objG = new f82(k82Var);
                    kg2Var.m(ek1Var, objG);
                }
                f82 f82Var = (f82) objG;
                f82Var.n = false;
                df1Var.f(f82Var, ek1Var);
                break;
            default:
                a0 a0Var = (a0) obj3;
                a0Var.removeOnAttachStateChangeListener((eb) obj2);
                nt1.B(a0Var).a.remove((q73) obj);
                break;
        }
        return t64Var;
    }
}
