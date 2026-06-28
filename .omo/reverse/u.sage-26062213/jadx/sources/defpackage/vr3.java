package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vr3 extends fh0 {
    public wr3 q;
    public b81 r;
    public yr3 s;
    public tu1 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Object f384u;
    public /* synthetic */ Object v;
    public final /* synthetic */ wr3 w;
    public int x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vr3(wr3 wr3Var, dh0 dh0Var) {
        super(dh0Var);
        this.w = wr3Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.v = obj;
        this.x |= Integer.MIN_VALUE;
        this.w.b(null, this);
        return ri0.n;
    }
}
