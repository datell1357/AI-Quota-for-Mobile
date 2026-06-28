package defpackage;

import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oq extends nr {
    public static final byte[] i = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    public static final byte[] j = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51};
    public final byte[] e;
    public final byte[] f;
    public final byte[] g;
    public final int h;

    public oq(int i2, byte[] bArr) {
        super(i2, bArr.length);
        byte[] bArr2 = i;
        if (bArr2.length != 64) {
            k21.f("encodeTable must have exactly 64 entries.");
            throw null;
        }
        this.f = j;
        this.e = bArr2;
        byte[] bArr3 = (byte[]) bArr.clone();
        for (byte b : bArr3) {
            if (61 != b) {
                if (b >= 0) {
                    byte[] bArr4 = this.f;
                    if (b >= bArr4.length || bArr4[b] == -1) {
                    }
                }
            }
            k21.f(di0.v("lineSeparator must not contain base64 characters: [", new String(bArr3, StandardCharsets.UTF_8), "]"));
            throw null;
        }
        if (i2 > 0) {
            this.h = bArr3.length + 4;
            this.g = bArr3;
        } else {
            this.h = 4;
            this.g = null;
        }
    }

    public static byte[] f(byte[] bArr) {
        oq oqVar = new oq();
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        mr mrVar = new mr();
        oqVar.e(bArr, bArr.length, mrVar);
        oqVar.e(bArr, -1, mrVar);
        int i2 = mrVar.c;
        byte[] bArr2 = new byte[i2];
        nr.d(bArr2, i2, mrVar);
        return bArr2;
    }

    @Override // defpackage.nr
    public final void a(byte[] bArr, int i2, mr mrVar) {
        if (mrVar.e) {
            return;
        }
        int i3 = this.h;
        byte[] bArr2 = this.e;
        int i4 = this.a;
        byte[] bArr3 = this.g;
        if (i2 >= 0) {
            int i5 = 0;
            int i6 = 0;
            while (i5 < i2) {
                byte[] bArrC = nr.c(i3, mrVar);
                int i7 = (mrVar.g + 1) % 3;
                mrVar.g = i7;
                int i8 = i6 + 1;
                int i9 = bArr[i6];
                if (i9 < 0) {
                    i9 += 256;
                }
                int i10 = (mrVar.a << 8) + i9;
                mrVar.a = i10;
                if (i7 == 0) {
                    int i11 = mrVar.c;
                    int i12 = i11 + 1;
                    mrVar.c = i12;
                    bArrC[i11] = bArr2[(i10 >> 18) & 63];
                    int i13 = i11 + 2;
                    mrVar.c = i13;
                    bArrC[i12] = bArr2[(i10 >> 12) & 63];
                    int i14 = i11 + 3;
                    mrVar.c = i14;
                    bArrC[i13] = bArr2[(i10 >> 6) & 63];
                    int i15 = i11 + 4;
                    mrVar.c = i15;
                    bArrC[i14] = bArr2[i10 & 63];
                    int i16 = mrVar.f + 4;
                    mrVar.f = i16;
                    if (i4 > 0 && i4 <= i16) {
                        System.arraycopy(bArr3, 0, bArrC, i15, bArr3.length);
                        mrVar.c += bArr3.length;
                        mrVar.f = 0;
                    }
                }
                i5++;
                i6 = i8;
            }
            return;
        }
        mrVar.e = true;
        if (mrVar.g == 0 && i4 == 0) {
            return;
        }
        byte[] bArrC2 = nr.c(i3, mrVar);
        int i17 = mrVar.c;
        int i18 = mrVar.g;
        if (i18 != 0) {
            byte[] bArr4 = i;
            if (i18 == 1) {
                int i19 = i17 + 1;
                mrVar.c = i19;
                int i20 = mrVar.a;
                bArrC2[i17] = bArr2[(i20 >> 2) & 63];
                int i21 = i17 + 2;
                mrVar.c = i21;
                bArrC2[i19] = bArr2[(i20 << 4) & 63];
                if (bArr2 == bArr4) {
                    int i22 = i17 + 3;
                    mrVar.c = i22;
                    bArrC2[i21] = 61;
                    mrVar.c = i17 + 4;
                    bArrC2[i22] = 61;
                }
            } else {
                if (i18 != 2) {
                    p61.d(mrVar.g, "Impossible modulus ");
                    return;
                }
                int i23 = i17 + 1;
                mrVar.c = i23;
                int i24 = mrVar.a;
                bArrC2[i17] = bArr2[(i24 >> 10) & 63];
                int i25 = i17 + 2;
                mrVar.c = i25;
                bArrC2[i23] = bArr2[(i24 >> 4) & 63];
                int i26 = i17 + 3;
                mrVar.c = i26;
                bArrC2[i25] = bArr2[(i24 << 2) & 63];
                if (bArr2 == bArr4) {
                    mrVar.c = i17 + 4;
                    bArrC2[i26] = 61;
                }
            }
        }
        int i27 = mrVar.f;
        int i28 = mrVar.c;
        int i29 = (i28 - i17) + i27;
        mrVar.f = i29;
        if (i4 <= 0 || i29 <= 0) {
            return;
        }
        System.arraycopy(bArr3, 0, bArrC2, i28, bArr3.length);
        mrVar.c += bArr3.length;
    }

    public final void e(byte[] bArr, int i2, mr mrVar) {
        byte b;
        if (mrVar.e) {
            return;
        }
        if (i2 < 0) {
            mrVar.e = true;
        }
        int i3 = this.h - 1;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i4 >= i2) {
                break;
            }
            byte[] bArrC = nr.c(i3, mrVar);
            int i6 = i5 + 1;
            byte b2 = bArr[i5];
            if (b2 == 61) {
                mrVar.e = true;
                break;
            }
            if (b2 >= 0) {
                byte[] bArr2 = this.f;
                if (b2 < bArr2.length && (b = bArr2[b2]) >= 0) {
                    int i7 = (mrVar.g + 1) % 4;
                    mrVar.g = i7;
                    int i8 = (mrVar.a << 6) + b;
                    mrVar.a = i8;
                    if (i7 == 0) {
                        int i9 = mrVar.c;
                        int i10 = i9 + 1;
                        mrVar.c = i10;
                        bArrC[i9] = (byte) ((i8 >> 16) & 255);
                        int i11 = i9 + 2;
                        mrVar.c = i11;
                        bArrC[i10] = (byte) ((i8 >> 8) & 255);
                        mrVar.c = i9 + 3;
                        bArrC[i11] = (byte) (i8 & 255);
                    }
                }
            }
            i4++;
            i5 = i6;
        }
        if (!mrVar.e || mrVar.g == 0) {
            return;
        }
        byte[] bArrC2 = nr.c(i3, mrVar);
        int i12 = mrVar.g;
        int i13 = this.c;
        if (i12 == 1) {
            if (i13 != 1) {
                return;
            }
            k21.f("Strict decoding: Last encoded character (before the paddings if any) is a valid base 64 alphabet but not a possible encoding. Decoding requires at least two trailing 6-bit characters to create bytes.");
            return;
        }
        if (i12 == 2) {
            if (i13 == 1 && (mrVar.a & 15) != 0) {
                k21.f("Strict decoding: Last encoded character (before the paddings if any) is a valid base 64 alphabet but not a possible encoding. Expected the discarded bits from the character to be zero.");
                return;
            }
            int i14 = mrVar.a >> 4;
            mrVar.a = i14;
            int i15 = mrVar.c;
            mrVar.c = i15 + 1;
            bArrC2[i15] = (byte) (i14 & 255);
            return;
        }
        if (i12 != 3) {
            p61.d(mrVar.g, "Impossible modulus ");
            return;
        }
        if (i13 == 1 && (mrVar.a & 3) != 0) {
            k21.f("Strict decoding: Last encoded character (before the paddings if any) is a valid base 64 alphabet but not a possible encoding. Expected the discarded bits from the character to be zero.");
            return;
        }
        int i16 = mrVar.a;
        int i17 = i16 >> 2;
        mrVar.a = i17;
        int i18 = mrVar.c;
        int i19 = i18 + 1;
        mrVar.c = i19;
        bArrC2[i18] = (byte) ((i16 >> 10) & 255);
        mrVar.c = i18 + 2;
        bArrC2[i19] = (byte) (i17 & 255);
    }

    public oq() {
        this(0, nr.d);
    }
}
