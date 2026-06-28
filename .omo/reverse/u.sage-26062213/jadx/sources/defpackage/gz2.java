package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gz2 implements pg2, qi0 {
    public final /* synthetic */ pg2 n;
    public final hi0 o;

    public gz2(pg2 pg2Var, hi0 hi0Var) {
        this.n = pg2Var;
        this.o = hi0Var;
    }

    @Override // defpackage.qi0
    public final hi0 d() {
        return this.o;
    }

    @Override // defpackage.tr3
    public final Object getValue() {
        return this.n.getValue();
    }

    @Override // defpackage.pg2
    public final void setValue(Object obj) {
        this.n.setValue(obj);
    }
}
