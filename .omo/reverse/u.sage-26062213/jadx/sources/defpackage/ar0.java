package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ar0 implements hi0 {
    public final hi0 n;

    public ar0(hi0 hi0Var) {
        this.n = hi0Var;
    }

    @Override // defpackage.hi0
    public final hi0 F(hi0 hi0Var) {
        hi0 hi0VarF = this.n.F(hi0Var);
        int i = m94.b;
        ii0 ii0Var = ji0.o;
        ji0 ji0Var = (ji0) K(ii0Var);
        ji0 ji0Var2 = (ji0) hi0VarF.K(ii0Var);
        if ((ji0Var instanceof br0) && ji0Var != ji0Var2) {
            ((br0) ji0Var).q = 0;
        }
        return new ar0(hi0VarF);
    }

    @Override // defpackage.hi0
    public final fi0 K(gi0 gi0Var) {
        return this.n.K(gi0Var);
    }

    @Override // defpackage.hi0
    public final Object R(df1 df1Var, Object obj) {
        return this.n.R(df1Var, obj);
    }

    @Override // defpackage.hi0
    public final hi0 Y(gi0 gi0Var) {
        hi0 hi0VarY = this.n.Y(gi0Var);
        int i = m94.b;
        ii0 ii0Var = ji0.o;
        ji0 ji0Var = (ji0) K(ii0Var);
        ji0 ji0Var2 = (ji0) hi0VarY.K(ii0Var);
        if ((ji0Var instanceof br0) && ji0Var != ji0Var2) {
            ((br0) ji0Var).q = 0;
        }
        return new ar0(hi0VarY);
    }

    public final boolean equals(Object obj) {
        return nt1.g(this.n, obj);
    }

    public final int hashCode() {
        return this.n.hashCode();
    }

    public final String toString() {
        return "ForwardingCoroutineContext(delegate=" + this.n + ")";
    }
}
