package defpackage;

import com.google.android.gms.auth.blockstore.BlockstoreClient;
import com.google.android.gms.common.api.Api;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a70 extends b70 {
    public final FileInputStream p;
    public final byte[] q;
    public int r;
    public int s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f1u;
    public int v;
    public int w = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    public a70(FileInputStream fileInputStream) {
        Charset charset = dt1.a;
        this.p = fileInputStream;
        this.q = new byte[BlockstoreClient.MAX_SIZE];
        this.r = 0;
        this.t = 0;
        this.v = 0;
    }

    @Override // defpackage.b70
    public final long A() {
        return Q();
    }

    @Override // defpackage.b70
    public final int B() {
        int iR = R();
        return (-(iR & 1)) ^ (iR >>> 1);
    }

    @Override // defpackage.b70
    public final long C() {
        long jS = S();
        return (-(jS & 1)) ^ (jS >>> 1);
    }

    @Override // defpackage.b70
    public final String E() throws wt1 {
        int iR = R();
        byte[] bArr = this.q;
        if (iR > 0) {
            int i = this.r;
            int i2 = this.t;
            if (iR <= i - i2) {
                String str = new String(bArr, i2, iR, dt1.a);
                this.t += iR;
                return str;
            }
        }
        if (iR == 0) {
            return "";
        }
        if (iR < 0) {
            throw wt1.d();
        }
        if (iR > this.r) {
            return new String(M(iR), dt1.a);
        }
        V(iR);
        String str2 = new String(bArr, this.t, iR, dt1.a);
        this.t += iR;
        return str2;
    }

    @Override // defpackage.b70
    public final String F() throws IOException {
        int iR = R();
        int i = this.t;
        int i2 = this.r;
        int i3 = i2 - i;
        byte[] bArrM = this.q;
        if (iR <= i3 && iR > 0) {
            this.t = i + iR;
        } else {
            if (iR == 0) {
                return "";
            }
            if (iR < 0) {
                throw wt1.d();
            }
            i = 0;
            if (iR <= i2) {
                V(iR);
                this.t = iR;
            } else {
                bArrM = M(iR);
            }
        }
        return h94.a.n(bArrM, i, iR);
    }

    @Override // defpackage.b70
    public final int G() throws wt1 {
        if (j()) {
            this.f1u = 0;
            return 0;
        }
        int iR = R();
        this.f1u = iR;
        if ((iR >>> 3) != 0) {
            return iR;
        }
        throw new wt1("Protocol message contained an invalid tag (zero).");
    }

    @Override // defpackage.b70
    public final int H() {
        return R();
    }

    @Override // defpackage.b70
    public final long I() {
        return S();
    }

    @Override // defpackage.b70
    public final boolean J(int i) throws wt1 {
        int i2 = i & 7;
        int i3 = 0;
        if (i2 != 0) {
            if (i2 == 1) {
                W(8);
                return true;
            }
            if (i2 == 2) {
                W(R());
                return true;
            }
            if (i2 == 3) {
                K();
                f(((i >>> 3) << 3) | 4);
                return true;
            }
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw wt1.b();
            }
            W(4);
            return true;
        }
        int i4 = this.r - this.t;
        byte[] bArr = this.q;
        if (i4 >= 10) {
            while (i3 < 10) {
                int i5 = this.t;
                this.t = i5 + 1;
                if (bArr[i5] < 0) {
                    i3++;
                }
            }
            throw wt1.c();
        }
        while (i3 < 10) {
            if (this.t == this.r) {
                V(1);
            }
            int i6 = this.t;
            this.t = i6 + 1;
            if (bArr[i6] < 0) {
                i3++;
            }
        }
        throw wt1.c();
        return true;
    }

    public final byte[] M(int i) throws IOException {
        byte[] bArrN = N(i);
        if (bArrN != null) {
            return bArrN;
        }
        int i2 = this.t;
        int i3 = this.r;
        int length = i3 - i2;
        this.v += i3;
        this.t = 0;
        this.r = 0;
        ArrayList arrayListO = O(i - length);
        byte[] bArr = new byte[i];
        System.arraycopy(this.q, i2, bArr, 0, length);
        int size = arrayListO.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayListO.get(i4);
            i4++;
            byte[] bArr2 = (byte[]) obj;
            System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
            length += bArr2.length;
        }
        return bArr;
    }

    public final byte[] N(int i) throws IOException {
        if (i == 0) {
            return dt1.b;
        }
        if (i < 0) {
            throw wt1.d();
        }
        int i2 = this.v;
        int i3 = this.t;
        int i4 = i2 + i3 + i;
        if (i4 - Api.BaseClientBuilder.API_PRIORITY_OTHER > 0) {
            throw new wt1("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }
        int i5 = this.w;
        if (i4 > i5) {
            W((i5 - i2) - i3);
            throw wt1.e();
        }
        int i6 = this.r - i3;
        int i7 = i - i6;
        FileInputStream fileInputStream = this.p;
        if (i7 >= 4096) {
            try {
                if (i7 > fileInputStream.available()) {
                    return null;
                }
            } catch (wt1 e) {
                e.n = true;
                throw e;
            }
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.q, this.t, bArr, 0, i6);
        this.v += this.r;
        this.t = 0;
        this.r = 0;
        while (i6 < i) {
            try {
                int i8 = fileInputStream.read(bArr, i6, i - i6);
                if (i8 == -1) {
                    throw wt1.e();
                }
                this.v += i8;
                i6 += i8;
            } catch (wt1 e2) {
                e2.n = true;
                throw e2;
            }
        }
        return bArr;
    }

    public final ArrayList O(int i) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int iMin = Math.min(i, BlockstoreClient.MAX_SIZE);
            byte[] bArr = new byte[iMin];
            int i2 = 0;
            while (i2 < iMin) {
                int i3 = this.p.read(bArr, i2, iMin - i2);
                if (i3 == -1) {
                    throw wt1.e();
                }
                this.v += i3;
                i2 += i3;
            }
            i -= iMin;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    public final int P() throws wt1 {
        int i = this.t;
        if (this.r - i < 4) {
            V(4);
            i = this.t;
        }
        this.t = i + 4;
        byte[] bArr = this.q;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public final long Q() throws wt1 {
        int i = this.t;
        if (this.r - i < 8) {
            V(8);
            i = this.t;
        }
        this.t = i + 8;
        byte[] bArr = this.q;
        return ((((long) bArr[i + 1]) & 255) << 8) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    public final int R() {
        int i;
        int i2 = this.t;
        int i3 = this.r;
        if (i3 != i2) {
            int i4 = i2 + 1;
            byte[] bArr = this.q;
            byte b = bArr[i2];
            if (b >= 0) {
                this.t = i4;
                return b;
            }
            if (i3 - i4 >= 9) {
                int i5 = i2 + 2;
                int i6 = (bArr[i4] << 7) ^ b;
                if (i6 < 0) {
                    i = i6 ^ (-128);
                } else {
                    int i7 = i2 + 3;
                    int i8 = (bArr[i5] << 14) ^ i6;
                    if (i8 >= 0) {
                        i = i8 ^ 16256;
                    } else {
                        int i9 = i2 + 4;
                        int i10 = i8 ^ (bArr[i7] << 21);
                        if (i10 < 0) {
                            i = (-2080896) ^ i10;
                        } else {
                            i7 = i2 + 5;
                            byte b2 = bArr[i9];
                            int i11 = (i10 ^ (b2 << 28)) ^ 266354560;
                            if (b2 < 0) {
                                i9 = i2 + 6;
                                if (bArr[i7] < 0) {
                                    i7 = i2 + 7;
                                    if (bArr[i9] < 0) {
                                        i9 = i2 + 8;
                                        if (bArr[i7] < 0) {
                                            i7 = i2 + 9;
                                            if (bArr[i9] < 0) {
                                                int i12 = i2 + 10;
                                                if (bArr[i7] >= 0) {
                                                    i5 = i12;
                                                    i = i11;
                                                }
                                            }
                                        }
                                    }
                                }
                                i = i11;
                            }
                            i = i11;
                        }
                        i5 = i9;
                    }
                    i5 = i7;
                }
                this.t = i5;
                return i;
            }
        }
        return (int) T();
    }

    public final long S() {
        long j;
        long j2;
        long j3;
        long j4;
        int i = this.t;
        int i2 = this.r;
        if (i2 != i) {
            int i3 = i + 1;
            byte[] bArr = this.q;
            byte b = bArr[i];
            if (b >= 0) {
                this.t = i3;
                return b;
            }
            if (i2 - i3 >= 9) {
                int i4 = i + 2;
                int i5 = (bArr[i3] << 7) ^ b;
                if (i5 < 0) {
                    j = i5 ^ (-128);
                } else {
                    int i6 = i + 3;
                    int i7 = (bArr[i4] << 14) ^ i5;
                    if (i7 >= 0) {
                        j = i7 ^ 16256;
                        i4 = i6;
                    } else {
                        int i8 = i + 4;
                        int i9 = i7 ^ (bArr[i6] << 21);
                        if (i9 < 0) {
                            j4 = (-2080896) ^ i9;
                        } else {
                            long j5 = i9;
                            i4 = i + 5;
                            long j6 = j5 ^ (((long) bArr[i8]) << 28);
                            if (j6 >= 0) {
                                j3 = 266354560;
                            } else {
                                i8 = i + 6;
                                long j7 = j6 ^ (((long) bArr[i4]) << 35);
                                if (j7 < 0) {
                                    j2 = -34093383808L;
                                } else {
                                    i4 = i + 7;
                                    j6 = j7 ^ (((long) bArr[i8]) << 42);
                                    if (j6 >= 0) {
                                        j3 = 4363953127296L;
                                    } else {
                                        i8 = i + 8;
                                        j7 = j6 ^ (((long) bArr[i4]) << 49);
                                        if (j7 < 0) {
                                            j2 = -558586000294016L;
                                        } else {
                                            i4 = i + 9;
                                            long j8 = (j7 ^ (((long) bArr[i8]) << 56)) ^ 71499008037633920L;
                                            if (j8 < 0) {
                                                int i10 = i + 10;
                                                if (bArr[i4] >= 0) {
                                                    i4 = i10;
                                                }
                                            }
                                            j = j8;
                                        }
                                    }
                                }
                                j4 = j2 ^ j7;
                            }
                            j = j3 ^ j6;
                        }
                        i4 = i8;
                        j = j4;
                    }
                }
                this.t = i4;
                return j;
            }
        }
        return T();
    }

    public final long T() throws wt1 {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            if (this.t == this.r) {
                V(1);
            }
            int i2 = this.t;
            this.t = i2 + 1;
            byte b = this.q[i2];
            j |= ((long) (b & 127)) << i;
            if ((b & 128) == 0) {
                return j;
            }
        }
        throw wt1.c();
    }

    public final void U() {
        int i = this.r + this.s;
        this.r = i;
        int i2 = this.v + i;
        int i3 = this.w;
        if (i2 <= i3) {
            this.s = 0;
            return;
        }
        int i4 = i2 - i3;
        this.s = i4;
        this.r = i - i4;
    }

    public final void V(int i) throws wt1 {
        if (X(i)) {
            return;
        }
        if (i <= (Api.BaseClientBuilder.API_PRIORITY_OTHER - this.v) - this.t) {
            throw wt1.e();
        }
        throw new wt1("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    public final void W(int i) throws wt1 {
        int i2 = this.r;
        int i3 = this.t;
        int i4 = i2 - i3;
        if (i <= i4 && i >= 0) {
            this.t = i3 + i;
            return;
        }
        FileInputStream fileInputStream = this.p;
        if (i < 0) {
            throw wt1.d();
        }
        int i5 = this.v;
        int i6 = i5 + i3;
        int i7 = i6 + i;
        int i8 = this.w;
        if (i7 > i8) {
            W((i8 - i5) - i3);
            throw wt1.e();
        }
        this.v = i6;
        this.r = 0;
        this.t = 0;
        while (i4 < i) {
            long j = i - i4;
            try {
                try {
                    long jSkip = fileInputStream.skip(j);
                    if (jSkip < 0 || jSkip > j) {
                        throw new IllegalStateException(fileInputStream.getClass() + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                    }
                    if (jSkip == 0) {
                        break;
                    } else {
                        i4 += (int) jSkip;
                    }
                } catch (wt1 e) {
                    e.n = true;
                    throw e;
                }
            } catch (Throwable th) {
                this.v += i4;
                U();
                throw th;
            }
        }
        this.v += i4;
        U();
        if (i4 >= i) {
            return;
        }
        int i9 = this.r;
        int i10 = i9 - this.t;
        this.t = i9;
        V(1);
        while (true) {
            int i11 = i - i10;
            int i12 = this.r;
            if (i11 <= i12) {
                this.t = i11;
                return;
            } else {
                i10 += i12;
                this.t = i12;
                V(1);
            }
        }
    }

    public final boolean X(int i) throws IOException {
        FileInputStream fileInputStream = this.p;
        int i2 = this.t;
        int i3 = i2 + i;
        int i4 = this.r;
        if (i3 <= i4) {
            k21.n(xw1.q("refillBuffer() called when ", i, " bytes were already available in buffer"));
            return false;
        }
        int i5 = this.v;
        if (i <= (Api.BaseClientBuilder.API_PRIORITY_OTHER - i5) - i2 && i5 + i2 + i <= this.w) {
            byte[] bArr = this.q;
            if (i2 > 0) {
                if (i4 > i2) {
                    System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
                }
                this.v += i2;
                this.r -= i2;
                this.t = 0;
            }
            int i6 = this.r;
            try {
                int i7 = fileInputStream.read(bArr, i6, Math.min(bArr.length - i6, (Api.BaseClientBuilder.API_PRIORITY_OTHER - this.v) - i6));
                if (i7 == 0 || i7 < -1 || i7 > bArr.length) {
                    throw new IllegalStateException(fileInputStream.getClass() + "#read(byte[]) returned invalid result: " + i7 + "\nThe InputStream implementation is buggy.");
                }
                if (i7 > 0) {
                    this.r += i7;
                    U();
                    if (this.r >= i) {
                        return true;
                    }
                    return X(i);
                }
            } catch (wt1 e) {
                e.n = true;
                throw e;
            }
        }
        return false;
    }

    @Override // defpackage.b70
    public final void f(int i) throws wt1 {
        if (this.f1u != i) {
            throw new wt1("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // defpackage.b70
    public final int i() {
        return this.v + this.t;
    }

    @Override // defpackage.b70
    public final boolean j() {
        return this.t == this.r && !X(1);
    }

    @Override // defpackage.b70
    public final void o(int i) {
        this.w = i;
        U();
    }

    @Override // defpackage.b70
    public final int p(int i) throws wt1 {
        if (i < 0) {
            throw wt1.d();
        }
        int i2 = this.v + this.t + i;
        if (i2 < 0) {
            throw new wt1("Failed to parse the message.");
        }
        int i3 = this.w;
        if (i2 > i3) {
            throw wt1.e();
        }
        this.w = i2;
        U();
        return i3;
    }

    @Override // defpackage.b70
    public final boolean q() {
        return S() != 0;
    }

    @Override // defpackage.b70
    public final f00 r() throws IOException {
        int iR = R();
        int i = this.r;
        int i2 = this.t;
        int i3 = i - i2;
        byte[] bArr = this.q;
        if (iR <= i3 && iR > 0) {
            f00 f00VarD = f00.d(bArr, i2, iR);
            this.t += iR;
            return f00VarD;
        }
        if (iR == 0) {
            return f00.p;
        }
        if (iR < 0) {
            throw wt1.d();
        }
        byte[] bArrN = N(iR);
        if (bArrN != null) {
            return f00.d(bArrN, 0, bArrN.length);
        }
        int i4 = this.t;
        int i5 = this.r;
        int length = i5 - i4;
        this.v += i5;
        this.t = 0;
        this.r = 0;
        ArrayList arrayListO = O(iR - length);
        byte[] bArr2 = new byte[iR];
        System.arraycopy(bArr, i4, bArr2, 0, length);
        int size = arrayListO.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayListO.get(i6);
            i6++;
            byte[] bArr3 = (byte[]) obj;
            System.arraycopy(bArr3, 0, bArr2, length, bArr3.length);
            length += bArr3.length;
        }
        f00 f00Var = f00.p;
        return new f00(bArr2);
    }

    @Override // defpackage.b70
    public final double s() {
        return Double.longBitsToDouble(Q());
    }

    @Override // defpackage.b70
    public final int t() {
        return R();
    }

    @Override // defpackage.b70
    public final int u() {
        return P();
    }

    @Override // defpackage.b70
    public final long v() {
        return Q();
    }

    @Override // defpackage.b70
    public final float w() {
        return Float.intBitsToFloat(P());
    }

    @Override // defpackage.b70
    public final int x() {
        return R();
    }

    @Override // defpackage.b70
    public final long y() {
        return S();
    }

    @Override // defpackage.b70
    public final int z() {
        return P();
    }
}
