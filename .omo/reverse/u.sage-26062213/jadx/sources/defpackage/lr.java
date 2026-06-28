package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class lr {
    public static final hr a = new hr("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
    public static final hr b = new hr("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");

    static {
        new kr("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new kr("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        new gr(new fr("base16()", new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'}));
    }

    public final byte[] a(String str) {
        try {
            CharSequence charSequenceG = g(str);
            int iE = e(charSequenceG.length());
            byte[] bArr = new byte[iE];
            int iB = b(bArr, charSequenceG);
            if (iB == iE) {
                return bArr;
            }
            byte[] bArr2 = new byte[iB];
            System.arraycopy(bArr, 0, bArr2, 0, iB);
            return bArr2;
        } catch (ir e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract int b(byte[] bArr, CharSequence charSequence);

    public final String c(byte[] bArr) {
        int length = bArr.length;
        n44.Z(0, length, bArr.length);
        StringBuilder sb = new StringBuilder(f(length));
        try {
            d(sb, bArr, length);
            return sb.toString();
        } catch (IOException e) {
            k21.c(e);
            return null;
        }
    }

    public abstract void d(Appendable appendable, byte[] bArr, int i);

    public abstract int e(int i);

    public abstract int f(int i);

    public abstract CharSequence g(CharSequence charSequence);
}
