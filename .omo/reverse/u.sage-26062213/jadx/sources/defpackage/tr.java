package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tr extends fh0 {
    public String q;
    public String r;
    public /* synthetic */ Object s;
    public final /* synthetic */ xr t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f342u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tr(xr xrVar, fh0 fh0Var) {
        super(fh0Var);
        this.t = xrVar;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.s = obj;
        this.f342u |= Integer.MIN_VALUE;
        return xr.a(this.t, null, this);
    }
}
