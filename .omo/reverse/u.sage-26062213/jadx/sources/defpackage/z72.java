package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z72 extends my2 {
    public static final z72 c = new z72(c82.a);

    @Override // defpackage.x
    public final int h(Object obj) {
        long[] jArr = (long[]) obj;
        jArr.getClass();
        return jArr.length;
    }

    @Override // defpackage.l70, defpackage.x
    public final void j(xb0 xb0Var, int i, Object obj) {
        y72 y72Var = (y72) obj;
        y72Var.getClass();
        long jZ = xb0Var.z(this.b, i);
        y72Var.b(y72Var.d() + 1);
        long[] jArr = y72Var.a;
        int i2 = y72Var.b;
        y72Var.b = i2 + 1;
        jArr[i2] = jZ;
    }

    @Override // defpackage.x
    public final Object k(Object obj) {
        long[] jArr = (long[]) obj;
        jArr.getClass();
        y72 y72Var = new y72();
        y72Var.a = jArr;
        y72Var.b = jArr.length;
        y72Var.b(10);
        return y72Var;
    }

    @Override // defpackage.my2
    public final Object n() {
        return new long[0];
    }

    @Override // defpackage.my2
    public final void o(b bVar, Object obj, int i) {
        long[] jArr = (long[]) obj;
        bVar.getClass();
        jArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            bVar.l(this.b, i2, jArr[i2]);
        }
    }
}
