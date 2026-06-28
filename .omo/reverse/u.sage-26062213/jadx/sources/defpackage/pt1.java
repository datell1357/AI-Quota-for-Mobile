package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pt1 extends fh0 {
    public int q;
    public final /* synthetic */ df1 r;
    public final /* synthetic */ dh0 s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pt1(dh0 dh0Var, hi0 hi0Var, df1 df1Var, dh0 dh0Var2) {
        super(dh0Var, hi0Var);
        this.r = df1Var;
        this.s = dh0Var2;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.q;
        if (i != 0) {
            if (i != 1) {
                k21.n("This coroutine had already completed");
                return null;
            }
            this.q = 2;
            gg4.T(obj);
            return obj;
        }
        this.q = 1;
        gg4.T(obj);
        df1 df1Var = this.r;
        df1Var.getClass();
        n44.R(2, df1Var);
        return df1Var.f(this.s, this);
    }
}
