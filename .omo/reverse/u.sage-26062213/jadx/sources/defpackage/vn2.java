package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vn2 implements lx1 {
    public final qz1 a = dm0.C(v12.n, new t52(this));

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        gi3 gi3VarD = d();
        xb0 xb0VarA = vn0Var.A(gi3VarD);
        int iH = xb0VarA.h(d());
        if (iH != -1) {
            throw new mi3(di0.q(iH, "Unexpected index "));
        }
        xb0VarA.p(gi3VarD);
        return t64.a;
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        obj.getClass();
        bVar.a(d()).s(d());
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return (gi3) this.a.getValue();
    }
}
