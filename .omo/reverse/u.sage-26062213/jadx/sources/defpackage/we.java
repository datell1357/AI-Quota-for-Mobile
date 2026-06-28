package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class we implements tr3 {
    public final e34 n;
    public final ws2 o;
    public bf p;
    public long q;
    public long r;
    public boolean s;

    public we(e34 e34Var, Object obj, bf bfVar, long j, long j2, boolean z) {
        bf bfVarT;
        this.n = e34Var;
        this.o = ca.A(obj);
        if (bfVar != null) {
            bfVarT = c75.t(bfVar);
        } else {
            bfVarT = (bf) e34Var.a.k(obj);
            bfVarT.d();
        }
        this.p = bfVarT;
        this.q = j;
        this.r = j2;
        this.s = z;
    }

    @Override // defpackage.tr3
    public final Object getValue() {
        return this.o.getValue();
    }

    public final String toString() {
        return "AnimationState(value=" + this.o.getValue() + ", velocity=" + this.n.b.k(this.p) + ", isRunning=" + this.s + ", lastFrameTimeNanos=" + this.q + ", finishedTimeNanos=" + this.r + ")";
    }

    public /* synthetic */ we(e34 e34Var, Object obj, bf bfVar, int i) {
        this(e34Var, obj, (i & 4) != 0 ? null : bfVar, Long.MIN_VALUE, Long.MIN_VALUE, false);
    }
}
