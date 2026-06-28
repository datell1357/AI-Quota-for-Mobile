package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n23 extends fh0 {
    public x63 q;
    public jo1 r;
    public j21 s;
    public ao1 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public /* synthetic */ Object f217u;
    public final /* synthetic */ o23 v;
    public int w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n23(o23 o23Var, fh0 fh0Var) {
        super(fh0Var);
        this.v = o23Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.f217u = obj;
        this.w |= Integer.MIN_VALUE;
        return this.v.a(null, 0, this);
    }
}
