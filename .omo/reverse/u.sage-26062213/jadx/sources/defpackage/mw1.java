package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mw1 implements lx1 {
    public static final mw1 a = new mw1();
    public static final ii3 b = qj0.w("kotlinx.serialization.json.JsonNull", ki3.Q, new gi3[0]);

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        gg4.f(vn0Var);
        if (vn0Var.e()) {
            throw new vv1("Expected 'null' literal");
        }
        return kw1.INSTANCE;
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        ((kw1) obj).getClass();
        gg4.e(bVar);
        bVar.m();
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return b;
    }
}
