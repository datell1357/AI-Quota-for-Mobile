package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qm3 extends my2 {
    public static final qm3 c = new qm3(rm3.a);

    @Override // defpackage.x
    public final int h(Object obj) {
        short[] sArr = (short[]) obj;
        sArr.getClass();
        return sArr.length;
    }

    @Override // defpackage.l70, defpackage.x
    public final void j(xb0 xb0Var, int i, Object obj) {
        pm3 pm3Var = (pm3) obj;
        pm3Var.getClass();
        short sO = xb0Var.o(this.b, i);
        pm3Var.b(pm3Var.d() + 1);
        short[] sArr = pm3Var.a;
        int i2 = pm3Var.b;
        pm3Var.b = i2 + 1;
        sArr[i2] = sO;
    }

    @Override // defpackage.x
    public final Object k(Object obj) {
        short[] sArr = (short[]) obj;
        sArr.getClass();
        pm3 pm3Var = new pm3();
        pm3Var.a = sArr;
        pm3Var.b = sArr.length;
        pm3Var.b(10);
        return pm3Var;
    }

    @Override // defpackage.my2
    public final Object n() {
        return new short[0];
    }

    @Override // defpackage.my2
    public final void o(b bVar, Object obj, int i) {
        short[] sArr = (short[]) obj;
        bVar.getClass();
        sArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            short s = sArr[i2];
            ly2 ly2Var = this.b;
            ly2Var.getClass();
            bVar.f(ly2Var, i2);
            bVar.q(s);
        }
    }
}
