package defpackage;

import u.sage.a;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zt extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public final /* synthetic */ a s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ zt(a aVar, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.s = aVar;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
            case 0:
                ((zt) o(dh0Var, qi0Var)).q(t64Var);
                break;
            default:
                ((zt) o(dh0Var, qi0Var)).q(t64Var);
                break;
        }
        return t64Var;
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        a aVar = this.s;
        switch (i) {
            case 0:
                return new zt(aVar, dh0Var, 0);
            default:
                return new zt(aVar, dh0Var, 1);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        a aVar = this.s;
        switch (i) {
            case 0:
                gg4.T(obj);
                aVar.x("ActionShowNotification");
                break;
            default:
                gg4.T(obj);
                ra3 ra3Var = ez3.a;
                aVar.j();
                ra3Var.getClass();
                ra3.c(new Object[0]);
                aVar.stopForeground(1);
                aVar.j();
                ra3.c(new Object[0]);
                aVar.stopSelf();
                aVar.j();
                ra3.c(new Object[0]);
                break;
        }
        return t64Var;
    }
}
