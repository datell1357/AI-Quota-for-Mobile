package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uv0 extends my2 {
    public static final uv0 c = new uv0(aw0.a);

    @Override // defpackage.x
    public final int h(Object obj) {
        double[] dArr = (double[]) obj;
        dArr.getClass();
        return dArr.length;
    }

    @Override // defpackage.l70, defpackage.x
    public final void j(xb0 xb0Var, int i, Object obj) {
        tv0 tv0Var = (tv0) obj;
        tv0Var.getClass();
        double dI = xb0Var.i(this.b, i);
        tv0Var.b(tv0Var.d() + 1);
        double[] dArr = tv0Var.a;
        int i2 = tv0Var.b;
        tv0Var.b = i2 + 1;
        dArr[i2] = dI;
    }

    @Override // defpackage.x
    public final Object k(Object obj) {
        double[] dArr = (double[]) obj;
        dArr.getClass();
        tv0 tv0Var = new tv0();
        tv0Var.a = dArr;
        tv0Var.b = dArr.length;
        tv0Var.b(10);
        return tv0Var;
    }

    @Override // defpackage.my2
    public final Object n() {
        return new double[0];
    }

    @Override // defpackage.my2
    public final void o(b bVar, Object obj, int i) {
        double[] dArr = (double[]) obj;
        bVar.getClass();
        dArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            double d = dArr[i2];
            ly2 ly2Var = this.b;
            ly2Var.getClass();
            bVar.f(ly2Var, i2);
            bVar.e(d);
        }
    }
}
