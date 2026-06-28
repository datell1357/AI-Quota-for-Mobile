package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m12 extends fh0 {
    public xg2 q;
    public bv3 r;
    public /* synthetic */ Object s;
    public final /* synthetic */ n12 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f195u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m12(n12 n12Var, fh0 fh0Var) {
        super(fh0Var);
        this.t = n12Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.s = obj;
        this.f195u |= Integer.MIN_VALUE;
        return this.t.f(null, null, this);
    }
}
