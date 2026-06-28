package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class om0 extends fh0 {
    public Object q;
    public Object r;
    public Object s;
    public w33 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public fn0 f246u;
    public /* synthetic */ Object v;
    public final /* synthetic */ pm0 w;
    public int x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public om0(pm0 pm0Var, fh0 fh0Var) {
        super(fh0Var);
        this.w = pm0Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.v = obj;
        this.x |= Integer.MIN_VALUE;
        return this.w.a(null, this);
    }
}
