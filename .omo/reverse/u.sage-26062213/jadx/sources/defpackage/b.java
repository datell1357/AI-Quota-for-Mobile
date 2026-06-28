package defpackage;

import java.io.EOFException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public static final byte[] a;
    public static final long[] b;

    static {
        byte[] bytes = "0123456789abcdef".getBytes(k40.a);
        bytes.getClass();
        a = bytes;
        b = new long[]{-1, 9, 99, 999, 9999, 99999, 999999, 9999999, 99999999, 999999999, 9999999999L, 99999999999L, 999999999999L, 9999999999999L, 99999999999999L, 999999999999999L, 9999999999999999L, 99999999999999999L, 999999999999999999L, Long.MAX_VALUE};
    }

    public static final boolean a(qg3 qg3Var, int i, byte[] bArr, int i2, int i3) {
        int i4 = qg3Var.c;
        byte[] bArr2 = qg3Var.a;
        while (i2 < i3) {
            if (i == i4) {
                qg3Var = qg3Var.f;
                qg3Var.getClass();
                byte[] bArr3 = qg3Var.a;
                bArr2 = bArr3;
                i = qg3Var.b;
                i4 = qg3Var.c;
            }
            if (bArr2[i] != bArr[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public static final String b(long j, sy syVar) throws EOFException {
        if (j > 0) {
            long j2 = j - 1;
            if (syVar.z(j2) == 13) {
                String strR = syVar.R(j2, k40.a);
                syVar.skip(2L);
                return strR;
            }
        }
        String strR2 = syVar.R(j, k40.a);
        syVar.skip(1L);
        return strR2;
    }
}
