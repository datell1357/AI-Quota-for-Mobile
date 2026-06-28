package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jm3 extends fh0 {
    public String q;
    public hm3 r;
    public /* synthetic */ Object s;
    public final /* synthetic */ km3 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f154u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jm3(km3 km3Var, dh0 dh0Var) {
        super(dh0Var);
        this.t = km3Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.s = obj;
        this.f154u |= Integer.MIN_VALUE;
        return km3.a(this.t, null, null, this);
    }
}
