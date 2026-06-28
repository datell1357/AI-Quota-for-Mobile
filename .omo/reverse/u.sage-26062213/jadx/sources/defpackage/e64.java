package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e64 extends my2 {
    public static final e64 c = new e64(f64.a);

    @Override // defpackage.x
    public final int h(Object obj) {
        return ((c64) obj).n.length;
    }

    @Override // defpackage.l70, defpackage.x
    public final void j(xb0 xb0Var, int i, Object obj) {
        d64 d64Var = (d64) obj;
        d64Var.getClass();
        short sW = xb0Var.c(this.b, i).w();
        d64Var.b(d64Var.d() + 1);
        short[] sArr = d64Var.a;
        int i2 = d64Var.b;
        d64Var.b = i2 + 1;
        sArr[i2] = sW;
    }

    @Override // defpackage.x
    public final Object k(Object obj) {
        short[] sArr = ((c64) obj).n;
        d64 d64Var = new d64();
        d64Var.a = sArr;
        d64Var.b = sArr.length;
        d64Var.b(10);
        return d64Var;
    }

    @Override // defpackage.my2
    public final Object n() {
        return new c64(new short[0]);
    }

    @Override // defpackage.my2
    public final void o(b bVar, Object obj, int i) {
        short[] sArr = ((c64) obj).n;
        bVar.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            bVar.i(this.b, i2).q(sArr[i2]);
        }
    }
}
