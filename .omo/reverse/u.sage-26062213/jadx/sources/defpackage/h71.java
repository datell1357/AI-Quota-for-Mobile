package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h71 implements i41 {
    public final ij3 a;
    public final k03 b;
    public final k03 c;
    public final k03 d;

    public h71(ij3 ij3Var, k03 k03Var, k03 k03Var2, k03 k03Var3) {
        this.a = ij3Var;
        this.b = k03Var;
        this.c = k03Var2;
        this.d = k03Var3;
    }

    @Override // defpackage.m03
    public final Object get() {
        return new y61((e61) this.a.b, (gk3) this.b.get(), (hi0) this.c.get(), (ek3) this.d.get());
    }
}
