package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sr extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ xr t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ sr(xr xrVar, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = xrVar;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((sr) o((dh0) obj2, (b81) obj)).q(t64Var);
            default:
                return ((sr) o((dh0) obj2, (qi0) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        xr xrVar = this.t;
        switch (i) {
            case 0:
                return new sr(xrVar, dh0Var, 0);
            default:
                return new sr(xrVar, dh0Var, 1);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        xr xrVar = this.t;
        ri0 ri0Var = ri0.n;
        switch (i) {
            case 0:
                int i2 = this.s;
                if (i2 == 0) {
                    gg4.T(obj);
                    ez3.a.getClass();
                    ra3.h(new Object[0]);
                    this.s = 1;
                    if (xr.b(xrVar, this) == ri0Var) {
                    }
                } else if (i2 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
            default:
                int i3 = this.s;
                if (i3 == 0) {
                    gg4.T(obj);
                    String strC = xrVar.c();
                    this.s = 1;
                    if (xr.a(xrVar, strC, this) == ri0Var) {
                    }
                } else if (i3 != 1) {
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                } else {
                    gg4.T(obj);
                }
                break;
        }
        return ri0Var;
    }
}
