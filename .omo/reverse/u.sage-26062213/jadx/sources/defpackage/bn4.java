package defpackage;

import com.google.android.gms.auth.blockstore.BlockstoreClient;
import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bn4 extends cn4 {
    public final InputStream d;
    public final byte[] e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    public /* synthetic */ bn4(InputStream inputStream, int i) {
        this.d = inputStream;
        this.e = new byte[i < 8 ? 8 : i];
        this.f = 0;
        this.h = 0;
        this.j = 0;
    }

    @Override // defpackage.cn4
    public final int A() {
        return G();
    }

    @Override // defpackage.cn4
    public final int B() {
        return G();
    }

    @Override // defpackage.cn4
    public final int C() {
        return P();
    }

    @Override // defpackage.cn4
    public final long D() {
        return Q();
    }

    @Override // defpackage.cn4
    public final int E() {
        return cn4.j(G());
    }

    @Override // defpackage.cn4
    public final long F() {
        return cn4.k(H());
    }

    @Override // defpackage.cn4
    public final int G() {
        int i;
        int i2 = this.h;
        int i3 = this.f;
        if (i3 != i2) {
            int i4 = i2 + 1;
            byte[] bArr = this.e;
            byte b = bArr[i2];
            if (b >= 0) {
                this.h = i4;
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
                this.h = i5;
                return i;
            }
        }
        return (int) O();
    }

    @Override // defpackage.cn4
    public final long H() {
        long j;
        long j2;
        long j3;
        int i = this.h;
        int i2 = this.f;
        if (i2 != i) {
            int i3 = i + 1;
            byte[] bArr = this.e;
            byte b = bArr[i];
            if (b >= 0) {
                this.h = i3;
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
                    } else {
                        int i8 = i + 4;
                        int i9 = i7 ^ (bArr[i6] << 21);
                        if (i9 < 0) {
                            long j4 = (-2080896) ^ i9;
                            i4 = i8;
                            j = j4;
                        } else {
                            i6 = i + 5;
                            long j5 = ((long) i9) ^ (((long) bArr[i8]) << 28);
                            if (j5 >= 0) {
                                j2 = 266354560;
                            } else {
                                int i10 = i + 6;
                                long j6 = j5 ^ (((long) bArr[i6]) << 35);
                                if (j6 < 0) {
                                    j3 = -34093383808L;
                                } else {
                                    i6 = i + 7;
                                    j5 = j6 ^ (((long) bArr[i10]) << 42);
                                    if (j5 >= 0) {
                                        j2 = 4363953127296L;
                                    } else {
                                        i10 = i + 8;
                                        j6 = j5 ^ (((long) bArr[i6]) << 49);
                                        if (j6 < 0) {
                                            j3 = -558586000294016L;
                                        } else {
                                            i6 = i + 9;
                                            j5 = j6 ^ (((long) bArr[i10]) << 56);
                                            if (j5 >= 0) {
                                                j2 = 71499008037633920L;
                                            } else {
                                                int i11 = i + 10;
                                                long j7 = j5 ^ (((long) bArr[i6]) << 63);
                                                if (j7 >= 0) {
                                                    j = j7 ^ (-9151873028817141888L);
                                                    i4 = i11;
                                                }
                                            }
                                        }
                                    }
                                }
                                j = j6 ^ j3;
                                i4 = i10;
                            }
                            j = j5 ^ j2;
                        }
                    }
                    i4 = i6;
                }
                this.h = i4;
                return j;
            }
        }
        return O();
    }

    public final void I() {
        int i = this.f + this.g;
        this.f = i;
        int i2 = this.j + i;
        int i3 = this.k;
        if (i2 <= i3) {
            this.g = 0;
            return;
        }
        int i4 = i2 - i3;
        this.g = i4;
        this.f = i - i4;
    }

    public final void J(int i) throws fo4 {
        if (K(i)) {
            return;
        }
        if (i > (Api.BaseClientBuilder.API_PRIORITY_OTHER - this.j) - this.h) {
            q73.t("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
        } else {
            q73.t("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public final boolean K(int i) throws IOException {
        InputStream inputStream = this.d;
        int i2 = this.h;
        int i3 = i2 + i;
        int i4 = this.f;
        if (i3 <= i4) {
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 66);
            sb.append("refillBuffer() called when ");
            sb.append(i);
            sb.append(" bytes were already available in buffer");
            throw new IllegalStateException(sb.toString());
        }
        int i5 = this.j;
        if (i <= (Api.BaseClientBuilder.API_PRIORITY_OTHER - i5) - i2 && i5 + i2 + i <= this.k) {
            byte[] bArr = this.e;
            if (i2 > 0) {
                if (i4 > i2) {
                    System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
                }
                i5 = this.j + i2;
                this.j = i5;
                i4 = this.f - i2;
                this.f = i4;
                this.h = 0;
            }
            try {
                int i6 = inputStream.read(bArr, i4, Math.min(bArr.length - i4, (Api.BaseClientBuilder.API_PRIORITY_OTHER - i5) - i4));
                if (i6 == 0 || i6 < -1 || i6 > bArr.length) {
                    String strValueOf = String.valueOf(inputStream.getClass());
                    StringBuilder sb2 = new StringBuilder(String.valueOf(i6).length() + strValueOf.length() + 39 + 41);
                    sb2.append(strValueOf);
                    sb2.append("#read(byte[]) returned invalid result: ");
                    sb2.append(i6);
                    sb2.append("\nThe InputStream implementation is buggy.");
                    throw new IllegalStateException(sb2.toString());
                }
                if (i6 > 0) {
                    this.f += i6;
                    I();
                    if (this.f >= i || K(i)) {
                        return true;
                    }
                }
            } catch (fo4 e) {
                e.n = true;
                throw e;
            }
        }
        return false;
    }

    public final byte[] L(int i) throws IOException {
        byte[] bArrM = M(i);
        if (bArrM != null) {
            return bArrM;
        }
        int i2 = this.h;
        int i3 = this.f;
        int i4 = i3 - i2;
        this.j += i3;
        this.h = 0;
        this.f = 0;
        ArrayList arrayListN = N(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.e, i2, bArr, 0, i4);
        int size = arrayListN.size();
        int i5 = 0;
        while (i5 < size) {
            Object obj = arrayListN.get(i5);
            i5++;
            byte[] bArr2 = (byte[]) obj;
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i4, length);
            i4 += length;
        }
        return bArr;
    }

    public final byte[] M(int i) throws IOException {
        if (i == 0) {
            return bo4.a;
        }
        int i2 = this.j;
        int i3 = this.h;
        int i4 = i2 + i3 + i;
        if ((-2147483647) + i4 > 0) {
            q73.t("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
            return null;
        }
        int i5 = this.k;
        if (i4 > i5) {
            g((i5 - i2) - i3);
            q73.t("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return null;
        }
        int i6 = this.f - i3;
        int i7 = i - i6;
        InputStream inputStream = this.d;
        if (i7 >= 4096) {
            try {
                if (i7 > inputStream.available()) {
                    return null;
                }
            } catch (fo4 e) {
                e.n = true;
                throw e;
            }
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.e, this.h, bArr, 0, i6);
        this.j += this.f;
        this.h = 0;
        this.f = 0;
        while (i6 < i) {
            try {
                int i8 = inputStream.read(bArr, i6, i - i6);
                if (i8 == -1) {
                    q73.t("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                    return null;
                }
                this.j += i8;
                i6 += i8;
            } catch (fo4 e2) {
                e2.n = true;
                throw e2;
            }
        }
        return bArr;
    }

    public final ArrayList N(int i) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int iMin = Math.min(i, BlockstoreClient.MAX_SIZE);
            byte[] bArr = new byte[iMin];
            int i2 = 0;
            while (i2 < iMin) {
                try {
                    int i3 = this.d.read(bArr, i2, iMin - i2);
                    if (i3 == -1) {
                        q73.t("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                        return null;
                    }
                    this.j += i3;
                    i2 += i3;
                } catch (fo4 e) {
                    e.n = true;
                    throw e;
                }
            }
            i -= iMin;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    public final long O() throws fo4 {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            if (this.h == this.f) {
                J(1);
            }
            int i2 = this.h;
            this.h = i2 + 1;
            byte b = this.e[i2];
            j |= ((long) (b & 127)) << i;
            if ((b & 128) == 0) {
                return j;
            }
        }
        q73.t("CodedInputStream encountered a malformed varint.");
        return 0L;
    }

    public final int P() throws fo4 {
        int i = this.h;
        if (this.f - i < 4) {
            J(4);
            i = this.h;
        }
        this.h = i + 4;
        byte[] bArr = this.e;
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public final long Q() throws fo4 {
        int i = this.h;
        if (this.f - i < 8) {
            J(8);
            i = this.h;
        }
        this.h = i + 8;
        byte[] bArr = this.e;
        long j = bArr[i];
        long j2 = (((long) bArr[i + 1]) & 255) << 8;
        long j3 = bArr[i + 2];
        long j4 = bArr[i + 3];
        long j5 = bArr[i + 4];
        return ((((long) bArr[i + 7]) & 255) << 56) | j2 | (j & 255) | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((j5 & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    @Override // defpackage.cn4
    public final int a(int i) throws fo4 {
        if (i < 0) {
            q73.t("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        int i2 = this.j + this.h + i;
        if (i2 < 0) {
            q73.t("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
            return 0;
        }
        int i3 = this.k;
        if (i2 > i3) {
            q73.t("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        this.k = i2;
        I();
        return i3;
    }

    @Override // defpackage.cn4
    public final void b(int i) {
        this.k = i;
        I();
    }

    @Override // defpackage.cn4
    public final int c() {
        int i = this.k;
        if (i == Integer.MAX_VALUE) {
            return -1;
        }
        return i - (this.j + this.h);
    }

    @Override // defpackage.cn4
    public final boolean d() {
        return this.h == this.f && !K(1);
    }

    @Override // defpackage.cn4
    public final int e() {
        return this.j + this.h;
    }

    @Override // defpackage.cn4
    public final int f(byte[] bArr, int i, int i2) throws IOException {
        if ((bArr.length - i) - i2 < 0 || (i | i2) < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f;
        int i4 = this.h;
        int i5 = i3 - i4;
        if (i5 > 0) {
            int iMin = Math.min(i2, i5);
            System.arraycopy(this.e, this.h, bArr, i, iMin);
            this.h += iMin;
            return iMin;
        }
        int iMin2 = Math.min(i2, (this.k - this.j) - i4);
        if (iMin2 <= 0) {
            return -1;
        }
        try {
            int i6 = this.d.read(bArr, i, iMin2);
            if (i6 != -1) {
                this.j += i6;
            }
            return i6;
        } catch (fo4 e) {
            e.n = true;
            throw e;
        }
    }

    @Override // defpackage.cn4
    public final void g(int i) throws fo4 {
        InputStream inputStream = this.d;
        int i2 = this.f;
        int i3 = this.h;
        int i4 = i2 - i3;
        if (i <= i4 && i >= 0) {
            this.h = i3 + i;
            return;
        }
        if (i < 0) {
            q73.t("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return;
        }
        int i5 = this.j;
        int i6 = i5 + i3;
        int i7 = this.k;
        if (i6 + i > i7) {
            g((i7 - i5) - i3);
            q73.t("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return;
        }
        this.j = i6;
        this.f = 0;
        this.h = 0;
        while (i4 < i) {
            long j = i - i4;
            try {
                try {
                    long jSkip = inputStream.skip(j);
                    if (jSkip < 0 || jSkip > j) {
                        String strValueOf = String.valueOf(inputStream.getClass());
                        StringBuilder sb = new StringBuilder(strValueOf.length() + 31 + String.valueOf(jSkip).length() + 41);
                        sb.append(strValueOf);
                        sb.append("#skip returned invalid result: ");
                        sb.append(jSkip);
                        sb.append("\nThe InputStream implementation is buggy.");
                        throw new IllegalStateException(sb.toString());
                    }
                    if (jSkip == 0) {
                        break;
                    } else {
                        i4 += (int) jSkip;
                    }
                } catch (fo4 e) {
                    e.n = true;
                    throw e;
                }
            } catch (Throwable th) {
                this.j += i4;
                I();
                throw th;
            }
        }
        this.j += i4;
        I();
        if (i4 >= i) {
            return;
        }
        int i8 = this.f;
        int i9 = i8 - this.h;
        this.h = i8;
        J(1);
        while (true) {
            int i10 = i - i9;
            int i11 = this.f;
            if (i10 <= i11) {
                this.h = i10;
                return;
            } else {
                i9 += i11;
                this.h = i11;
                J(1);
            }
        }
    }

    @Override // defpackage.cn4
    public final int l() throws fo4 {
        if (d()) {
            this.i = 0;
            return 0;
        }
        int iG = G();
        this.i = iG;
        if ((iG >>> 3) != 0) {
            return iG;
        }
        q73.t("Protocol message contained an invalid tag (zero).");
        return 0;
    }

    @Override // defpackage.cn4
    public final void m(int i) throws fo4 {
        if (this.i == i) {
            return;
        }
        q73.t("Protocol message end-group tag did not match expected tag.");
    }

    @Override // defpackage.cn4
    public final boolean n(int i) throws fo4 {
        int i2 = i & 7;
        if (i2 != 0) {
            if (i2 == 1) {
                g(8);
                return true;
            }
            if (i2 == 2) {
                g(G());
                return true;
            }
            if (i2 == 3) {
                i();
                m(((i >>> 3) << 3) | 4);
                return true;
            }
            if (i2 == 4) {
                if (this.b == 0) {
                    m(0);
                }
                return false;
            }
            if (i2 == 5) {
                g(4);
                return true;
            }
            q73.p();
            return false;
        }
        int i3 = this.f - this.h;
        byte[] bArr = this.e;
        if (i3 >= 10) {
            for (int i4 = 0; i4 < 10; i4++) {
                int i5 = this.h;
                this.h = i5 + 1;
                if (bArr[i5] < 0) {
                }
            }
            q73.t("CodedInputStream encountered a malformed varint.");
            return false;
        }
        for (int i6 = 0; i6 < 10; i6++) {
            if (this.h == this.f) {
                J(1);
            }
            int i7 = this.h;
            this.h = i7 + 1;
            if (bArr[i7] < 0) {
            }
        }
        q73.t("CodedInputStream encountered a malformed varint.");
        return false;
        return true;
    }

    @Override // defpackage.cn4
    public final double o() {
        return Double.longBitsToDouble(Q());
    }

    @Override // defpackage.cn4
    public final float p() {
        return Float.intBitsToFloat(P());
    }

    @Override // defpackage.cn4
    public final long q() {
        return H();
    }

    @Override // defpackage.cn4
    public final long r() {
        return H();
    }

    @Override // defpackage.cn4
    public final int s() {
        return G();
    }

    @Override // defpackage.cn4
    public final long t() {
        return Q();
    }

    @Override // defpackage.cn4
    public final int u() {
        return P();
    }

    @Override // defpackage.cn4
    public final boolean v() {
        return H() != 0;
    }

    @Override // defpackage.cn4
    public final String w() throws fo4 {
        int iG = G();
        byte[] bArr = this.e;
        if (iG > 0) {
            int i = this.f;
            int i2 = this.h;
            if (iG <= i - i2) {
                String str = new String(bArr, i2, iG, StandardCharsets.UTF_8);
                this.h += iG;
                return str;
            }
        }
        if (iG == 0) {
            return "";
        }
        if (iG < 0) {
            q73.t("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return null;
        }
        if (iG > this.f) {
            return new String(L(iG), StandardCharsets.UTF_8);
        }
        J(iG);
        String str2 = new String(bArr, this.h, iG, StandardCharsets.UTF_8);
        this.h += iG;
        return str2;
    }

    @Override // defpackage.cn4
    public final String x() throws IOException {
        int iG = G();
        int i = this.h;
        int i2 = this.f;
        int i3 = i2 - i;
        byte[] bArrL = this.e;
        if (iG <= i3 && iG > 0) {
            this.h = i + iG;
        } else {
            if (iG == 0) {
                return "";
            }
            if (iG < 0) {
                q73.t("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                return null;
            }
            i = 0;
            if (iG <= i2) {
                J(iG);
                this.h = iG;
            } else {
                bArrL = L(iG);
            }
        }
        return tp4.d(bArrL, i, iG);
    }

    @Override // defpackage.cn4
    public final ym4 y() throws IOException {
        int iG = G();
        int i = this.f;
        int i2 = this.h;
        int i3 = i - i2;
        byte[] bArr = this.e;
        if (iG <= i3 && iG > 0) {
            ym4 ym4VarK = zm4.k(bArr, i2, iG);
            this.h += iG;
            return ym4VarK;
        }
        if (iG == 0) {
            return zm4.o;
        }
        if (iG < 0) {
            q73.t("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return null;
        }
        byte[] bArrM = M(iG);
        if (bArrM != null) {
            return zm4.k(bArrM, 0, bArrM.length);
        }
        int i4 = this.h;
        int i5 = this.f;
        int i6 = i5 - i4;
        this.j += i5;
        this.h = 0;
        this.f = 0;
        ArrayList arrayListN = N(iG - i6);
        byte[] bArr2 = new byte[iG];
        System.arraycopy(bArr, i4, bArr2, 0, i6);
        int size = arrayListN.size();
        int i7 = 0;
        while (i7 < size) {
            Object obj = arrayListN.get(i7);
            i7++;
            byte[] bArr3 = (byte[]) obj;
            int length = bArr3.length;
            System.arraycopy(bArr3, 0, bArr2, i6, length);
            i6 += length;
        }
        try {
            ym4 ym4Var = zm4.o;
            return iG == 0 ? zm4.o : new ym4(bArr2);
        } catch (fo4 e) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
        }
    }

    @Override // defpackage.cn4
    public final byte[] z() throws fo4 {
        int iG = G();
        int i = this.f;
        int i2 = this.h;
        if (iG <= i - i2 && iG > 0) {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(this.e, i2, i2 + iG);
            this.h += iG;
            return bArrCopyOfRange;
        }
        if (iG >= 0) {
            return L(iG);
        }
        q73.t("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        return null;
    }
}
