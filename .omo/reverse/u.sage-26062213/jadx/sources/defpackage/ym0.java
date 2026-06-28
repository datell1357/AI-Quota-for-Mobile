package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ym0 extends fh0 {
    public boolean q;
    public sr3 r;
    public /* synthetic */ Object s;
    public final /* synthetic */ fn0 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f425u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ym0(fn0 fn0Var, dh0 dh0Var) {
        super(dh0Var);
        this.t = fn0Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.s = obj;
        this.f425u |= Integer.MIN_VALUE;
        return fn0.g(this.t, false, this);
    }
}
