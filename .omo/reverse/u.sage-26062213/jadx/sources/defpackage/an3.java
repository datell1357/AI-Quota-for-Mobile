package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class an3 extends fh0 {
    public hh2 q;
    public boolean r;
    public /* synthetic */ Object s;
    public final /* synthetic */ bn3 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f10u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public an3(bn3 bn3Var, fh0 fh0Var) {
        super(fh0Var);
        this.t = bn3Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.s = obj;
        this.f10u |= Integer.MIN_VALUE;
        return this.t.e(null, this);
    }
}
