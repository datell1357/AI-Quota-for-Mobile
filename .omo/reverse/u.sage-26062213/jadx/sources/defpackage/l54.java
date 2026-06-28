package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l54 extends my2 {
    public static final l54 c = new l54(m54.a);

    @Override // defpackage.x
    public final int h(Object obj) {
        return ((j54) obj).n.length;
    }

    @Override // defpackage.l70, defpackage.x
    public final void j(xb0 xb0Var, int i, Object obj) {
        k54 k54Var = (k54) obj;
        k54Var.getClass();
        byte bS = xb0Var.c(this.b, i).s();
        k54Var.b(k54Var.d() + 1);
        byte[] bArr = k54Var.a;
        int i2 = k54Var.b;
        k54Var.b = i2 + 1;
        bArr[i2] = bS;
    }

    @Override // defpackage.x
    public final Object k(Object obj) {
        byte[] bArr = ((j54) obj).n;
        k54 k54Var = new k54();
        k54Var.a = bArr;
        k54Var.b = bArr.length;
        k54Var.b(10);
        return k54Var;
    }

    @Override // defpackage.my2
    public final Object n() {
        return new j54(new byte[0]);
    }

    @Override // defpackage.my2
    public final void o(b bVar, Object obj, int i) {
        byte[] bArr = ((j54) obj).n;
        bVar.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            bVar.i(this.b, i2).c(bArr[i2]);
        }
    }
}
