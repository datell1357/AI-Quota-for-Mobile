package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l51 extends fh0 {
    public boolean q;
    public j51 r;
    public /* synthetic */ Object s;
    public final /* synthetic */ n51 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f176u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l51(n51 n51Var, fh0 fh0Var) {
        super(fh0Var);
        this.t = n51Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.s = obj;
        this.f176u |= Integer.MIN_VALUE;
        return this.t.a(null, this);
    }
}
