package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b23 implements ur3, a81, qf1 {
    public final /* synthetic */ wr3 n;

    public b23(wr3 wr3Var) {
        this.n = wr3Var;
    }

    @Override // defpackage.qf1
    public final a81 a(hi0 hi0Var, int i, vy vyVar) {
        return (((i < 0 || i >= 2) && i != -2) || vyVar != vy.o) ? xl3.c(this, hi0Var, i, vyVar) : this;
    }

    @Override // defpackage.a81
    public final Object b(b81 b81Var, dh0 dh0Var) {
        this.n.b(b81Var, dh0Var);
        return ri0.n;
    }

    @Override // defpackage.ur3
    public final Object getValue() {
        return this.n.getValue();
    }
}
