package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class h81 extends fh0 {
    public /* synthetic */ Object q;
    public int r;
    public final /* synthetic */ i81 s;
    public Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public b81 f120u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h81(i81 i81Var, dh0 dh0Var) {
        super(dh0Var);
        this.s = i81Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.q = obj;
        this.r |= Integer.MIN_VALUE;
        return this.s.b(null, this);
    }
}
