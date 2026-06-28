package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class ds extends fh0 {
    public /* synthetic */ Object q;
    public int r;
    public final /* synthetic */ xq s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ds(xq xqVar, dh0 dh0Var) {
        super(dh0Var);
        this.s = xqVar;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.q = obj;
        this.r |= Integer.MIN_VALUE;
        return this.s.m(null, this);
    }
}
