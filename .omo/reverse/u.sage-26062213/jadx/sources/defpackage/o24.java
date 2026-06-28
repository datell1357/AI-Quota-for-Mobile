package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o24 extends fh0 {
    public v30 q;
    public int[] r;
    public /* synthetic */ Object s;
    public final /* synthetic */ v30 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f233u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o24(v30 v30Var, dh0 dh0Var) {
        super(dh0Var);
        this.t = v30Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.s = obj;
        this.f233u |= Integer.MIN_VALUE;
        return this.t.a(null, this);
    }
}
