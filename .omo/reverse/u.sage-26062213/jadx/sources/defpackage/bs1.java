package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bs1 extends my2 {
    public static final bs1 c = new bs1(ps1.a);

    @Override // defpackage.x
    public final int h(Object obj) {
        int[] iArr = (int[]) obj;
        iArr.getClass();
        return iArr.length;
    }

    @Override // defpackage.l70, defpackage.x
    public final void j(xb0 xb0Var, int i, Object obj) {
        as1 as1Var = (as1) obj;
        as1Var.getClass();
        int iV = xb0Var.v(this.b, i);
        as1Var.b(as1Var.d() + 1);
        int[] iArr = as1Var.a;
        int i2 = as1Var.b;
        as1Var.b = i2 + 1;
        iArr[i2] = iV;
    }

    @Override // defpackage.x
    public final Object k(Object obj) {
        int[] iArr = (int[]) obj;
        iArr.getClass();
        as1 as1Var = new as1();
        as1Var.a = iArr;
        as1Var.b = iArr.length;
        as1Var.b(10);
        return as1Var;
    }

    @Override // defpackage.my2
    public final Object n() {
        return new int[0];
    }

    @Override // defpackage.my2
    public final void o(b bVar, Object obj, int i) {
        int[] iArr = (int[]) obj;
        bVar.getClass();
        iArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            ly2 ly2Var = this.b;
            ly2Var.getClass();
            bVar.f(ly2Var, i2);
            bVar.j(i3);
        }
    }
}
