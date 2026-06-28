package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ot1 extends d83 {
    public int o;
    public final /* synthetic */ df1 p;
    public final /* synthetic */ dh0 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ot1(dh0 dh0Var, dh0 dh0Var2, df1 df1Var) {
        super(dh0Var);
        this.p = df1Var;
        this.q = dh0Var2;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.o;
        if (i != 0) {
            if (i != 1) {
                k21.n("This coroutine had already completed");
                return null;
            }
            this.o = 2;
            gg4.T(obj);
            return obj;
        }
        this.o = 1;
        gg4.T(obj);
        df1 df1Var = this.p;
        df1Var.getClass();
        n44.R(2, df1Var);
        return df1Var.f(this.q, this);
    }
}
