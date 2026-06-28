package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s9 {
    public int a;
    public int b;
    public int c;
    public int d;
    public long e;
    public final Object f;

    public s9() {
        this.a = 1732584193;
        this.b = -271733879;
        this.c = -1732584194;
        this.d = 271733878;
        this.e = 0L;
        this.f = new byte[64];
    }

    public byte[] a() {
        int i = (int) (this.e & 63);
        int i2 = i < 56 ? 56 - i : 120 - i;
        byte[] bArr = new byte[i2 + 8];
        bArr[0] = -128;
        for (int i3 = 0; i3 < 8; i3++) {
            bArr[i2 + i3] = (byte) ((this.e * 8) >>> (i3 * 8));
        }
        b(bArr);
        byte[] bArr2 = new byte[16];
        ph2.j(bArr2, this.a, 0);
        ph2.j(bArr2, this.b, 4);
        ph2.j(bArr2, this.c, 8);
        ph2.j(bArr2, this.d, 12);
        return bArr2;
    }

    public void b(byte[] bArr) {
        byte[] bArr2 = (byte[]) this.f;
        int i = (int) (this.e & 63);
        int i2 = 0;
        int i3 = 0;
        while ((bArr.length - i3) + i >= bArr2.length) {
            int length = bArr2.length - i;
            System.arraycopy(bArr, i3, bArr2, i, length);
            this.e += (long) length;
            i3 += length;
            int[] iArr = new int[16];
            for (int i4 = i2; i4 < 16; i4++) {
                int i5 = i4 * 4;
                iArr[i4] = (bArr2[i5] & 255) + ((bArr2[i5 + 1] & 255) << 8) + ((bArr2[i5 + 2] & 255) << 16) + ((bArr2[i5 + 3] & 255) << 24);
            }
            int i6 = this.a;
            int i7 = this.b;
            int i8 = this.c;
            int i9 = this.d;
            int i10 = ph2.i(ph2.a(i7, i8, i9) + i6 + iArr[i2], 3);
            this.a = i10;
            int i11 = ph2.i(ph2.a(i10, this.b, this.c) + this.d + iArr[1], 7);
            this.d = i11;
            int i12 = i2;
            int i13 = ph2.i(ph2.a(i11, this.a, this.b) + this.c + iArr[2], 11);
            this.c = i13;
            int i14 = ph2.i(ph2.a(i13, this.d, this.a) + this.b + iArr[3], 19);
            this.b = i14;
            int i15 = ph2.i(ph2.a(i14, this.c, this.d) + this.a + iArr[4], 3);
            this.a = i15;
            int i16 = ph2.i(ph2.a(i15, this.b, this.c) + this.d + iArr[5], 7);
            this.d = i16;
            int i17 = ph2.i(ph2.a(i16, this.a, this.b) + this.c + iArr[6], 11);
            this.c = i17;
            int i18 = ph2.i(ph2.a(i17, this.d, this.a) + this.b + iArr[7], 19);
            this.b = i18;
            int i19 = ph2.i(ph2.a(i18, this.c, this.d) + this.a + iArr[8], 3);
            this.a = i19;
            int i20 = ph2.i(ph2.a(i19, this.b, this.c) + this.d + iArr[9], 7);
            this.d = i20;
            int i21 = ph2.i(ph2.a(i20, this.a, this.b) + this.c + iArr[10], 11);
            this.c = i21;
            int i22 = ph2.i(ph2.a(i21, this.d, this.a) + this.b + iArr[11], 19);
            this.b = i22;
            int i23 = ph2.i(ph2.a(i22, this.c, this.d) + this.a + iArr[12], 3);
            this.a = i23;
            int i24 = ph2.i(ph2.a(i23, this.b, this.c) + this.d + iArr[13], 7);
            this.d = i24;
            int i25 = ph2.i(ph2.a(i24, this.a, this.b) + this.c + iArr[14], 11);
            this.c = i25;
            int i26 = ph2.i(ph2.a(i25, this.d, this.a) + this.b + iArr[15], 19);
            this.b = i26;
            int iK = xw1.k(ph2.b(i26, this.c, this.d) + this.a, iArr[i12], 1518500249, 3);
            this.a = iK;
            int iK2 = xw1.k(ph2.b(iK, this.b, this.c) + this.d, iArr[4], 1518500249, 5);
            this.d = iK2;
            int iK3 = xw1.k(ph2.b(iK2, this.a, this.b) + this.c, iArr[8], 1518500249, 9);
            this.c = iK3;
            int iK4 = xw1.k(ph2.b(iK3, this.d, this.a) + this.b, iArr[12], 1518500249, 13);
            this.b = iK4;
            int iK5 = xw1.k(ph2.b(iK4, this.c, this.d) + this.a, iArr[1], 1518500249, 3);
            this.a = iK5;
            int iK6 = xw1.k(ph2.b(iK5, this.b, this.c) + this.d, iArr[5], 1518500249, 5);
            this.d = iK6;
            int iK7 = xw1.k(ph2.b(iK6, this.a, this.b) + this.c, iArr[9], 1518500249, 9);
            this.c = iK7;
            int iK8 = xw1.k(ph2.b(iK7, this.d, this.a) + this.b, iArr[13], 1518500249, 13);
            this.b = iK8;
            int iK9 = xw1.k(ph2.b(iK8, this.c, this.d) + this.a, iArr[2], 1518500249, 3);
            this.a = iK9;
            int iK10 = xw1.k(ph2.b(iK9, this.b, this.c) + this.d, iArr[6], 1518500249, 5);
            this.d = iK10;
            int iK11 = xw1.k(ph2.b(iK10, this.a, this.b) + this.c, iArr[10], 1518500249, 9);
            this.c = iK11;
            int iK12 = xw1.k(ph2.b(iK11, this.d, this.a) + this.b, iArr[14], 1518500249, 13);
            this.b = iK12;
            int iK13 = xw1.k(ph2.b(iK12, this.c, this.d) + this.a, iArr[3], 1518500249, 3);
            this.a = iK13;
            int iK14 = xw1.k(ph2.b(iK13, this.b, this.c) + this.d, iArr[7], 1518500249, 5);
            this.d = iK14;
            int iK15 = xw1.k(ph2.b(iK14, this.a, this.b) + this.c, iArr[11], 1518500249, 9);
            this.c = iK15;
            int iK16 = xw1.k(ph2.b(iK15, this.d, this.a) + this.b, iArr[15], 1518500249, 13);
            this.b = iK16;
            int iK17 = xw1.k(this.a + ((iK16 ^ this.c) ^ this.d), iArr[i12], 1859775393, 3);
            this.a = iK17;
            int iK18 = xw1.k(this.d + ((iK17 ^ this.b) ^ this.c), iArr[8], 1859775393, 9);
            this.d = iK18;
            int iK19 = xw1.k(this.c + ((iK18 ^ this.a) ^ this.b), iArr[4], 1859775393, 11);
            this.c = iK19;
            int iK20 = xw1.k(this.b + ((iK19 ^ this.d) ^ this.a), iArr[12], 1859775393, 15);
            this.b = iK20;
            int iK21 = xw1.k(this.a + ((iK20 ^ this.c) ^ this.d), iArr[2], 1859775393, 3);
            this.a = iK21;
            int iK22 = xw1.k(this.d + ((iK21 ^ this.b) ^ this.c), iArr[10], 1859775393, 9);
            this.d = iK22;
            int iK23 = xw1.k(this.c + ((iK22 ^ this.a) ^ this.b), iArr[6], 1859775393, 11);
            this.c = iK23;
            int iK24 = xw1.k(this.b + ((iK23 ^ this.d) ^ this.a), iArr[14], 1859775393, 15);
            this.b = iK24;
            int iK25 = xw1.k(this.a + ((iK24 ^ this.c) ^ this.d), iArr[1], 1859775393, 3);
            this.a = iK25;
            int iK26 = xw1.k(this.d + ((iK25 ^ this.b) ^ this.c), iArr[9], 1859775393, 9);
            this.d = iK26;
            int iK27 = xw1.k(this.c + ((iK26 ^ this.a) ^ this.b), iArr[5], 1859775393, 11);
            this.c = iK27;
            int iK28 = xw1.k(this.b + ((iK27 ^ this.d) ^ this.a), iArr[13], 1859775393, 15);
            this.b = iK28;
            int iK29 = xw1.k(this.a + ((iK28 ^ this.c) ^ this.d), iArr[3], 1859775393, 3);
            this.a = iK29;
            int iK30 = xw1.k(this.d + ((iK29 ^ this.b) ^ this.c), iArr[11], 1859775393, 9);
            this.d = iK30;
            int iK31 = xw1.k(this.c + ((iK30 ^ this.a) ^ this.b), iArr[7], 1859775393, 11);
            this.c = iK31;
            int iK32 = xw1.k(this.b + ((iK31 ^ this.d) ^ this.a), iArr[15], 1859775393, 15);
            this.a += i6;
            this.b = iK32 + i7;
            this.c += i8;
            this.d += i9;
            i = i12;
            i2 = i;
        }
        if (i3 < bArr.length) {
            int length2 = bArr.length - i3;
            System.arraycopy(bArr, i3, bArr2, i, length2);
            this.e += (long) length2;
        }
    }

    public s9(gh3 gh3Var, int i, int i2, int i3, int i4, long j) {
        this.f = gh3Var;
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = j;
    }
}
