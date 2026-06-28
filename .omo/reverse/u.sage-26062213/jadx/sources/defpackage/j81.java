package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class j81 extends fh0 {
    public /* synthetic */ Object q;
    public int r;
    public final /* synthetic */ k81 s;
    public k81 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public b81 f145u;
    public sb3 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j81(k81 k81Var, dh0 dh0Var) {
        super(dh0Var);
        this.s = k81Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.q = obj;
        this.r |= Integer.MIN_VALUE;
        return this.s.b(null, this);
    }
}
