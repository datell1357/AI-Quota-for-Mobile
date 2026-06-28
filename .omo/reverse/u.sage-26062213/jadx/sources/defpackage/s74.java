package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s74 extends fh0 {
    public ef1 q;
    public ne1 r;
    public float s;
    public /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ t74 f309u;
    public int v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s74(t74 t74Var, fh0 fh0Var) {
        super(fh0Var);
        this.f309u = t74Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.t = obj;
        this.v |= Integer.MIN_VALUE;
        return this.f309u.a(null, null, this);
    }
}
