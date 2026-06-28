package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lp2 extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ ka1 p;
    public final /* synthetic */ ka1 q;
    public final /* synthetic */ int r;
    public final /* synthetic */ yc s;
    public final /* synthetic */ Object t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ lp2(ka1 ka1Var, ka1 ka1Var2, Object obj, int i, yc ycVar, int i2) {
        super(1);
        this.o = i2;
        this.p = ka1Var;
        this.q = ka1Var2;
        this.t = obj;
        this.r = i;
        this.s = ycVar;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.o;
        yc ycVar = this.s;
        int i2 = this.r;
        Object obj2 = this.t;
        ka1 ka1Var = this.q;
        ka1 ka1Var2 = this.p;
        switch (i) {
            case 0:
                zv zvVar = (zv) obj;
                if (ka1Var2 != ((dh) ((q9) w80.S(ka1Var)).getFocusOwner()).f()) {
                    return Boolean.TRUE;
                }
                boolean zL = dm0.L(ka1Var, (ka1) obj2, i2, ycVar);
                Boolean boolValueOf = Boolean.valueOf(zL);
                if (zL || !zvVar.a()) {
                    return boolValueOf;
                }
                return null;
            default:
                zv zvVar2 = (zv) obj;
                if (ka1Var2 != ((dh) ((q9) w80.S(ka1Var)).getFocusOwner()).f()) {
                    return Boolean.TRUE;
                }
                boolean zH = qn0.H(i2, ycVar, ka1Var, (l33) obj2);
                Boolean boolValueOf2 = Boolean.valueOf(zH);
                if (zH || !zvVar2.a()) {
                    return boolValueOf2;
                }
                return null;
        }
    }
}
