package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u71 extends my2 {
    public static final u71 c = new u71(w71.a);

    @Override // defpackage.x
    public final int h(Object obj) {
        float[] fArr = (float[]) obj;
        fArr.getClass();
        return fArr.length;
    }

    @Override // defpackage.l70, defpackage.x
    public final void j(xb0 xb0Var, int i, Object obj) {
        t71 t71Var = (t71) obj;
        t71Var.getClass();
        float fK = xb0Var.k(this.b, i);
        t71Var.b(t71Var.d() + 1);
        float[] fArr = t71Var.a;
        int i2 = t71Var.b;
        t71Var.b = i2 + 1;
        fArr[i2] = fK;
    }

    @Override // defpackage.x
    public final Object k(Object obj) {
        float[] fArr = (float[]) obj;
        fArr.getClass();
        t71 t71Var = new t71();
        t71Var.a = fArr;
        t71Var.b = fArr.length;
        t71Var.b(10);
        return t71Var;
    }

    @Override // defpackage.my2
    public final Object n() {
        return new float[0];
    }

    @Override // defpackage.my2
    public final void o(b bVar, Object obj, int i) {
        float[] fArr = (float[]) obj;
        bVar.getClass();
        fArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            float f = fArr[i2];
            ly2 ly2Var = this.b;
            ly2Var.getClass();
            bVar.f(ly2Var, i2);
            bVar.g(f);
        }
    }
}
