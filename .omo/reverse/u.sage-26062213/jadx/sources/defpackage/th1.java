package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class th1 extends fh0 {
    public d84 q;
    public fh2 r;
    public int s;
    public /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ wh1 f338u;
    public int v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public th1(wh1 wh1Var, fh0 fh0Var) {
        super(fh0Var);
        this.f338u = wh1Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.t = obj;
        this.v |= Integer.MIN_VALUE;
        return this.f338u.h(null, this);
    }
}
