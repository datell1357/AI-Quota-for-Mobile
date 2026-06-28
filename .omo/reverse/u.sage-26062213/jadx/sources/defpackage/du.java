package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class du extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public /* synthetic */ boolean s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ du(int i, dh0 dh0Var, int i2) {
        super(i, dh0Var);
        this.r = i2;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        Boolean bool = (Boolean) obj;
        bool.booleanValue();
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((du) o(dh0Var, bool)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = 2;
        switch (this.r) {
            case 0:
                du duVar = new du(i, dh0Var, 0);
                duVar.s = ((Boolean) obj).booleanValue();
                return duVar;
            default:
                du duVar2 = new du(i, dh0Var, 1);
                duVar2.s = ((Boolean) obj).booleanValue();
                return duVar2;
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        boolean z = this.s;
        switch (i) {
            case 0:
                gg4.T(obj);
                break;
            default:
                gg4.T(obj);
                break;
        }
        return Boolean.valueOf(z);
    }
}
