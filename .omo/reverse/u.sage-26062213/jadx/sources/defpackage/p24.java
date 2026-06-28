package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p24 extends fh0 {
    public v24 q;
    public gw4 r;
    public /* synthetic */ Object s;
    public final /* synthetic */ v24 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f254u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p24(v24 v24Var, fh0 fh0Var) {
        super(fh0Var);
        this.t = v24Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.s = obj;
        this.f254u |= Integer.MIN_VALUE;
        return v24.b(this.t, this);
    }
}
