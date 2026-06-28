package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s50 extends bv3 implements gf1 {
    public /* synthetic */ d84 r;
    public /* synthetic */ boolean s;
    public /* synthetic */ long t;

    @Override // defpackage.gf1
    public final Object n(Object obj, Object obj2, Object obj3, Object obj4) {
        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
        long jLongValue = ((Number) obj3).longValue();
        s50 s50Var = new s50(4, (dh0) obj4);
        s50Var.r = (d84) obj;
        s50Var.s = zBooleanValue;
        s50Var.t = jLongValue;
        return s50Var.q(t64.a);
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        d84 d84Var = this.r;
        boolean z = this.s;
        long j = this.t;
        gg4.T(obj);
        return new w24(d84Var, Boolean.valueOf(z), new Long(j));
    }
}
