package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e40 extends my2 {
    public static final e40 c = new e40(j40.a);

    @Override // defpackage.x
    public final int h(Object obj) {
        char[] cArr = (char[]) obj;
        cArr.getClass();
        return cArr.length;
    }

    @Override // defpackage.l70, defpackage.x
    public final void j(xb0 xb0Var, int i, Object obj) {
        c40 c40Var = (c40) obj;
        c40Var.getClass();
        char cJ = xb0Var.j(this.b, i);
        c40Var.b(c40Var.d() + 1);
        char[] cArr = c40Var.a;
        int i2 = c40Var.b;
        c40Var.b = i2 + 1;
        cArr[i2] = cJ;
    }

    @Override // defpackage.x
    public final Object k(Object obj) {
        char[] cArr = (char[]) obj;
        cArr.getClass();
        c40 c40Var = new c40();
        c40Var.a = cArr;
        c40Var.b = cArr.length;
        c40Var.b(10);
        return c40Var;
    }

    @Override // defpackage.my2
    public final Object n() {
        return new char[0];
    }

    @Override // defpackage.my2
    public final void o(b bVar, Object obj, int i) {
        char[] cArr = (char[]) obj;
        bVar.getClass();
        cArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            char c2 = cArr[i2];
            ly2 ly2Var = this.b;
            ly2Var.getClass();
            bVar.f(ly2Var, i2);
            bVar.d(c2);
        }
    }
}
