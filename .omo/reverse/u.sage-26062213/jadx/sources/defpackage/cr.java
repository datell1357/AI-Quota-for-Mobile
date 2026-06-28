package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class cr implements bf0 {
    public final cf0 a;

    public cr(cf0 cf0Var) {
        cf0Var.getClass();
        this.a = cf0Var;
    }

    @Override // defpackage.bf0
    public final boolean b(og4 og4Var) {
        return a(og4Var) && e(this.a.c());
    }

    @Override // defpackage.bf0
    public final a20 c(lf0 lf0Var) {
        lf0Var.getClass();
        return new a20(new n(this, null, 2), d01.n, -2, vy.n);
    }

    public abstract int d();

    public abstract boolean e(Object obj);
}
