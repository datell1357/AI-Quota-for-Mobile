package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v54 extends my2 {
    public static final v54 c = new v54(w54.a);

    @Override // defpackage.x
    public final int h(Object obj) {
        return ((t54) obj).n.length;
    }

    @Override // defpackage.l70, defpackage.x
    public final void j(xb0 xb0Var, int i, Object obj) {
        u54 u54Var = (u54) obj;
        u54Var.getClass();
        long jB = xb0Var.c(this.b, i).b();
        u54Var.b(u54Var.d() + 1);
        long[] jArr = u54Var.a;
        int i2 = u54Var.b;
        u54Var.b = i2 + 1;
        jArr[i2] = jB;
    }

    @Override // defpackage.x
    public final Object k(Object obj) {
        long[] jArr = ((t54) obj).n;
        u54 u54Var = new u54();
        u54Var.a = jArr;
        u54Var.b = jArr.length;
        u54Var.b(10);
        return u54Var;
    }

    @Override // defpackage.my2
    public final Object n() {
        return new t54(new long[0]);
    }

    @Override // defpackage.my2
    public final void o(b bVar, Object obj, int i) {
        long[] jArr = ((t54) obj).n;
        bVar.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            bVar.i(this.b, i2).k(jArr[i2]);
        }
    }
}
