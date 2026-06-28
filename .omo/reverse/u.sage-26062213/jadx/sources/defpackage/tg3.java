package defpackage;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tg3 extends g00 {
    public final transient byte[][] r;
    public final transient int[] s;

    public tg3(byte[][] bArr, int[] iArr) {
        super(g00.q.n);
        this.r = bArr;
        this.s = iArr;
    }

    @Override // defpackage.g00
    public final g00 b(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        byte[][] bArr = this.r;
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.s;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            messageDigest.update(bArr[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
        byte[] bArrDigest = messageDigest.digest();
        bArrDigest.getClass();
        return new g00(bArrDigest);
    }

    @Override // defpackage.g00
    public final int c() {
        return this.s[this.r.length - 1];
    }

    @Override // defpackage.g00
    public final String d() {
        return t().d();
    }

    @Override // defpackage.g00
    public final int e(int i, byte[] bArr) {
        bArr.getClass();
        return t().e(i, bArr);
    }

    @Override // defpackage.g00
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g00) {
            g00 g00Var = (g00) obj;
            if (g00Var.c() == c() && k(0, g00Var, c())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.g00
    public final byte[] g() {
        return s();
    }

    @Override // defpackage.g00
    public final byte h(int i) {
        byte[][] bArr = this.r;
        int length = bArr.length - 1;
        int[] iArr = this.s;
        is0.q(iArr[length], i, 1L);
        int iS = nt1.S(this, i);
        return bArr[iS][(i - (iS == 0 ? 0 : iArr[iS - 1])) + iArr[bArr.length + iS]];
    }

    @Override // defpackage.g00
    public final int hashCode() {
        int i = this.o;
        if (i != 0) {
            return i;
        }
        byte[][] bArr = this.r;
        int length = bArr.length;
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (i2 < length) {
            int[] iArr = this.s;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            byte[] bArr2 = bArr[i2];
            int i7 = (i6 - i4) + i5;
            while (i5 < i7) {
                i3 = (i3 * 31) + bArr2[i5];
                i5++;
            }
            i2++;
            i4 = i6;
        }
        this.o = i3;
        return i3;
    }

    @Override // defpackage.g00
    public final int i(byte[] bArr) {
        bArr.getClass();
        return t().i(bArr);
    }

    @Override // defpackage.g00
    public final boolean k(int i, g00 g00Var, int i2) {
        g00Var.getClass();
        if (i >= 0 && i <= c() - i2) {
            int i3 = i2 + i;
            int iS = nt1.S(this, i);
            int i4 = 0;
            while (i < i3) {
                int[] iArr = this.s;
                int i5 = iS == 0 ? 0 : iArr[iS - 1];
                int i6 = iArr[iS] - i5;
                byte[][] bArr = this.r;
                int i7 = iArr[bArr.length + iS];
                int iMin = Math.min(i3, i6 + i5) - i;
                if (g00Var.l(bArr[iS], i4, (i - i5) + i7, iMin)) {
                    i4 += iMin;
                    i += iMin;
                    iS++;
                }
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.g00
    public final boolean l(byte[] bArr, int i, int i2, int i3) {
        bArr.getClass();
        if (i < 0 || i > c() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int iS = nt1.S(this, i);
        while (i < i4) {
            int[] iArr = this.s;
            int i5 = iS == 0 ? 0 : iArr[iS - 1];
            int i6 = iArr[iS] - i5;
            byte[][] bArr2 = this.r;
            int i7 = iArr[bArr2.length + iS];
            int iMin = Math.min(i4, i6 + i5) - i;
            if (!is0.k((i - i5) + i7, i2, iMin, bArr2[iS], bArr)) {
                return false;
            }
            i2 += iMin;
            i += iMin;
            iS++;
        }
        return true;
    }

    @Override // defpackage.g00
    public final String m(Charset charset) {
        charset.getClass();
        return t().m(charset);
    }

    @Override // defpackage.g00
    public final g00 n(int i, int i2) {
        if (i2 == -1234567890) {
            i2 = c();
        }
        if (i < 0) {
            k21.l(xw1.q("beginIndex=", i, " < 0"));
            return null;
        }
        if (i2 > c()) {
            StringBuilder sbU = xw1.u("endIndex=", i2, " > length(");
            sbU.append(c());
            sbU.append(')');
            throw new IllegalArgumentException(sbU.toString().toString());
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            k21.l(di0.p(i2, i, "endIndex=", " < beginIndex="));
            return null;
        }
        if (i == 0 && i2 == c()) {
            return this;
        }
        if (i == i2) {
            return g00.q;
        }
        int iS = nt1.S(this, i);
        int iS2 = nt1.S(this, i2 - 1);
        byte[][] bArr = this.r;
        byte[][] bArr2 = (byte[][]) ji.T(bArr, iS, iS2 + 1);
        int[] iArr = new int[bArr2.length * 2];
        int[] iArr2 = this.s;
        if (iS <= iS2) {
            int i4 = iS;
            int i5 = 0;
            while (true) {
                iArr[i5] = Math.min(iArr2[i4] - i, i3);
                int i6 = i5 + 1;
                iArr[i5 + bArr2.length] = iArr2[bArr.length + i4];
                if (i4 == iS2) {
                    break;
                }
                i4++;
                i5 = i6;
            }
        }
        int i7 = iS != 0 ? iArr2[iS - 1] : 0;
        int length = bArr2.length;
        iArr[length] = (i - i7) + iArr[length];
        return new tg3(bArr2, iArr);
    }

    @Override // defpackage.g00
    public final g00 p() {
        return t().p();
    }

    @Override // defpackage.g00
    public final void r(sy syVar, int i) {
        int iS = nt1.S(this, 0);
        int i2 = 0;
        while (i2 < i) {
            int[] iArr = this.s;
            int i3 = iS == 0 ? 0 : iArr[iS - 1];
            int i4 = iArr[iS] - i3;
            byte[][] bArr = this.r;
            int i5 = iArr[bArr.length + iS];
            int iMin = Math.min(i, i4 + i3) - i2;
            int i6 = (i2 - i3) + i5;
            qg3 qg3Var = new qg3(bArr[iS], i6, i6 + iMin, true);
            qg3 qg3Var2 = syVar.n;
            if (qg3Var2 == null) {
                qg3Var.g = qg3Var;
                qg3Var.f = qg3Var;
                syVar.n = qg3Var;
            } else {
                qg3 qg3Var3 = qg3Var2.g;
                qg3Var3.getClass();
                qg3Var3.b(qg3Var);
            }
            i2 += iMin;
            iS++;
        }
        syVar.o += (long) i;
    }

    public final byte[] s() {
        byte[] bArr = new byte[c()];
        byte[][] bArr2 = this.r;
        int length = bArr2.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int[] iArr = this.s;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            int i6 = i5 - i2;
            ji.M(i3, i4, i4 + i6, bArr2[i], bArr);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    public final g00 t() {
        return new g00(s());
    }

    @Override // defpackage.g00
    public final String toString() {
        return t().toString();
    }
}
