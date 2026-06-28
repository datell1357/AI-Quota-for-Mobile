package u.sage;

import android.util.Base64;
import defpackage.ez3;
import defpackage.ji;
import defpackage.k40;
import defpackage.ra3;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class CryptoUtils {
    public static final CryptoUtils a = new CryptoUtils();

    static {
        try {
            System.loadLibrary("s");
        } catch (UnsatisfiedLinkError unused) {
            ez3.a.getClass();
            ra3.g(new Object[0]);
        }
    }

    private final native String r();

    public final String a(byte[] bArr) {
        try {
            String strR = r();
            if (strR.length() == 0) {
                ez3.a.getClass();
                ra3.f(new Object[0]);
                return "";
            }
            byte[] bArrS = ji.S(bArr, 0, 16);
            byte[] bArrS2 = ji.S(bArr, 16, bArr.length);
            SecretKeySpec secretKeySpec = new SecretKeySpec(Base64.decode(strR, 0), "AES");
            IvParameterSpec ivParameterSpec = new IvParameterSpec(bArrS);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpec, ivParameterSpec);
            byte[] bArrDoFinal = cipher.doFinal(bArrS2);
            bArrDoFinal.getClass();
            return new String(bArrDoFinal, k40.a);
        } catch (Exception unused) {
            ez3.a.getClass();
            ra3.g(new Object[0]);
            return "";
        }
    }
}
