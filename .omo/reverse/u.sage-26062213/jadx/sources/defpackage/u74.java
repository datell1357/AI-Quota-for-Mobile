package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u74 implements fi0 {
    public final u74 n;
    public final fn0 o;

    public u74(u74 u74Var, fn0 fn0Var) {
        this.n = u74Var;
        this.o = fn0Var;
    }

    @Override // defpackage.hi0
    public final /* bridge */ hi0 F(hi0 hi0Var) {
        return ca.B(this, hi0Var);
    }

    @Override // defpackage.hi0
    public final /* bridge */ fi0 K(gi0 gi0Var) {
        return ca.r(this, gi0Var);
    }

    @Override // defpackage.hi0
    public final Object R(df1 df1Var, Object obj) {
        return df1Var.f(obj, this);
    }

    @Override // defpackage.hi0
    public final /* bridge */ hi0 Y(gi0 gi0Var) {
        return ca.z(this, gi0Var);
    }

    public final void a(fn0 fn0Var) {
        if (this.o == fn0Var) {
            k21.n("Calling updateData inside updateData on the same DataStore instance is not supported\nsince updates made in the parent updateData call will not be visible to the nested\nupdateData call. See https://issuetracker.google.com/issues/241760537 for details.");
            return;
        }
        u74 u74Var = this.n;
        if (u74Var != null) {
            u74Var.a(fn0Var);
        }
    }

    @Override // defpackage.fi0
    public final gi0 getKey() {
        return bx3.q;
    }
}
