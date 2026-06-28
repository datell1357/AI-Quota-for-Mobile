package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v22 extends vb4 {
    public final tf2 b;

    public v22() {
        tf2 tf2Var = is1.a;
        this.b = new tf2();
    }

    @Override // defpackage.vb4
    public final void b() {
        tf2 tf2Var = this.b;
        int[] iArr = tf2Var.b;
        Object[] objArr = tf2Var.c;
        long[] jArr = tf2Var.a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        int i5 = iArr[i4];
                        dg2 dg2Var = (dg2) objArr[i4];
                        Object[] objArr2 = dg2Var.a;
                        int i6 = dg2Var.b;
                        for (int i7 = 0; i7 < i6; i7++) {
                            u22 u22Var = (u22) objArr2[i7];
                            q20 q20Var = u22Var.d;
                            if (q20Var != null) {
                                q20Var.cancel();
                            }
                            u22Var.d = null;
                            x92 x92Var = (x92) u22Var.a.o;
                            x92Var.o = true;
                            x92Var.n = false;
                            x92Var.a();
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }
}
