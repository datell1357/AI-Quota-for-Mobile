package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bt extends bv3 implements ff1 {
    public final /* synthetic */ int r;
    public /* synthetic */ boolean s;
    public /* synthetic */ boolean t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bt(int i, dh0 dh0Var, int i2) {
        super(i, dh0Var);
        this.r = i2;
    }

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        int i = this.r;
        t64 t64Var = t64.a;
        int i2 = 3;
        Boolean bool = (Boolean) obj;
        switch (i) {
            case 0:
                boolean zBooleanValue = bool.booleanValue();
                boolean zBooleanValue2 = ((Boolean) obj2).booleanValue();
                bt btVar = new bt(i2, (dh0) obj3, 0);
                btVar.s = zBooleanValue;
                btVar.t = zBooleanValue2;
                return btVar.q(t64Var);
            default:
                boolean zBooleanValue3 = bool.booleanValue();
                boolean zBooleanValue4 = ((Boolean) obj2).booleanValue();
                bt btVar2 = new bt(i2, (dh0) obj3, 1);
                btVar2.s = zBooleanValue3;
                btVar2.t = zBooleanValue4;
                return btVar2.q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        switch (this.r) {
            case 0:
                boolean z = this.s;
                boolean z2 = this.t;
                gg4.T(obj);
                return Boolean.valueOf(z2 && !z);
            default:
                boolean z3 = this.s;
                boolean z4 = this.t;
                gg4.T(obj);
                return new js2(Boolean.valueOf(z3), Boolean.valueOf(z4));
        }
    }
}
