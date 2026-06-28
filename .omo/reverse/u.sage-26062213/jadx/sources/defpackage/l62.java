package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class l62 extends y52 {
    public final Object n;
    public final int o;
    public final x33 p;
    public volatile o62 q = v62.F;

    public l62(Object obj, int i, x33 x33Var) {
        this.n = obj;
        this.o = i;
        this.p = x33Var;
    }

    @Override // defpackage.y52, defpackage.x33
    public final void c(o62 o62Var) {
        this.q = o62Var;
    }

    @Override // defpackage.y52, defpackage.x33
    public final o62 d() {
        return this.q;
    }

    @Override // defpackage.y52, defpackage.x33
    public final Object getKey() {
        return this.n;
    }

    @Override // defpackage.y52, defpackage.x33
    public final x33 m() {
        return this.p;
    }

    @Override // defpackage.y52, defpackage.x33
    public final int n() {
        return this.o;
    }
}
