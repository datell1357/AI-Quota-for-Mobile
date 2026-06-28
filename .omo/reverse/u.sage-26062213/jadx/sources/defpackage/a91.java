package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a91 extends bv3 implements df1 {
    public /* synthetic */ int r;

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((a91) o((dh0) obj2, Integer.valueOf(((Number) obj).intValue()))).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        a91 a91Var = new a91(2, dh0Var);
        a91Var.r = ((Number) obj).intValue();
        return a91Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        gg4.T(obj);
        return Boolean.valueOf(this.r > 0);
    }
}
