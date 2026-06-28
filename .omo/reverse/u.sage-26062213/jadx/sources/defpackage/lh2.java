package defpackage;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Locale;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lh2 {
    public final Random a;
    public final long b;
    public final String c;
    public final String d;
    public final String e;
    public final byte[] f;
    public final byte[] g;
    public byte[] l = null;
    public byte[] m = null;
    public byte[] n = null;
    public byte[] o = null;
    public byte[] p = null;
    public byte[] q = null;
    public byte[] r = null;
    public byte[] s = null;
    public byte[] t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public byte[] f185u = null;
    public byte[] v = null;
    public byte[] w = null;
    public byte[] x = null;
    public byte[] y = null;
    public byte[] z = null;
    public byte[] h = null;
    public byte[] i = null;
    public byte[] j = null;
    public byte[] k = null;

    public lh2(Random random, long j, String str, String str2, String str3, byte[] bArr, byte[] bArr2) {
        this.a = random;
        this.b = j;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = bArr;
        this.g = bArr2;
    }

    public final byte[] a() throws kh2 {
        if (this.l == null) {
            String str = this.e;
            Charset charset = ph2.a;
            try {
                String upperCase = str.toUpperCase(Locale.ROOT);
                Charset charset2 = uf0.b;
                byte[] bytes = upperCase.getBytes(charset2);
                byte[] bArr = new byte[14];
                System.arraycopy(bytes, 0, bArr, 0, Math.min(bytes.length, 14));
                SecretKeySpec secretKeySpecD = ph2.d(0, bArr);
                SecretKeySpec secretKeySpecD2 = ph2.d(7, bArr);
                byte[] bytes2 = "KGS!@#$%".getBytes(charset2);
                Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
                cipher.init(1, secretKeySpecD);
                byte[] bArrDoFinal = cipher.doFinal(bytes2);
                cipher.init(1, secretKeySpecD2);
                byte[] bArrDoFinal2 = cipher.doFinal(bytes2);
                byte[] bArr2 = new byte[16];
                System.arraycopy(bArrDoFinal, 0, bArr2, 0, 8);
                System.arraycopy(bArrDoFinal2, 0, bArr2, 8, 8);
                this.l = bArr2;
            } catch (Exception e) {
                throw new kh2(e.getMessage(), e);
            }
        }
        return this.l;
    }

    public final byte[] b() {
        if (this.m == null) {
            this.m = ph2.g(a(), this.f);
        }
        return this.m;
    }

    public final byte[] c() throws kh2 {
        if (this.q == null) {
            if (this.p == null) {
                String str = this.c;
                String str2 = this.d;
                byte[] bArrG = g();
                Charset charset = ph2.a;
                if (charset == null) {
                    throw new kh2(cm1.a("Unicode not supported"));
                }
                eh ehVar = new eh(bArrG);
                Locale locale = Locale.ROOT;
                ehVar.M(str2.toUpperCase(locale).getBytes(charset));
                if (str != null) {
                    ehVar.M(str.toUpperCase(locale).getBytes(charset));
                }
                this.p = ehVar.y();
            }
            byte[] bArr = this.p;
            byte[] bArr2 = this.f;
            if (this.h == null) {
                Random random = this.a;
                Charset charset2 = ph2.a;
                byte[] bArr3 = new byte[8];
                synchronized (random) {
                    random.nextBytes(bArr3);
                }
                this.h = bArr3;
            }
            this.q = ph2.c(bArr, bArr2, this.h);
        }
        return this.q;
    }

    public final byte[] d() {
        if (this.z == null) {
            try {
                byte[] bArr = new byte[14];
                System.arraycopy(a(), 0, bArr, 0, 8);
                Arrays.fill(bArr, 8, 14, (byte) -67);
                SecretKeySpec secretKeySpecD = ph2.d(0, bArr);
                SecretKeySpec secretKeySpecD2 = ph2.d(7, bArr);
                byte[] bArr2 = new byte[8];
                System.arraycopy(b(), 0, bArr2, 0, 8);
                Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
                cipher.init(1, secretKeySpecD);
                byte[] bArrDoFinal = cipher.doFinal(bArr2);
                Cipher cipher2 = Cipher.getInstance("DES/ECB/NoPadding");
                cipher2.init(1, secretKeySpecD2);
                byte[] bArrDoFinal2 = cipher2.doFinal(bArr2);
                byte[] bArr3 = new byte[16];
                this.z = bArr3;
                System.arraycopy(bArrDoFinal, 0, bArr3, 0, bArrDoFinal.length);
                System.arraycopy(bArrDoFinal2, 0, this.z, bArrDoFinal.length, bArrDoFinal2.length);
            } catch (Exception e) {
                throw new kh2(e.getMessage(), e);
            }
        }
        return this.z;
    }

    public final byte[] e() throws kh2 {
        if (this.t == null) {
            byte[] bArrG = g();
            byte[] bArr = this.f;
            if (this.h == null) {
                Random random = this.a;
                Charset charset = ph2.a;
                byte[] bArr2 = new byte[8];
                synchronized (random) {
                    random.nextBytes(bArr2);
                }
                this.h = bArr2;
            }
            byte[] bArr3 = this.h;
            try {
                MessageDigest messageDigestE = ph2.e();
                messageDigestE.update(bArr);
                messageDigestE.update(bArr3);
                byte[] bArr4 = new byte[8];
                System.arraycopy(messageDigestE.digest(), 0, bArr4, 0, 8);
                this.t = ph2.g(bArrG, bArr4);
            } catch (Exception e) {
                if (e instanceof kh2) {
                    throw ((kh2) e);
                }
                throw new kh2(e.getMessage(), e);
            }
        }
        return this.t;
    }

    public final byte[] f() {
        byte[] bArr = this.f;
        if (this.y == null) {
            if (this.f185u == null) {
                if (this.h == null) {
                    Random random = this.a;
                    Charset charset = ph2.a;
                    byte[] bArr2 = new byte[8];
                    synchronized (random) {
                        random.nextBytes(bArr2);
                    }
                    this.h = bArr2;
                }
                byte[] bArr3 = this.h;
                byte[] bArr4 = new byte[24];
                this.f185u = bArr4;
                System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
                byte[] bArr5 = this.f185u;
                Arrays.fill(bArr5, bArr3.length, bArr5.length, (byte) 0);
            }
            byte[] bArr6 = this.f185u;
            byte[] bArr7 = new byte[bArr.length + bArr6.length];
            System.arraycopy(bArr, 0, bArr7, 0, bArr.length);
            System.arraycopy(bArr6, 0, bArr7, bArr.length, bArr6.length);
            if (this.w == null) {
                s9 s9Var = new s9();
                s9Var.b(g());
                this.w = s9Var.a();
            }
            byte[] bArr8 = this.w;
            Charset charset2 = ph2.a;
            eh ehVar = new eh(bArr8);
            ehVar.M(bArr7);
            this.y = ehVar.y();
        }
        return this.y;
    }

    public final byte[] g() throws kh2 {
        if (this.n == null) {
            Charset charset = ph2.a;
            if (charset == null) {
                throw new kh2("Unicode not supported");
            }
            byte[] bytes = this.e.getBytes(charset);
            s9 s9Var = new s9();
            s9Var.b(bytes);
            this.n = s9Var.a();
        }
        return this.n;
    }

    public final byte[] h() {
        if (this.o == null) {
            byte[] bArrG = g();
            Charset charset = ph2.a;
            if (charset == null) {
                throw new kh2("Unicode not supported");
            }
            eh ehVar = new eh(bArrG);
            ehVar.M(this.d.toUpperCase(Locale.ROOT).getBytes(charset));
            String str = this.c;
            if (str != null) {
                ehVar.M(str.getBytes(charset));
            }
            this.o = ehVar.y();
        }
        return this.o;
    }

    public final byte[] i() {
        if (this.s == null) {
            byte[] bArrH = h();
            byte[] bArr = this.f;
            if (this.r == null) {
                if (this.i == null) {
                    Random random = this.a;
                    Charset charset = ph2.a;
                    byte[] bArr2 = new byte[8];
                    synchronized (random) {
                        random.nextBytes(bArr2);
                    }
                    this.i = bArr2;
                }
                byte[] bArr3 = this.i;
                byte[] bArr4 = this.g;
                if (this.k == null) {
                    long j = (this.b + 11644473600000L) * 10000;
                    this.k = new byte[8];
                    for (int i = 0; i < 8; i++) {
                        this.k[i] = (byte) j;
                        j >>>= 8;
                    }
                }
                byte[] bArr5 = this.k;
                Charset charset2 = ph2.a;
                byte[] bArr6 = new byte[bArr5.length + 20 + bArr4.length + 4];
                System.arraycopy(new byte[]{1, 1, 0, 0}, 0, bArr6, 0, 4);
                System.arraycopy(new byte[]{0, 0, 0, 0}, 0, bArr6, 4, 4);
                System.arraycopy(bArr5, 0, bArr6, 8, bArr5.length);
                int length = bArr5.length;
                System.arraycopy(bArr3, 0, bArr6, 8 + length, 8);
                System.arraycopy(new byte[]{0, 0, 0, 0}, 0, bArr6, length + 16, 4);
                int i2 = length + 20;
                System.arraycopy(bArr4, 0, bArr6, i2, bArr4.length);
                System.arraycopy(new byte[]{0, 0, 0, 0}, 0, bArr6, i2 + bArr4.length, 4);
                this.r = bArr6;
            }
            this.s = ph2.c(bArrH, bArr, this.r);
        }
        return this.s;
    }
}
