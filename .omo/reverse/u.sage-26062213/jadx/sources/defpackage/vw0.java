package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vw0 extends fh0 {
    public ow0 q;
    public zw0 r;
    public /* synthetic */ Object s;
    public final /* synthetic */ wf3 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f387u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vw0(wf3 wf3Var, fh0 fh0Var) {
        super(fh0Var);
        this.t = wf3Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        this.s = obj;
        this.f387u |= Integer.MIN_VALUE;
        return wf3.K0(this.t, null, this);
    }
}
