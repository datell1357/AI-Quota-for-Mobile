package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class as extends fh0 {
    public /* synthetic */ Object q;
    public int r;
    public final /* synthetic */ bs s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public as(bs bsVar, dh0 dh0Var) {
        super(dh0Var);
        this.s = bsVar;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.q = obj;
        this.r |= Integer.MIN_VALUE;
        return this.s.m(null, this);
    }
}
