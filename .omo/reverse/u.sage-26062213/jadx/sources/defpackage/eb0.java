package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class eb0 extends fh0 {
    public Object q;
    public ns1 r;
    public int s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public /* synthetic */ Object f82u;
    public final /* synthetic */ fb0 v;
    public int w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eb0(fb0 fb0Var, fh0 fh0Var) {
        super(fh0Var);
        this.v = fb0Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.f82u = obj;
        this.w |= Integer.MIN_VALUE;
        return fb0.a(this.v, null, null, this);
    }
}
