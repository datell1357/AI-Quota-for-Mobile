package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class im0 extends bv3 implements pe1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ Object t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ im0(Object obj, dh0 dh0Var, int i) {
        super(1, dh0Var);
        this.r = i;
        this.t = obj;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        Object obj2 = this.t;
        dh0 dh0Var = (dh0) obj;
        switch (i) {
            case 0:
                return new im0((gm0) obj2, dh0Var, 0).q(t64Var);
            default:
                return new im0((cn0) obj2, dh0Var, 1).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        Object obj2 = this.t;
        ri0 ri0Var = ri0.n;
        switch (i) {
            case 0:
                int i2 = this.s;
                t64 t64Var = t64.a;
                if (i2 == 0) {
                    gg4.T(obj);
                    this.s = 1;
                    ((gm0) obj2).a();
                    if (t64Var == ri0Var) {
                        return ri0Var;
                    }
                } else {
                    if (i2 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    gg4.T(obj);
                }
                return t64Var;
            default:
                int i3 = this.s;
                if (i3 == 0) {
                    gg4.T(obj);
                    this.s = 1;
                    Object objK = ((cn0) obj2).k(this);
                    return objK == ri0Var ? ri0Var : objK;
                }
                if (i3 == 1) {
                    gg4.T(obj);
                    return obj;
                }
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }
}
