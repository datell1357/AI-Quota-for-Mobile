package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pq1 implements tr3 {
    public Float n;
    public Float o;
    public final ws2 p;
    public lw3 q;
    public boolean r;
    public boolean s;
    public long t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ rq1 f263u;

    public pq1(rq1 rq1Var, Float f, Float f2, oq1 oq1Var) {
        this.f263u = rq1Var;
        this.n = f;
        this.o = f2;
        this.p = ca.A(f);
        this.q = new lw3(oq1Var, k30.m, this.n, this.o, null);
    }

    @Override // defpackage.tr3
    public final Object getValue() {
        return this.p.getValue();
    }
}
