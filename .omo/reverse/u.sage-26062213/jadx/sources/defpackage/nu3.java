package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nu3 extends fh0 {
    public ou3 q;
    public ee1 r;
    public /* synthetic */ Object s;
    public final /* synthetic */ ou3 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f228u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nu3(ou3 ou3Var, fh0 fh0Var) {
        super(fh0Var);
        this.t = ou3Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.s = obj;
        this.f228u |= Integer.MIN_VALUE;
        return this.t.e(null, null, this);
    }
}
