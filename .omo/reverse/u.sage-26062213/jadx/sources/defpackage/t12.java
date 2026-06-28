package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t12 extends ir3 {
    public final dh0 s;

    public t12(hi0 hi0Var, df1 df1Var) {
        super(hi0Var, false);
        this.s = dm0.s(this, this, df1Var);
    }

    @Override // defpackage.bv1
    public final void d0() throws Throwable {
        try {
            tu0.a(dm0.A(this.s), t64.a);
        } catch (Throwable th) {
            th = th;
            if (th instanceof ru0) {
                th = ((ru0) th).n;
            }
            g(gg4.q(th));
            throw th;
        }
    }
}
