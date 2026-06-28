package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class je2 extends fh0 {
    public dg3 q;
    public t33 r;
    public float s;
    public /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ me2 f150u;
    public int v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public je2(me2 me2Var, fh0 fh0Var) {
        super(fh0Var);
        this.f150u = me2Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.t = obj;
        this.v |= Integer.MIN_VALUE;
        return me2.c(this.f150u, null, null, 0.0f, 0.0f, this);
    }
}
