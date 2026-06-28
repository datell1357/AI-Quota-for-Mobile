package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class b91 extends fh0 {
    public /* synthetic */ Object q;
    public int r;
    public final /* synthetic */ uq s;
    public Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public b81 f27u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b91(uq uqVar, dh0 dh0Var) {
        super(dh0Var);
        this.s = uqVar;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.q = obj;
        this.r |= Integer.MIN_VALUE;
        return this.s.m(null, this);
    }
}
