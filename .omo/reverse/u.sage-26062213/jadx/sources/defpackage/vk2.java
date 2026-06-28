package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vk2 extends fh0 {
    public long q;
    public long r;
    public /* synthetic */ Object s;
    public final /* synthetic */ xk2 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f380u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vk2(xk2 xk2Var, fh0 fh0Var) {
        super(fh0Var);
        this.t = xk2Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.s = obj;
        this.f380u |= Integer.MIN_VALUE;
        return this.t.I(0L, 0L, this);
    }
}
