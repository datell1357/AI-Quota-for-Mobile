package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cx0 extends bv3 implements ff1 {
    public final /* synthetic */ int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ cx0(int i, dh0 dh0Var, int i2) {
        super(i, dh0Var);
        this.r = i2;
    }

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        int i = this.r;
        t64 t64Var = t64.a;
        int i2 = 3;
        switch (i) {
            case 0:
                long j = ((go2) obj2).a;
                new cx0(i2, (dh0) obj3, 0).q(t64Var);
                break;
            default:
                ((Number) obj2).floatValue();
                new cx0(i2, (dh0) obj3, 1).q(t64Var);
                break;
        }
        return t64Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                gg4.T(obj);
                break;
            default:
                gg4.T(obj);
                break;
        }
        return t64Var;
    }
}
