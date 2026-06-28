package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ls extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ long t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ls(long j, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = j;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                ((ls) o((dh0) obj2, (hg2) obj)).q(t64Var);
                break;
            default:
                ((ls) o((dh0) obj2, (bg3) obj)).q(t64Var);
                break;
        }
        return t64Var;
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        switch (this.r) {
            case 0:
                ls lsVar = new ls(this.t, dh0Var, 0);
                lsVar.s = obj;
                return lsVar;
            default:
                ls lsVar2 = new ls(this.t, dh0Var, 1);
                lsVar2.s = obj;
                return lsVar2;
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        long j = this.t;
        switch (i) {
            case 0:
                hg2 hg2Var = (hg2) this.s;
                gg4.T(obj);
                rx2 rx2Var = ps.i;
                hg2Var.e(ps.n, new Long(j));
                break;
            default:
                gg4.T(obj);
                dg3 dg3Var = ((bg3) this.s).a;
                dg3Var.d(dg3Var.k, j, 1);
                break;
        }
        return t64Var;
    }
}
