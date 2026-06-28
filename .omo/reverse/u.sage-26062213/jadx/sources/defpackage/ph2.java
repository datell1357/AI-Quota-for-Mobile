package defpackage;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ph2 {
    public static final Charset a = Charset.forName("UnicodeLittleUnmarked");
    public static final Charset b = uf0.b;
    public static final SecureRandom c;
    public static final byte[] d;
    public static final String e;

    static {
        SecureRandom secureRandom;
        try {
            secureRandom = SecureRandom.getInstance("SHA1PRNG");
        } catch (Exception unused) {
            secureRandom = null;
        }
        c = secureRandom;
        d = f("NTLMSSP");
        f("session key to server-to-client signing key magic constant");
        f("session key to client-to-server signing key magic constant");
        f("session key to server-to-client sealing key magic constant");
        f("session key to client-to-server sealing key magic constant");
        "tls-server-end-point:".getBytes(uf0.b);
        e = new mh2().h();
    }

    public static int a(int i, int i2, int i3) {
        return ((~i) & i3) | (i2 & i);
    }

    public static int b(int i, int i2, int i3) {
        return (i & (i2 | i3)) | (i2 & i3);
    }

    public static byte[] c(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        eh ehVar = new eh(bArr);
        ehVar.M(bArr2);
        ehVar.M(bArr3);
        byte[] bArrY = ehVar.y();
        byte[] bArr4 = new byte[bArrY.length + bArr3.length];
        System.arraycopy(bArrY, 0, bArr4, 0, bArrY.length);
        System.arraycopy(bArr3, 0, bArr4, bArrY.length, bArr3.length);
        return bArr4;
    }

    public static SecretKeySpec d(int i, byte[] bArr) {
        byte[] bArr2 = new byte[7];
        System.arraycopy(bArr, i, bArr2, 0, 7);
        byte[] bArr3 = new byte[8];
        bArr3[0] = bArr2[0];
        bArr3[1] = (byte) ((bArr2[0] << 7) | ((bArr2[1] & 255) >>> 1));
        bArr3[2] = (byte) ((bArr2[1] << 6) | ((bArr2[2] & 255) >>> 2));
        bArr3[3] = (byte) ((bArr2[2] << 5) | ((bArr2[3] & 255) >>> 3));
        bArr3[4] = (byte) ((bArr2[3] << 4) | ((bArr2[4] & 255) >>> 4));
        bArr3[5] = (byte) ((bArr2[4] << 3) | ((bArr2[5] & 255) >>> 5));
        bArr3[6] = (byte) ((bArr2[5] << 2) | ((bArr2[6] & 255) >>> 6));
        bArr3[7] = (byte) (bArr2[6] << 1);
        for (int i2 = 0; i2 < 8; i2++) {
            byte b2 = bArr3[i2];
            if (((((((((b2 >>> 7) ^ (b2 >>> 6)) ^ (b2 >>> 5)) ^ (b2 >>> 4)) ^ (b2 >>> 3)) ^ (b2 >>> 2)) ^ (b2 >>> 1)) & 1) == 0) {
                bArr3[i2] = (byte) (b2 | 1);
            } else {
                bArr3[i2] = (byte) (b2 & (-2));
            }
        }
        return new SecretKeySpec(bArr3, "DES");
    }

    public static MessageDigest e() {
        try {
            return MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException("MD5 message digest doesn't seem to exist - fatal error: " + e2.getMessage(), e2);
        }
    }

    public static byte[] f(String str) {
        byte[] bytes = str.getBytes(uf0.b);
        byte[] bArr = new byte[bytes.length + 1];
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        bArr[bytes.length] = 0;
        return bArr;
    }

    public static byte[] g(byte[] bArr, byte[] bArr2) throws kh2 {
        try {
            byte[] bArr3 = new byte[21];
            System.arraycopy(bArr, 0, bArr3, 0, 16);
            SecretKeySpec secretKeySpecD = d(0, bArr3);
            SecretKeySpec secretKeySpecD2 = d(7, bArr3);
            SecretKeySpec secretKeySpecD3 = d(14, bArr3);
            Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
            cipher.init(1, secretKeySpecD);
            byte[] bArrDoFinal = cipher.doFinal(bArr2);
            cipher.init(1, secretKeySpecD2);
            byte[] bArrDoFinal2 = cipher.doFinal(bArr2);
            cipher.init(1, secretKeySpecD3);
            byte[] bArrDoFinal3 = cipher.doFinal(bArr2);
            byte[] bArr4 = new byte[24];
            System.arraycopy(bArrDoFinal, 0, bArr4, 0, 8);
            System.arraycopy(bArrDoFinal2, 0, bArr4, 8, 8);
            System.arraycopy(bArrDoFinal3, 0, bArr4, 16, 8);
            return bArr4;
        } catch (Exception e2) {
            throw new kh2(e2.getMessage(), e2);
        }
    }

    public static int h(int i, byte[] bArr) {
        if (bArr.length < i + 4) {
            return 0;
        }
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static int i(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    public static void j(byte[] bArr, int i, int i2) {
        bArr[i2] = (byte) (i & 255);
        bArr[i2 + 1] = (byte) ((i >> 8) & 255);
        bArr[i2 + 2] = (byte) ((i >> 16) & 255);
        bArr[i2 + 3] = (byte) ((i >> 24) & 255);
    }
}
