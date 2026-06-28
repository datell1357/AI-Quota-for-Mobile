package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class oi1 extends li3 {
    public g34 a = null;

    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) {
        g34 g34Var = this.a;
        if (g34Var != null) {
            return g34Var.b(ww1Var);
        }
        k21.n("Adapter for type with cyclic dependency has been used before dependency has been resolved");
        return null;
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) {
        g34 g34Var = this.a;
        if (g34Var != null) {
            g34Var.c(bx1Var, obj);
        } else {
            k21.n("Adapter for type with cyclic dependency has been used before dependency has been resolved");
        }
    }

    @Override // defpackage.li3
    public final g34 d() {
        g34 g34Var = this.a;
        if (g34Var != null) {
            return g34Var;
        }
        k21.n("Adapter for type with cyclic dependency has been used before dependency has been resolved");
        return null;
    }
}
