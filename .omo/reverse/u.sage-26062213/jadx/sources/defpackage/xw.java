package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xw extends my2 {
    public static final xw c = new xw(yw.a);

    @Override // defpackage.x
    public final int h(Object obj) {
        boolean[] zArr = (boolean[]) obj;
        zArr.getClass();
        return zArr.length;
    }

    @Override // defpackage.l70, defpackage.x
    public final void j(xb0 xb0Var, int i, Object obj) {
        ww wwVar = (ww) obj;
        wwVar.getClass();
        boolean zR = xb0Var.r(this.b, i);
        wwVar.b(wwVar.d() + 1);
        boolean[] zArr = wwVar.a;
        int i2 = wwVar.b;
        wwVar.b = i2 + 1;
        zArr[i2] = zR;
    }

    @Override // defpackage.x
    public final Object k(Object obj) {
        boolean[] zArr = (boolean[]) obj;
        zArr.getClass();
        ww wwVar = new ww();
        wwVar.a = zArr;
        wwVar.b = zArr.length;
        wwVar.b(10);
        return wwVar;
    }

    @Override // defpackage.my2
    public final Object n() {
        return new boolean[0];
    }

    @Override // defpackage.my2
    public final void o(b bVar, Object obj, int i) {
        boolean[] zArr = (boolean[]) obj;
        bVar.getClass();
        zArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            boolean z = zArr[i2];
            ly2 ly2Var = this.b;
            ly2Var.getClass();
            bVar.f(ly2Var, i2);
            bVar.b(z);
        }
    }
}
