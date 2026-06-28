package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ve4 {
    public static final int a = 9;
    public static final int b = 6;
    public static final int c = 10;
    public static final int d = 5;
    public static final int e = 15;

    public static final void a(String str, StringBuilder sb) {
        if (sb.length() > 0) {
            sb.append('+');
        }
        sb.append(str);
    }

    public static int b(byte[] bArr, int i, h30 h30Var) throws fz4 {
        int iG = g(bArr, i, h30Var);
        int i2 = h30Var.b;
        if (i2 < 0) {
            throw fz4.b();
        }
        if (i2 > bArr.length - iG) {
            throw fz4.c();
        }
        if (i2 == 0) {
            h30Var.c = iy4.p;
            return iG;
        }
        h30Var.c = iy4.f(bArr, iG, i2);
        return iG + i2;
    }

    public static /* synthetic */ boolean c(int i, kg5 kg5Var, StringBuilder sb) {
        if (i - 1 != 0 || kg5Var == kg5.a) {
            return false;
        }
        sb.append(kg5Var.a());
        sb.append('.');
        sb.append(kg5Var.b());
        sb.append(':');
        sb.append(kg5Var.c());
        return true;
    }

    public static int d(int i, byte[] bArr) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static int e(h15 h15Var, int i, byte[] bArr, int i2, int i3, vy4 vy4Var, h30 h30Var) throws fz4 {
        sy4 sy4VarZzd = h15Var.zzd();
        h15 h15Var2 = h15Var;
        byte[] bArr2 = bArr;
        int i4 = i3;
        h30 h30Var2 = h30Var;
        int iJ = j(sy4VarZzd, h15Var2, bArr2, i2, i4, h30Var2);
        h15Var2.b(sy4VarZzd);
        h30Var2.c = sy4VarZzd;
        vy4Var.add(sy4VarZzd);
        while (iJ < i4) {
            h30 h30Var3 = h30Var2;
            int i5 = i4;
            int iG = g(bArr2, iJ, h30Var3);
            if (i != h30Var3.b) {
                break;
            }
            byte[] bArr3 = bArr2;
            h15 h15Var3 = h15Var2;
            sy4 sy4VarZzd2 = h15Var3.zzd();
            iJ = j(sy4VarZzd2, h15Var3, bArr3, iG, i5, h30Var3);
            h15Var2 = h15Var3;
            bArr2 = bArr3;
            i4 = i5;
            h30Var2 = h30Var3;
            h15Var2.b(sy4VarZzd2);
            h30Var2.c = sy4VarZzd2;
            vy4Var.add(sy4VarZzd2);
        }
        return iJ;
    }

    public static int f(int i, byte[] bArr, int i2, int i3, p25 p25Var, h30 h30Var) throws fz4 {
        if ((i >>> 3) == 0) {
            throw new fz4("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int i5 = i(bArr, i2, h30Var);
            p25Var.b(i, Long.valueOf(h30Var.a));
            return i5;
        }
        if (i4 == 1) {
            p25Var.b(i, Long.valueOf(k(i2, bArr)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iG = g(bArr, i2, h30Var);
            int i6 = h30Var.b;
            if (i6 < 0) {
                throw fz4.b();
            }
            if (i6 > bArr.length - iG) {
                throw fz4.c();
            }
            if (i6 == 0) {
                p25Var.b(i, iy4.p);
            } else {
                p25Var.b(i, iy4.f(bArr, iG, i6));
            }
            return iG + i6;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw new fz4("Protocol message contained an invalid tag (zero).");
            }
            p25Var.b(i, Integer.valueOf(d(i2, bArr)));
            return i2 + 4;
        }
        int i7 = (i & (-8)) | 4;
        p25 p25VarA = p25.a();
        int i8 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iG2 = g(bArr, i2, h30Var);
            i8 = h30Var.b;
            if (i8 == i7) {
                i2 = iG2;
                break;
            }
            i2 = f(i8, bArr, iG2, i3, p25VarA, h30Var);
        }
        if (i2 > i3 || i8 != i7) {
            throw new fz4("Failed to parse the message.");
        }
        p25Var.b(i, p25VarA);
        return i2;
    }

    public static int g(byte[] bArr, int i, h30 h30Var) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return h(b2, bArr, i2, h30Var);
        }
        h30Var.b = b2;
        return i2;
    }

    public static int h(int i, byte[] bArr, int i2, h30 h30Var) {
        byte b2 = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b2 >= 0) {
            h30Var.b = i4 | (b2 << 7);
            return i3;
        }
        int i5 = i4 | ((b2 & 127) << 7);
        int i6 = i2 + 2;
        byte b3 = bArr[i3];
        if (b3 >= 0) {
            h30Var.b = i5 | (b3 << 14);
            return i6;
        }
        int i7 = i5 | ((b3 & 127) << 14);
        int i8 = i2 + 3;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            h30Var.b = i7 | (b4 << 21);
            return i8;
        }
        int i9 = i7 | ((b4 & 127) << 21);
        int i10 = i2 + 4;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            h30Var.b = i9 | (b5 << 28);
            return i10;
        }
        int i11 = i9 | ((b5 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                h30Var.b = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int i(byte[] bArr, int i, h30 h30Var) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            h30Var.a = j;
            return i2;
        }
        int i3 = i + 2;
        byte b2 = bArr[i2];
        long j2 = (j & 127) | (((long) (b2 & 127)) << 7);
        int i4 = 7;
        while (b2 < 0) {
            int i5 = i3 + 1;
            byte b3 = bArr[i3];
            i4 += 7;
            j2 |= ((long) (b3 & 127)) << i4;
            b2 = b3;
            i3 = i5;
        }
        h30Var.a = j2;
        return i3;
    }

    public static int j(Object obj, h15 h15Var, byte[] bArr, int i, int i2, h30 h30Var) throws fz4 {
        int iH = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iH = h(i3, bArr, iH, h30Var);
            i3 = h30Var.b;
        }
        int i4 = iH;
        if (i3 < 0 || i3 > i2 - i4) {
            throw fz4.c();
        }
        int i5 = i4 + i3;
        h15Var.e(obj, bArr, i4, i5, h30Var);
        h30Var.c = obj;
        return i5;
    }

    public static long k(int i, byte[] bArr) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }
}
