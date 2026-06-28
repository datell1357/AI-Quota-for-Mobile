package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vw1 implements lx1 {
    public static final vw1 a = new vw1();
    public static final ii3 b = qj0.w("kotlinx.serialization.json.JsonPrimitive", ny2.X, new gi3[0]);

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        xv1 xv1VarP0 = gg4.f(vn0Var).P0();
        if (xv1VarP0 instanceof tw1) {
            return (tw1) xv1VarP0;
        }
        throw bi4.f(-1, "Unexpected JSON element, expected JsonPrimitive, had " + y33.a(xv1VarP0.getClass()), xv1VarP0.toString());
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        tw1 tw1Var = (tw1) obj;
        tw1Var.getClass();
        gg4.e(bVar);
        if (tw1Var instanceof kw1) {
            bVar.p(mw1.a, kw1.INSTANCE);
        } else {
            bVar.p(hw1.a, (gw1) tw1Var);
        }
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return b;
    }
}
