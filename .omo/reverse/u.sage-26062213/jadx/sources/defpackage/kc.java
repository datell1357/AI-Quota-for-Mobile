package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kc extends bv3 implements df1 {
    public final /* synthetic */ int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ kc(int i, dh0 dh0Var, int i2) {
        super(i, dh0Var);
        this.r = i2;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                break;
            case 1:
                ((kc) o((dh0) obj2, (a81) obj)).q(t64Var);
                break;
            case 2:
                ((kc) o((dh0) obj2, (b81) obj)).q(t64Var);
                break;
            default:
                ((kc) o((dh0) obj2, (w3) obj)).q(t64Var);
                break;
        }
        return t64Var;
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        switch (this.r) {
            case 0:
                return new kc(2, dh0Var, 0);
            case 1:
                return new kc(2, dh0Var, 1);
            case 2:
                return new kc(2, dh0Var, 2);
            default:
                return new kc(2, dh0Var, 3);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                gg4.T(obj);
                break;
            case 1:
                gg4.T(obj);
                break;
            case 2:
                gg4.T(obj);
                break;
            default:
                gg4.T(obj);
                break;
        }
        return t64Var;
    }
}
