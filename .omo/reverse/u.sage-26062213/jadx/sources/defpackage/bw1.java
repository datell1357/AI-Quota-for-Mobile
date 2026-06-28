package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bw1 implements lx1 {
    public static final bw1 a = new bw1();
    public static final ii3 b = qj0.v("kotlinx.serialization.json.JsonElement", iw2.P, new gi3[0], new t3(25));

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        return gg4.f(vn0Var).P0();
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        xv1 xv1Var = (xv1) obj;
        xv1Var.getClass();
        gg4.e(bVar);
        if (xv1Var instanceof tw1) {
            bVar.p(vw1.a, xv1Var);
            return;
        }
        if (xv1Var instanceof ow1) {
            bVar.p(rw1.a, xv1Var);
        } else if (xv1Var instanceof kv1) {
            bVar.p(nv1.a, xv1Var);
        } else {
            p61.x();
        }
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return b;
    }
}
