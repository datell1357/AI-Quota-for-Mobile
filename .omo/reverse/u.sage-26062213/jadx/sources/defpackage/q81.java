package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q81 extends fh0 {
    public ke q;
    public Object r;
    public /* synthetic */ Object s;
    public final /* synthetic */ ke t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f273u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q81(ke keVar, dh0 dh0Var) {
        super(dh0Var);
        this.t = keVar;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.s = obj;
        this.f273u |= Integer.MIN_VALUE;
        return this.t.m(null, this);
    }
}
