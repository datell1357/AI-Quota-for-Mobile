package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class h0 implements fi0 {
    public final gi0 n;

    public h0(gi0 gi0Var) {
        this.n = gi0Var;
    }

    @Override // defpackage.hi0
    public final /* bridge */ hi0 F(hi0 hi0Var) {
        return ca.B(this, hi0Var);
    }

    @Override // defpackage.hi0
    public /* bridge */ fi0 K(gi0 gi0Var) {
        return ca.r(this, gi0Var);
    }

    @Override // defpackage.hi0
    public final Object R(df1 df1Var, Object obj) {
        return df1Var.f(obj, this);
    }

    @Override // defpackage.hi0
    public /* bridge */ hi0 Y(gi0 gi0Var) {
        return ca.z(this, gi0Var);
    }

    @Override // defpackage.fi0
    public final gi0 getKey() {
        return this.n;
    }
}
