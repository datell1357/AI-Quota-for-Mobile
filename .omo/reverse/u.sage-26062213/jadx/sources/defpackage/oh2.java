package defpackage;

import java.nio.charset.Charset;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Locale;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oh2 extends b70 {
    public final int p;
    public final byte[] q;
    public final byte[] r;
    public final byte[] s;
    public final byte[] t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final byte[] f244u;
    public final byte[] v;
    public final byte[] w;
    public final boolean x;

    public oh2(String str, String str2, String str3, String str4, byte[] bArr, int i, String str5, byte[] bArr2) throws kh2 {
        String strSubstring;
        byte[] bArrD;
        Charset charset;
        String strSubstring2 = str2;
        SecureRandom secureRandom = ph2.c;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (secureRandom == null) {
            throw new kh2(cm1.a("Random generator not available"));
        }
        this.p = i;
        if (strSubstring2 == null) {
            strSubstring2 = null;
        } else {
            int iIndexOf = strSubstring2.indexOf(46);
            if (iIndexOf != -1) {
                strSubstring2 = strSubstring2.substring(0, iIndexOf);
            }
        }
        if (str == null) {
            strSubstring = null;
        } else {
            int iIndexOf2 = str.indexOf(46);
            strSubstring = iIndexOf2 != -1 ? str.substring(0, iIndexOf2) : str;
        }
        this.x = false;
        lh2 lh2Var = new lh2(secureRandom, jCurrentTimeMillis, strSubstring, str3, str4, bArr, bArr2);
        try {
            if ((8388608 & i) != 0 && bArr2 != null && str5 != null) {
                this.f244u = lh2Var.i();
                this.t = lh2Var.c();
                if ((i & 128) != 0) {
                    bArrD = lh2Var.d();
                } else {
                    if (lh2Var.x == null) {
                        byte[] bArrH = lh2Var.h();
                        byte[] bArr3 = new byte[16];
                        System.arraycopy(lh2Var.i(), 0, bArr3, 0, 16);
                        eh ehVar = new eh(bArrH);
                        ehVar.M(bArr3);
                        lh2Var.x = ehVar.y();
                    }
                    bArrD = lh2Var.x;
                }
            } else if ((524288 & i) != 0) {
                this.f244u = lh2Var.e();
                if (lh2Var.f185u == null) {
                    if (lh2Var.h == null) {
                        byte[] bArr4 = new byte[8];
                        synchronized (secureRandom) {
                            secureRandom.nextBytes(bArr4);
                        }
                        lh2Var.h = bArr4;
                    }
                    byte[] bArr5 = lh2Var.h;
                    byte[] bArr6 = new byte[24];
                    lh2Var.f185u = bArr6;
                    System.arraycopy(bArr5, 0, bArr6, 0, bArr5.length);
                    byte[] bArr7 = lh2Var.f185u;
                    Arrays.fill(bArr7, bArr5.length, bArr7.length, (byte) 0);
                }
                this.t = lh2Var.f185u;
                bArrD = (i & 128) != 0 ? lh2Var.d() : lh2Var.f();
            } else {
                this.f244u = ph2.g(lh2Var.g(), bArr);
                this.t = lh2Var.b();
                if ((i & 128) != 0) {
                    bArrD = lh2Var.d();
                } else {
                    if (lh2Var.w == null) {
                        s9 s9Var = new s9();
                        s9Var.b(lh2Var.g());
                        lh2Var.w = s9Var.a();
                    }
                    bArrD = lh2Var.w;
                }
            }
        } catch (kh2 unused) {
            this.f244u = new byte[0];
            this.t = lh2Var.b();
            if ((i & 128) != 0) {
                bArrD = lh2Var.d();
            } else {
                if (lh2Var.v == null) {
                    lh2Var.v = new byte[16];
                    System.arraycopy(lh2Var.a(), 0, lh2Var.v, 0, 8);
                    Arrays.fill(lh2Var.v, 8, 16, (byte) 0);
                }
                bArrD = lh2Var.v;
            }
        }
        if ((i & 16) != 0) {
            if ((1073741824 & i) != 0) {
                if (lh2Var.j == null) {
                    Random random = lh2Var.a;
                    Charset charset2 = ph2.a;
                    byte[] bArr8 = new byte[16];
                    synchronized (random) {
                        random.nextBytes(bArr8);
                    }
                    lh2Var.j = bArr8;
                }
                byte[] bArr9 = lh2Var.j;
                this.w = bArr9;
                try {
                    Cipher cipher = Cipher.getInstance("RC4");
                    cipher.init(1, new SecretKeySpec(bArrD, "RC4"));
                    this.v = cipher.doFinal(bArr9);
                } catch (Exception e) {
                    throw new kh2(e.getMessage(), e);
                }
            } else {
                this.v = bArrD;
                this.w = bArrD;
            }
        } else {
            if (this.x) {
                throw new kh2(cm1.a("Cannot sign/seal: no exported session key"));
            }
            this.v = null;
            this.w = null;
        }
        if ((i & 1) == 0) {
            charset = ph2.b;
        } else {
            charset = ph2.a;
            if (charset == null) {
                throw new kh2("Unicode not supported");
            }
        }
        this.r = strSubstring2 != null ? strSubstring2.getBytes(charset) : null;
        this.q = strSubstring != null ? strSubstring.toUpperCase(Locale.ROOT).getBytes(charset) : null;
        this.s = str3.getBytes(charset);
    }

    @Override // defpackage.b70
    public final void e() {
        int i;
        byte[] bArr = this.f244u;
        int length = bArr.length;
        byte[] bArr2 = this.t;
        int length2 = bArr2.length;
        byte[] bArr3 = this.q;
        int length3 = bArr3 != null ? bArr3.length : 0;
        byte[] bArr4 = this.r;
        int length4 = bArr4 != null ? bArr4.length : 0;
        byte[] bArr5 = this.s;
        int length5 = bArr5.length;
        byte[] bArr6 = this.v;
        int length6 = bArr6 != null ? bArr6.length : 0;
        boolean z = this.x;
        int i2 = (z ? 16 : 0) + 72;
        int i3 = i2 + length2;
        int i4 = i3 + length;
        int i5 = i4 + length3;
        int i6 = i5 + length5;
        int i7 = i6 + length4;
        this.o = new byte[i7 + length6];
        this.n = 0;
        b(ph2.d);
        c(3);
        d(length2);
        d(length2);
        c(i2);
        d(length);
        d(length);
        c(i3);
        d(length3);
        d(length3);
        c(i4);
        d(length5);
        d(length5);
        c(i5);
        d(length4);
        d(length4);
        c(i6);
        d(length6);
        d(length6);
        c(i7);
        c(this.p);
        d(261);
        c(2600);
        d(3840);
        if (z) {
            i = this.n;
            this.n = i + 16;
        } else {
            i = -1;
        }
        b(bArr2);
        b(bArr);
        b(bArr3);
        b(bArr5);
        b(bArr4);
        if (bArr6 != null) {
            b(bArr6);
        }
        if (z) {
            eh ehVar = new eh(this.w);
            ehVar.M(null);
            ehVar.M(null);
            ehVar.M((byte[]) this.o);
            byte[] bArrY = ehVar.y();
            System.arraycopy(bArrY, 0, (byte[]) this.o, i, bArrY.length);
        }
    }
}
