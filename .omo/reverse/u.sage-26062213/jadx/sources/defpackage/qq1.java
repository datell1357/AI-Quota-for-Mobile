package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qq1 extends bv3 implements df1 {
    public /* synthetic */ float r;

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((qq1) o((dh0) obj2, Float.valueOf(((Number) obj).floatValue()))).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        qq1 qq1Var = new qq1(2, dh0Var);
        qq1Var.r = ((Number) obj).floatValue();
        return qq1Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        gg4.T(obj);
        return Boolean.valueOf(this.r > 0.0f);
    }
}
