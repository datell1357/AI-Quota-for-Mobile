package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sx1 implements dy0 {
    public final rx1 a;

    public sx1(rx1 rx1Var) {
        this.a = rx1Var;
    }

    @Override // defpackage.dy0, defpackage.ve
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final na4 a(e34 e34Var) {
        int[] iArr;
        Object[] objArr;
        int[] iArr2;
        Object[] objArr2;
        int i;
        rx1 rx1Var = this.a;
        tf2 tf2Var = rx1Var.b;
        sf2 sf2Var = new sf2(tf2Var.e + 2);
        tf2 tf2Var2 = new tf2(tf2Var.e);
        int[] iArr3 = tf2Var.b;
        Object[] objArr3 = tf2Var.c;
        long[] jArr = tf2Var.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i2 = 0;
            while (true) {
                long j = jArr[i2];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i3 = 8;
                    int i4 = 8 - ((~(i2 - length)) >>> 31);
                    int i5 = 0;
                    while (i5 < i4) {
                        if ((255 & j) < 128) {
                            int i6 = (i2 << 3) + i5;
                            int i7 = iArr3[i6];
                            qx1 qx1Var = (qx1) objArr3[i6];
                            sf2Var.a(i7);
                            i = i3;
                            iArr2 = iArr3;
                            objArr2 = objArr3;
                            tf2Var2.h(i7, new ma4((bf) e34Var.a.k(qx1Var.a), qx1Var.b));
                        } else {
                            iArr2 = iArr3;
                            objArr2 = objArr3;
                            i = i3;
                        }
                        j >>= i;
                        i5++;
                        i3 = i;
                        iArr3 = iArr2;
                        objArr3 = objArr2;
                    }
                    iArr = iArr3;
                    objArr = objArr3;
                    if (i4 != i3) {
                        break;
                    }
                } else {
                    iArr = iArr3;
                    objArr = objArr3;
                }
                if (i2 == length) {
                    break;
                }
                i2++;
                iArr3 = iArr;
                objArr3 = objArr;
            }
        }
        if (!tf2Var.a(0)) {
            int i8 = sf2Var.b;
            if (i8 < 0) {
                mk0.h("Index must be between 0 and size");
                return null;
            }
            sf2Var.b(i8 + 1);
            int[] iArr4 = sf2Var.a;
            int i9 = sf2Var.b;
            if (i9 != 0) {
                ji.N(1, 0, i9, iArr4, iArr4);
            }
            iArr4[0] = 0;
            sf2Var.b++;
        }
        if (!tf2Var.a(rx1Var.a)) {
            sf2Var.a(rx1Var.a);
        }
        int i10 = sf2Var.b;
        if (i10 != 0) {
            int[] iArr5 = sf2Var.a;
            iArr5.getClass();
            Arrays.sort(iArr5, 0, i10);
        }
        return new na4(sf2Var, tf2Var2, rx1Var.a, ny0.c);
    }
}
