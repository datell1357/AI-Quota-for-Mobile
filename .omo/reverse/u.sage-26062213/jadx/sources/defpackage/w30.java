package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w30 extends r30 {
    public final ff1 r;

    public w30(ff1 ff1Var, a81 a81Var, hi0 hi0Var, int i, vy vyVar) {
        super(a81Var, hi0Var, i, vyVar);
        this.r = ff1Var;
    }

    @Override // defpackage.p30
    public final p30 e(hi0 hi0Var, int i, vy vyVar) {
        return new w30(this.r, this.q, hi0Var, i, vyVar);
    }

    @Override // defpackage.r30
    public final Object h(b81 b81Var, dh0 dh0Var) {
        Object objR = dm0.r(new t30(this, b81Var, null), dh0Var);
        return objR == ri0.n ? objR : t64.a;
    }
}
