package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ll2 extends fh0 {
    public w33 q;
    public w33 r;
    public /* synthetic */ Object s;
    public final /* synthetic */ ol2 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f188u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ll2(ol2 ol2Var, dh0 dh0Var) {
        super(dh0Var);
        this.t = ol2Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.s = obj;
        this.f188u |= Integer.MIN_VALUE;
        return ol2.b(this.t, this);
    }
}
