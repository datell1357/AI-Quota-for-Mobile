package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r94 implements lx1 {
    public static final r94 a = new r94();
    public static final py2 b = new py2("kotlin.uuid.Uuid", ny2.X);

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        String strX = vn0Var.x();
        strX.getClass();
        int length = strX.length();
        int i = 0;
        if (length == 32) {
            long j = 0;
            while (i < 16) {
                long j2 = j << 4;
                char cCharAt = strX.charAt(i);
                if ((cCharAt >>> '\b') == 0) {
                    long j3 = qj1.b[cCharAt];
                    if (j3 >= 0) {
                        j = j2 | j3;
                        i++;
                    }
                }
                mt1.X(strX, i, "a hexadecimal digit");
                throw null;
            }
            long j4 = 0;
            for (int i2 = 16; i2 < 32; i2++) {
                long j5 = j4 << 4;
                char cCharAt2 = strX.charAt(i2);
                if ((cCharAt2 >>> '\b') == 0) {
                    long j6 = qj1.b[cCharAt2];
                    if (j6 >= 0) {
                        j4 = j5 | j6;
                    }
                }
                mt1.X(strX, i2, "a hexadecimal digit");
                throw null;
            }
            if (j != 0 || j4 != 0) {
                return new p94(j, j4);
            }
        } else {
            if (length != 36) {
                StringBuilder sb = new StringBuilder("Expected either a 36-char string in the standard hex-and-dash UUID format or a 32-char hexadecimal string, but was \"");
                sb.append(strX.length() <= 64 ? strX : strX.substring(0, 64).concat("..."));
                sb.append("\" of length ");
                sb.append(strX.length());
                throw new IllegalArgumentException(sb.toString());
            }
            long j7 = 0;
            while (i < 8) {
                long j8 = j7 << 4;
                char cCharAt3 = strX.charAt(i);
                if ((cCharAt3 >>> '\b') == 0) {
                    long j9 = qj1.b[cCharAt3];
                    if (j9 >= 0) {
                        j7 = j8 | j9;
                        i++;
                    }
                }
                mt1.X(strX, i, "a hexadecimal digit");
                throw null;
            }
            if (strX.charAt(8) != '-') {
                mt1.X(strX, 8, "'-' (hyphen)");
                throw null;
            }
            long j10 = 0;
            for (int i3 = 9; i3 < 13; i3++) {
                long j11 = j10 << 4;
                char cCharAt4 = strX.charAt(i3);
                if ((cCharAt4 >>> '\b') == 0) {
                    long j12 = qj1.b[cCharAt4];
                    if (j12 >= 0) {
                        j10 = j11 | j12;
                    }
                }
                mt1.X(strX, i3, "a hexadecimal digit");
                throw null;
            }
            if (strX.charAt(13) != '-') {
                mt1.X(strX, 13, "'-' (hyphen)");
                throw null;
            }
            long j13 = 0;
            for (int i4 = 14; i4 < 18; i4++) {
                long j14 = j13 << 4;
                char cCharAt5 = strX.charAt(i4);
                if ((cCharAt5 >>> '\b') == 0) {
                    long j15 = qj1.b[cCharAt5];
                    if (j15 >= 0) {
                        j13 = j14 | j15;
                    }
                }
                mt1.X(strX, i4, "a hexadecimal digit");
                throw null;
            }
            if (strX.charAt(18) != '-') {
                mt1.X(strX, 18, "'-' (hyphen)");
                throw null;
            }
            long j16 = 0;
            for (int i5 = 19; i5 < 23; i5++) {
                long j17 = j16 << 4;
                char cCharAt6 = strX.charAt(i5);
                if ((cCharAt6 >>> '\b') == 0) {
                    long j18 = qj1.b[cCharAt6];
                    if (j18 >= 0) {
                        j16 = j17 | j18;
                    }
                }
                mt1.X(strX, i5, "a hexadecimal digit");
                throw null;
            }
            if (strX.charAt(23) != '-') {
                mt1.X(strX, 23, "'-' (hyphen)");
                throw null;
            }
            long j19 = 0;
            for (int i6 = 24; i6 < 36; i6++) {
                long j20 = j19 << 4;
                char cCharAt7 = strX.charAt(i6);
                if ((cCharAt7 >>> '\b') == 0) {
                    long j21 = qj1.b[cCharAt7];
                    if (j21 >= 0) {
                        j19 = j20 | j21;
                    }
                }
                mt1.X(strX, i6, "a hexadecimal digit");
                throw null;
            }
            long j22 = (j7 << 32) | (j10 << 16) | j13;
            long j23 = (j16 << 48) | j19;
            if (j22 != 0 || j23 != 0) {
                return new p94(j22, j23);
            }
        }
        return p94.p;
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        p94 p94Var = (p94) obj;
        p94Var.getClass();
        bVar.r(p94Var.toString());
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return b;
    }
}
