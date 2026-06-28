package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q54 extends my2 {
    public static final q54 c = new q54(r54.a);

    @Override // defpackage.x
    public final int h(Object obj) {
        return ((o54) obj).n.length;
    }

    @Override // defpackage.l70, defpackage.x
    public final void j(xb0 xb0Var, int i, Object obj) {
        p54 p54Var = (p54) obj;
        p54Var.getClass();
        int iN = xb0Var.c(this.b, i).n();
        p54Var.b(p54Var.d() + 1);
        int[] iArr = p54Var.a;
        int i2 = p54Var.b;
        p54Var.b = i2 + 1;
        iArr[i2] = iN;
    }

    @Override // defpackage.x
    public final Object k(Object obj) {
        int[] iArr = ((o54) obj).n;
        p54 p54Var = new p54();
        p54Var.a = iArr;
        p54Var.b = iArr.length;
        p54Var.b(10);
        return p54Var;
    }

    @Override // defpackage.my2
    public final Object n() {
        return new o54(new int[0]);
    }

    @Override // defpackage.my2
    public final void o(b bVar, Object obj, int i) {
        int[] iArr = ((o54) obj).n;
        bVar.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            bVar.i(this.b, i2).j(iArr[i2]);
        }
    }
}
