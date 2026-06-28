package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xz extends my2 {
    public static final xz c = new xz(a00.a);

    @Override // defpackage.x
    public final int h(Object obj) {
        byte[] bArr = (byte[]) obj;
        bArr.getClass();
        return bArr.length;
    }

    @Override // defpackage.l70, defpackage.x
    public final void j(xb0 xb0Var, int i, Object obj) {
        vz vzVar = (vz) obj;
        vzVar.getClass();
        byte bL = xb0Var.l(this.b, i);
        vzVar.b(vzVar.d() + 1);
        byte[] bArr = vzVar.a;
        int i2 = vzVar.b;
        vzVar.b = i2 + 1;
        bArr[i2] = bL;
    }

    @Override // defpackage.x
    public final Object k(Object obj) {
        byte[] bArr = (byte[]) obj;
        bArr.getClass();
        vz vzVar = new vz();
        vzVar.a = bArr;
        vzVar.b = bArr.length;
        vzVar.b(10);
        return vzVar;
    }

    @Override // defpackage.my2
    public final Object n() {
        return new byte[0];
    }

    @Override // defpackage.my2
    public final void o(b bVar, Object obj, int i) {
        byte[] bArr = (byte[]) obj;
        bVar.getClass();
        bArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            byte b = bArr[i2];
            ly2 ly2Var = this.b;
            ly2Var.getClass();
            bVar.f(ly2Var, i2);
            bVar.c(b);
        }
    }
}
