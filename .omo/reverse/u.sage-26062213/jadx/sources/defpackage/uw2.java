package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uw2 extends fh0 {
    public vw2 q;
    public String r;
    public pe1 s;
    public oe0 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public /* synthetic */ Object f365u;
    public final /* synthetic */ vw2 v;
    public int w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uw2(vw2 vw2Var, fh0 fh0Var) {
        super(fh0Var);
        this.v = vw2Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.f365u = obj;
        this.w |= Integer.MIN_VALUE;
        return this.v.a(null, null, this);
    }
}
