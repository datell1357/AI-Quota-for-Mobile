package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nl2 extends fh0 {
    public Object q;
    public vl2 r;
    public dh1 s;
    public /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ ol2 f225u;
    public int v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nl2(ol2 ol2Var, fh0 fh0Var) {
        super(fh0Var);
        this.f225u = ol2Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.t = obj;
        this.v |= Integer.MIN_VALUE;
        return ol2.d(this.f225u, null, null, null, this);
    }
}
