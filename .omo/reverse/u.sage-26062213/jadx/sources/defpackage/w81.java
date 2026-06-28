package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class w81 extends fh0 {
    public uq q;
    public /* synthetic */ Object r;
    public int s;
    public final /* synthetic */ uq t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Object f395u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w81(uq uqVar, dh0 dh0Var) {
        super(dh0Var);
        this.t = uqVar;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.r = obj;
        this.s |= Integer.MIN_VALUE;
        return this.t.m(null, this);
    }
}
