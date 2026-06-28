package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class dw {
    public static final char[] a;

    static {
        char[] cArr = new char[512];
        for (int i = 0; i < 256; i++) {
            cArr[i] = "0123456789abcdef".charAt(i >>> 4);
            cArr[i | 256] = "0123456789abcdef".charAt(i & 15);
        }
        a = cArr;
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i2 = 0; i2 < 16; i2++) {
            bArr["0123456789abcdef".charAt(i2)] = (byte) i2;
        }
    }

    public static void a(byte b, char[] cArr, int i) {
        int i2 = b & 255;
        char[] cArr2 = a;
        cArr[i] = cArr2[i2];
        cArr[i + 1] = cArr2[i2 | 256];
    }

    public static void b(char[] cArr, int i) {
        a((byte) 0, cArr, i);
        a((byte) 0, cArr, i + 2);
        a((byte) 0, cArr, i + 4);
        a((byte) 0, cArr, i + 6);
        a((byte) 0, cArr, i + 8);
        a((byte) 0, cArr, i + 10);
        a((byte) 0, cArr, i + 12);
        a((byte) 0, cArr, i + 14);
    }
}
