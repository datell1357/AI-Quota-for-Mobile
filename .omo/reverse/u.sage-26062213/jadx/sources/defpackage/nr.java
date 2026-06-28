package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class nr {
    public static final byte[] d = {13, 10};
    public final int a;
    public final int b;
    public final int c;

    public nr(int i, int i2) {
        this.a = (i <= 0 || i2 <= 0) ? 0 : (i / 4) * 4;
        this.b = i2;
        di0.g(2, "codecPolicy");
        this.c = 2;
    }

    public static byte[] c(int i, mr mrVar) {
        byte[] bArr = mrVar.b;
        if (bArr == null) {
            mrVar.b = new byte[Math.max(i, 8192)];
            mrVar.c = 0;
            mrVar.d = 0;
        } else {
            int i2 = mrVar.c + i;
            if (i2 - bArr.length > 0) {
                int length = bArr.length * 2;
                if (Integer.compare(length ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE) < 0) {
                    length = i2;
                }
                if (Integer.compare(Integer.MIN_VALUE ^ length, -9) > 0) {
                    if (i2 < 0) {
                        throw new OutOfMemoryError("Unable to allocate array size: " + (((long) i2) & 4294967295L));
                    }
                    length = Math.max(i2, 2147483639);
                }
                byte[] bArrCopyOf = Arrays.copyOf(mrVar.b, length);
                mrVar.b = bArrCopyOf;
                return bArrCopyOf;
            }
        }
        return mrVar.b;
    }

    public static void d(byte[] bArr, int i, mr mrVar) {
        int i2 = mrVar.c;
        int i3 = mrVar.d;
        if (i2 > i3) {
            int iMin = Math.min(i2 > i3 ? i2 - i3 : 0, i);
            System.arraycopy(mrVar.b, mrVar.d, bArr, 0, iMin);
            int i4 = mrVar.d + iMin;
            mrVar.d = i4;
            if (mrVar.c > i4) {
                return;
            }
            mrVar.d = 0;
            mrVar.c = 0;
        }
    }

    public abstract void a(byte[] bArr, int i, mr mrVar);

    public final byte[] b(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        int length = bArr.length;
        if (bArr.length == 0) {
            return bArr;
        }
        mr mrVar = new mr();
        a(bArr, length, mrVar);
        a(bArr, -1, mrVar);
        int i = mrVar.c - mrVar.d;
        byte[] bArr2 = new byte[i];
        d(bArr2, i, mrVar);
        return bArr2;
    }
}
