package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s24 extends fh0 {
    public nw2 q;
    public String r;
    public String[] s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f306u;
    public /* synthetic */ Object v;
    public final /* synthetic */ v24 w;
    public int x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s24(v24 v24Var, fh0 fh0Var) {
        super(fh0Var);
        this.w = v24Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.v = obj;
        this.x |= Integer.MIN_VALUE;
        return v24.d(this.w, null, 0, this);
    }
}
