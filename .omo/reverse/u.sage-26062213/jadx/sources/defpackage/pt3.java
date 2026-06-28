package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pt3 {
    public final st3 a;
    public lz1 b;
    public final ot3 c = new ot3(this, 2);
    public final ot3 d = new ot3(this, 0);
    public final ot3 e = new ot3(this, 1);

    public pt3(st3 st3Var) {
        this.a = st3Var;
    }

    public final lz1 a() {
        lz1 lz1Var = this.b;
        if (lz1Var != null) {
            return lz1Var;
        }
        k21.f("SubcomposeLayoutState is not attached to SubcomposeLayout");
        return null;
    }
}
