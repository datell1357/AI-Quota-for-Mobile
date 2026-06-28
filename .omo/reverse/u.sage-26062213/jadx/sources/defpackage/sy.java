package defpackage;

import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sy implements fz, ez, Cloneable, ByteChannel {
    public qg3 n;
    public long o;

    public final long A(byte b, long j, long j2) {
        qg3 qg3Var;
        long j3 = 0;
        if (0 > j || j > j2) {
            throw new IllegalArgumentException(("size=" + this.o + " fromIndex=" + j + " toIndex=" + j2).toString());
        }
        long j4 = this.o;
        if (j2 > j4) {
            j2 = j4;
        }
        if (j == j2 || (qg3Var = this.n) == null) {
            return -1L;
        }
        if (j4 - j < j) {
            while (j4 > j) {
                qg3Var = qg3Var.g;
                qg3Var.getClass();
                j4 -= (long) (qg3Var.c - qg3Var.b);
            }
            while (j4 < j2) {
                byte[] bArr = qg3Var.a;
                int iMin = (int) Math.min(qg3Var.c, (((long) qg3Var.b) + j2) - j4);
                for (int i = (int) ((((long) qg3Var.b) + j) - j4); i < iMin; i++) {
                    if (bArr[i] == b) {
                        return ((long) (i - qg3Var.b)) + j4;
                    }
                }
                j4 += (long) (qg3Var.c - qg3Var.b);
                qg3Var = qg3Var.f;
                qg3Var.getClass();
                j = j4;
            }
            return -1L;
        }
        while (true) {
            long j5 = ((long) (qg3Var.c - qg3Var.b)) + j3;
            if (j5 > j) {
                break;
            }
            qg3Var = qg3Var.f;
            qg3Var.getClass();
            j3 = j5;
        }
        while (j3 < j2) {
            byte[] bArr2 = qg3Var.a;
            int iMin2 = (int) Math.min(qg3Var.c, (((long) qg3Var.b) + j2) - j3);
            for (int i2 = (int) ((((long) qg3Var.b) + j) - j3); i2 < iMin2; i2++) {
                if (bArr2[i2] == b) {
                    return ((long) (i2 - qg3Var.b)) + j3;
                }
            }
            j3 += (long) (qg3Var.c - qg3Var.b);
            qg3Var = qg3Var.f;
            qg3Var.getClass();
            j = j3;
        }
        return -1L;
    }

    public final long B(g00 g00Var) {
        int i;
        int i2;
        g00Var.getClass();
        qg3 qg3Var = this.n;
        if (qg3Var == null) {
            return -1L;
        }
        long j = this.o;
        long j2 = 0;
        if (j < 0) {
            while (j > 0) {
                qg3Var = qg3Var.g;
                qg3Var.getClass();
                j -= (long) (qg3Var.c - qg3Var.b);
            }
            if (g00Var.c() == 2) {
                byte bH = g00Var.h(0);
                byte bH2 = g00Var.h(1);
                while (j < this.o) {
                    byte[] bArr = qg3Var.a;
                    i = (int) ((((long) qg3Var.b) + j2) - j);
                    int i3 = qg3Var.c;
                    while (i < i3) {
                        byte b = bArr[i];
                        if (b == bH || b == bH2) {
                            i2 = qg3Var.b;
                        } else {
                            i++;
                        }
                    }
                    j2 = ((long) (qg3Var.c - qg3Var.b)) + j;
                    qg3Var = qg3Var.f;
                    qg3Var.getClass();
                    j = j2;
                }
                return -1L;
            }
            byte[] bArrG = g00Var.g();
            while (j < this.o) {
                byte[] bArr2 = qg3Var.a;
                i = (int) ((((long) qg3Var.b) + j2) - j);
                int i4 = qg3Var.c;
                while (i < i4) {
                    byte b2 = bArr2[i];
                    for (byte b3 : bArrG) {
                        if (b2 == b3) {
                            i2 = qg3Var.b;
                        }
                    }
                    i++;
                }
                j2 = ((long) (qg3Var.c - qg3Var.b)) + j;
                qg3Var = qg3Var.f;
                qg3Var.getClass();
                j = j2;
            }
            return -1L;
        }
        j = 0;
        while (true) {
            long j3 = ((long) (qg3Var.c - qg3Var.b)) + j;
            if (j3 > 0) {
                break;
            }
            qg3Var = qg3Var.f;
            qg3Var.getClass();
            j = j3;
        }
        if (g00Var.c() == 2) {
            byte bH3 = g00Var.h(0);
            byte bH4 = g00Var.h(1);
            while (j < this.o) {
                byte[] bArr3 = qg3Var.a;
                i = (int) ((((long) qg3Var.b) + j2) - j);
                int i5 = qg3Var.c;
                while (i < i5) {
                    byte b4 = bArr3[i];
                    if (b4 == bH3 || b4 == bH4) {
                        i2 = qg3Var.b;
                    } else {
                        i++;
                    }
                }
                j2 = ((long) (qg3Var.c - qg3Var.b)) + j;
                qg3Var = qg3Var.f;
                qg3Var.getClass();
                j = j2;
            }
            return -1L;
        }
        byte[] bArrG2 = g00Var.g();
        while (j < this.o) {
            byte[] bArr4 = qg3Var.a;
            i = (int) ((((long) qg3Var.b) + j2) - j);
            int i6 = qg3Var.c;
            while (i < i6) {
                byte b5 = bArr4[i];
                for (byte b6 : bArrG2) {
                    if (b5 == b6) {
                        i2 = qg3Var.b;
                    }
                }
                i++;
            }
            j2 = ((long) (qg3Var.c - qg3Var.b)) + j;
            qg3Var = qg3Var.f;
            qg3Var.getClass();
            j = j2;
        }
        return -1L;
        return ((long) (i - i2)) + j;
    }

    public final boolean F(g00 g00Var) {
        qg3 qg3Var;
        boolean z;
        long j;
        long j2;
        long j3;
        g00Var.getClass();
        int iC = g00Var.c();
        if (iC >= 0) {
            long j4 = iC;
            if (j4 <= this.o && iC <= g00Var.c()) {
                if (iC != 0) {
                    byte[] bArr = b.a;
                    is0.q(g00Var.c(), 0L, j4);
                    if (iC <= 0) {
                        k21.f("byteCount == 0");
                        return false;
                    }
                    long j5 = this.o;
                    long j6 = 1;
                    long j7 = 1 > j5 ? j5 : 1L;
                    if (0 == j7 || (qg3Var = this.n) == null) {
                        j3 = -1;
                        z = false;
                    } else if (j5 < 0) {
                        while (j5 > 0) {
                            qg3Var = qg3Var.g;
                            qg3Var.getClass();
                            j5 -= (long) (qg3Var.c - qg3Var.b);
                            j6 = j6;
                        }
                        long j8 = j6;
                        z = false;
                        byte[] bArrG = g00Var.g();
                        byte b = bArrG[0];
                        long jMin = Math.min(j7, (this.o - j4) + j8);
                        long j9 = 0;
                        loop1: while (j5 < jMin) {
                            byte[] bArr2 = qg3Var.a;
                            j = j5;
                            int iMin = (int) Math.min(qg3Var.c, (((long) qg3Var.b) + jMin) - j5);
                            for (int i = (int) ((((long) qg3Var.b) + j9) - j); i < iMin; i++) {
                                if (bArr2[i] == b && b.a(qg3Var, i + 1, bArrG, 1, iC)) {
                                    j2 = i - qg3Var.b;
                                    j3 = j2 + j;
                                    break loop1;
                                }
                            }
                            j9 = j + ((long) (qg3Var.c - qg3Var.b));
                            qg3Var = qg3Var.f;
                            qg3Var.getClass();
                            j5 = j9;
                        }
                        j3 = -1;
                    } else {
                        z = false;
                        long j10 = 0;
                        while (true) {
                            long j11 = ((long) (qg3Var.c - qg3Var.b)) + j10;
                            if (j11 > 0) {
                                break;
                            }
                            qg3Var = qg3Var.f;
                            qg3Var.getClass();
                            j10 = j11;
                        }
                        byte[] bArrG2 = g00Var.g();
                        byte b2 = bArrG2[0];
                        long jMin2 = Math.min(j7, (this.o - j4) + 1);
                        long j12 = 0;
                        loop4: while (j10 < jMin2) {
                            byte[] bArr3 = qg3Var.a;
                            j = j10;
                            int iMin2 = (int) Math.min(qg3Var.c, (((long) qg3Var.b) + jMin2) - j10);
                            for (int i2 = (int) ((((long) qg3Var.b) + j12) - j); i2 < iMin2; i2++) {
                                if (bArr3[i2] == b2 && b.a(qg3Var, i2 + 1, bArrG2, 1, iC)) {
                                    j2 = i2 - qg3Var.b;
                                    j3 = j2 + j;
                                    break loop1;
                                }
                            }
                            j12 = j + ((long) (qg3Var.c - qg3Var.b));
                            qg3Var = qg3Var.f;
                            qg3Var.getClass();
                            j10 = j12;
                        }
                        j3 = -1;
                    }
                    if (j3 == -1) {
                        return z;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.kn3
    public final void J(long j, sy syVar) {
        qg3 qg3VarB;
        syVar.getClass();
        if (syVar == this) {
            k21.f("source == this");
            return;
        }
        is0.q(syVar.o, 0L, j);
        while (j > 0) {
            qg3 qg3Var = syVar.n;
            qg3Var.getClass();
            int i = qg3Var.c;
            qg3 qg3Var2 = syVar.n;
            qg3Var2.getClass();
            long j2 = i - qg3Var2.b;
            int i2 = 0;
            if (j < j2) {
                qg3 qg3Var3 = this.n;
                qg3 qg3Var4 = qg3Var3 != null ? qg3Var3.g : null;
                if (qg3Var4 != null && qg3Var4.e) {
                    if ((((long) qg3Var4.c) + j) - ((long) (qg3Var4.d ? 0 : qg3Var4.b)) <= 8192) {
                        qg3 qg3Var5 = syVar.n;
                        qg3Var5.getClass();
                        qg3Var5.d(qg3Var4, (int) j);
                        syVar.o -= j;
                        this.o += j;
                        return;
                    }
                }
                qg3 qg3Var6 = syVar.n;
                qg3Var6.getClass();
                int i3 = (int) j;
                if (i3 <= 0 || i3 > qg3Var6.c - qg3Var6.b) {
                    k21.f("byteCount out of range");
                    return;
                }
                if (i3 >= 1024) {
                    qg3VarB = qg3Var6.c();
                } else {
                    qg3VarB = sg3.b();
                    byte[] bArr = qg3Var6.a;
                    byte[] bArr2 = qg3VarB.a;
                    int i4 = qg3Var6.b;
                    ji.M(0, i4, i4 + i3, bArr, bArr2);
                }
                qg3VarB.c = qg3VarB.b + i3;
                qg3Var6.b += i3;
                qg3 qg3Var7 = qg3Var6.g;
                qg3Var7.getClass();
                qg3Var7.b(qg3VarB);
                syVar.n = qg3VarB;
            }
            qg3 qg3Var8 = syVar.n;
            qg3Var8.getClass();
            long j3 = qg3Var8.c - qg3Var8.b;
            syVar.n = qg3Var8.a();
            qg3 qg3Var9 = this.n;
            if (qg3Var9 == null) {
                this.n = qg3Var8;
                qg3Var8.g = qg3Var8;
                qg3Var8.f = qg3Var8;
            } else {
                qg3 qg3Var10 = qg3Var9.g;
                qg3Var10.getClass();
                qg3Var10.b(qg3Var8);
                qg3 qg3Var11 = qg3Var8.g;
                if (qg3Var11 == qg3Var8) {
                    k21.n("cannot compact");
                    return;
                }
                qg3Var11.getClass();
                if (qg3Var11.e) {
                    int i5 = qg3Var8.c - qg3Var8.b;
                    qg3 qg3Var12 = qg3Var8.g;
                    qg3Var12.getClass();
                    int i6 = 8192 - qg3Var12.c;
                    qg3 qg3Var13 = qg3Var8.g;
                    qg3Var13.getClass();
                    if (!qg3Var13.d) {
                        qg3 qg3Var14 = qg3Var8.g;
                        qg3Var14.getClass();
                        i2 = qg3Var14.b;
                    }
                    if (i5 <= i6 + i2) {
                        qg3 qg3Var15 = qg3Var8.g;
                        qg3Var15.getClass();
                        qg3Var8.d(qg3Var15, i5);
                        qg3Var8.a();
                        sg3.a(qg3Var8);
                    }
                }
            }
            syVar.o -= j3;
            this.o += j3;
            j -= j3;
        }
    }

    public final byte[] K(long j) throws EOFException {
        if (j < 0 || j > 2147483647L) {
            k21.l(di0.s(j, "byteCount: "));
            return null;
        }
        if (this.o < j) {
            throw new EOFException();
        }
        int i = (int) j;
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int i3 = read(bArr, i2, i - i2);
            if (i3 == -1) {
                throw new EOFException();
            }
            i2 += i3;
        }
        return bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a2 A[EDGE_INSN: B:44:0x00a2->B:38:0x00a2 BREAK  A[LOOP:0: B:5:0x000c->B:46:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long L() throws java.io.EOFException {
        /*
            r15 = this;
            long r0 = r15.o
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto La9
            r0 = 0
            r1 = r0
            r6 = r1
            r4 = r2
        Lc:
            qg3 r7 = r15.n
            r7.getClass()
            byte[] r8 = r7.a
            int r9 = r7.b
            int r10 = r7.c
        L17:
            if (r9 >= r10) goto L8e
            r11 = r8[r9]
            r12 = 48
            if (r11 < r12) goto L26
            r12 = 57
            if (r11 > r12) goto L26
            int r12 = r11 + (-48)
            goto L3b
        L26:
            r12 = 97
            if (r11 < r12) goto L31
            r12 = 102(0x66, float:1.43E-43)
            if (r11 > r12) goto L31
            int r12 = r11 + (-87)
            goto L3b
        L31:
            r12 = 65
            if (r11 < r12) goto L66
            r12 = 70
            if (r11 > r12) goto L66
            int r12 = r11 + (-55)
        L3b:
            r13 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r13 = r13 & r4
            int r13 = (r13 > r2 ? 1 : (r13 == r2 ? 0 : -1))
            if (r13 != 0) goto L4b
            r11 = 4
            long r4 = r4 << r11
            long r11 = (long) r12
            long r4 = r4 | r11
            int r9 = r9 + 1
            int r1 = r1 + 1
            goto L17
        L4b:
            sy r15 = new sy
            r15.<init>()
            r15.q0(r4)
            r15.o0(r11)
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r15 = r15.V()
            java.lang.String r1 = "Number too large: "
            java.lang.String r15 = r1.concat(r15)
            r0.<init>(r15)
            throw r0
        L66:
            r6 = 1
            if (r1 == 0) goto L6a
            goto L8e
        L6a:
            java.lang.NumberFormatException r15 = new java.lang.NumberFormatException
            char[] r1 = defpackage.w80.b
            int r2 = r11 >> 4
            r2 = r2 & 15
            char r2 = r1[r2]
            r3 = r11 & 15
            char r1 = r1[r3]
            r3 = 2
            char[] r3 = new char[r3]
            r3[r0] = r2
            r3[r6] = r1
            java.lang.String r0 = new java.lang.String
            r0.<init>(r3)
            java.lang.String r1 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.String r0 = r1.concat(r0)
            r15.<init>(r0)
            throw r15
        L8e:
            if (r9 != r10) goto L9a
            qg3 r8 = r7.a()
            r15.n = r8
            defpackage.sg3.a(r7)
            goto L9c
        L9a:
            r7.b = r9
        L9c:
            if (r6 != 0) goto La2
            qg3 r7 = r15.n
            if (r7 != 0) goto Lc
        La2:
            long r2 = r15.o
            long r0 = (long) r1
            long r2 = r2 - r0
            r15.o = r2
            return r4
        La9:
            java.io.EOFException r15 = new java.io.EOFException
            r15.<init>()
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sy.L():long");
    }

    public final short N() throws EOFException {
        short s = readShort();
        return (short) (((s & 255) << 8) | ((65280 & s) >>> 8));
    }

    @Override // defpackage.fz
    public final String Q(long j) throws EOFException {
        if (j < 0) {
            k21.l(di0.s(j, "limit < 0: "));
            return null;
        }
        long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
        long jA = A((byte) 10, 0L, j2);
        if (jA != -1) {
            return b.b(jA, this);
        }
        if (j2 < this.o && z(j2 - 1) == 13 && z(j2) == 10) {
            return b.b(j2, this);
        }
        sy syVar = new sy();
        j(syVar, 0L, Math.min(32L, this.o));
        throw new EOFException("\\n not found: limit=" + Math.min(this.o, j) + " content=" + syVar.p(syVar.o).d() + (char) 8230);
    }

    public final String R(long j, Charset charset) throws EOFException {
        charset.getClass();
        if (j < 0 || j > 2147483647L) {
            k21.l(di0.s(j, "byteCount: "));
            return null;
        }
        if (this.o < j) {
            throw new EOFException();
        }
        if (j == 0) {
            return "";
        }
        qg3 qg3Var = this.n;
        qg3Var.getClass();
        int i = qg3Var.b;
        if (((long) i) + j > qg3Var.c) {
            return new String(K(j), charset);
        }
        int i2 = (int) j;
        String str = new String(qg3Var.a, i, i2, charset);
        int i3 = qg3Var.b + i2;
        qg3Var.b = i3;
        this.o -= j;
        if (i3 == qg3Var.c) {
            this.n = qg3Var.a();
            sg3.a(qg3Var);
        }
        return str;
    }

    public final String V() {
        return R(this.o, k40.a);
    }

    @Override // defpackage.fz
    public final long W(ez ezVar) {
        long j = this.o;
        if (j > 0) {
            ezVar.J(j, this);
        }
        return j;
    }

    public final g00 Y(int i) {
        if (i == 0) {
            return g00.q;
        }
        is0.q(this.o, 0L, i);
        qg3 qg3Var = this.n;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            qg3Var.getClass();
            int i5 = qg3Var.c;
            int i6 = qg3Var.b;
            if (i5 == i6) {
                k21.c("s.limit == s.pos");
                return null;
            }
            i3 += i5 - i6;
            i4++;
            qg3Var = qg3Var.f;
        }
        byte[][] bArr = new byte[i4][];
        int[] iArr = new int[i4 * 2];
        qg3 qg3Var2 = this.n;
        int i7 = 0;
        while (i2 < i) {
            qg3Var2.getClass();
            bArr[i7] = qg3Var2.a;
            i2 += qg3Var2.c - qg3Var2.b;
            iArr[i7] = Math.min(i2, i);
            iArr[i7 + i4] = qg3Var2.b;
            qg3Var2.d = true;
            i7++;
            qg3Var2 = qg3Var2.f;
        }
        return new tg3(bArr, iArr);
    }

    public final qg3 Z(int i) {
        if (i < 1 || i > 8192) {
            k21.f("unexpected capacity");
            return null;
        }
        qg3 qg3Var = this.n;
        if (qg3Var == null) {
            qg3 qg3VarB = sg3.b();
            this.n = qg3VarB;
            qg3VarB.g = qg3VarB;
            qg3VarB.f = qg3VarB;
            return qg3VarB;
        }
        qg3 qg3Var2 = qg3Var.g;
        qg3Var2.getClass();
        if (qg3Var2.c + i <= 8192 && qg3Var2.e) {
            return qg3Var2;
        }
        qg3 qg3VarB2 = sg3.b();
        qg3Var2.b(qg3VarB2);
        return qg3VarB2;
    }

    public final long b() {
        long j = this.o;
        if (j == 0) {
            return 0L;
        }
        qg3 qg3Var = this.n;
        qg3Var.getClass();
        qg3 qg3Var2 = qg3Var.g;
        qg3Var2.getClass();
        int i = qg3Var2.c;
        return (i >= 8192 || !qg3Var2.e) ? j : j - ((long) (i - qg3Var2.b));
    }

    public final Object clone() {
        sy syVar = new sy();
        if (this.o == 0) {
            return syVar;
        }
        qg3 qg3Var = this.n;
        qg3Var.getClass();
        qg3 qg3VarC = qg3Var.c();
        syVar.n = qg3VarC;
        qg3VarC.g = qg3VarC;
        qg3VarC.f = qg3VarC;
        for (qg3 qg3Var2 = qg3Var.f; qg3Var2 != qg3Var; qg3Var2 = qg3Var2.f) {
            qg3 qg3Var3 = qg3VarC.g;
            qg3Var3.getClass();
            qg3Var2.getClass();
            qg3Var3.b(qg3Var2.c());
        }
        syVar.o = this.o;
        return syVar;
    }

    @Override // defpackage.fz
    public final void d0(long j) throws EOFException {
        if (this.o < j) {
            throw new EOFException();
        }
    }

    @Override // defpackage.ez
    public final /* bridge */ /* synthetic */ ez e0(String str) {
        u0(str);
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sy)) {
            return false;
        }
        long j = this.o;
        sy syVar = (sy) obj;
        if (j != syVar.o) {
            return false;
        }
        if (j == 0) {
            return true;
        }
        qg3 qg3Var = this.n;
        qg3Var.getClass();
        qg3 qg3Var2 = syVar.n;
        qg3Var2.getClass();
        int i = qg3Var.b;
        int i2 = qg3Var2.b;
        long j2 = 0;
        while (j2 < this.o) {
            long jMin = Math.min(qg3Var.c - i, qg3Var2.c - i2);
            long j3 = 0;
            while (j3 < jMin) {
                int i3 = i + 1;
                int i4 = i2 + 1;
                if (qg3Var.a[i] != qg3Var2.a[i2]) {
                    return false;
                }
                j3++;
                i = i3;
                i2 = i4;
            }
            if (i == qg3Var.c) {
                qg3Var = qg3Var.f;
                qg3Var.getClass();
                i = qg3Var.b;
            }
            if (i2 == qg3Var2.c) {
                qg3Var2 = qg3Var2.f;
                qg3Var2.getClass();
                i2 = qg3Var2.b;
            }
            j2 += jMin;
        }
        return true;
    }

    @Override // defpackage.yp3
    public final mz3 g() {
        return mz3.d;
    }

    public final int hashCode() {
        qg3 qg3Var = this.n;
        if (qg3Var == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = qg3Var.c;
            for (int i3 = qg3Var.b; i3 < i2; i3++) {
                i = (i * 31) + qg3Var.a[i3];
            }
            qg3Var = qg3Var.f;
            qg3Var.getClass();
        } while (qg3Var != this.n);
        return i;
    }

    public final void i0(int i, byte[] bArr) {
        bArr.getClass();
        long j = i;
        is0.q(bArr.length, 0L, j);
        int i2 = 0;
        while (i2 < i) {
            qg3 qg3VarZ = Z(1);
            int iMin = Math.min(i - i2, 8192 - qg3VarZ.c);
            int i3 = i2 + iMin;
            ji.M(qg3VarZ.c, i2, i3, bArr, qg3VarZ.a);
            qg3VarZ.c += iMin;
            i2 = i3;
        }
        this.o += j;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    public final void j(sy syVar, long j, long j2) {
        syVar.getClass();
        long j3 = j;
        is0.q(this.o, j3, j2);
        if (j2 == 0) {
            return;
        }
        syVar.o += j2;
        qg3 qg3Var = this.n;
        while (true) {
            qg3Var.getClass();
            long j4 = qg3Var.c - qg3Var.b;
            if (j3 < j4) {
                break;
            }
            j3 -= j4;
            qg3Var = qg3Var.f;
        }
        long j5 = j2;
        while (j5 > 0) {
            qg3Var.getClass();
            qg3 qg3VarC = qg3Var.c();
            int i = qg3VarC.b + ((int) j3);
            qg3VarC.b = i;
            qg3VarC.c = Math.min(i + ((int) j5), qg3VarC.c);
            qg3 qg3Var2 = syVar.n;
            if (qg3Var2 == null) {
                qg3VarC.g = qg3VarC;
                qg3VarC.f = qg3VarC;
                syVar.n = qg3VarC;
            } else {
                qg3 qg3Var3 = qg3Var2.g;
                qg3Var3.getClass();
                qg3Var3.b(qg3VarC);
            }
            j5 -= (long) (qg3VarC.c - qg3VarC.b);
            qg3Var = qg3Var.f;
            j3 = 0;
        }
    }

    public final void j0(g00 g00Var) {
        g00Var.getClass();
        g00Var.r(this, g00Var.c());
    }

    @Override // defpackage.yp3
    public final long l(long j, sy syVar) {
        syVar.getClass();
        if (j < 0) {
            k21.l(di0.s(j, "byteCount < 0: "));
            return 0L;
        }
        long j2 = this.o;
        if (j2 == 0) {
            return -1L;
        }
        if (j > j2) {
            j = j2;
        }
        syVar.J(j, this);
        return j;
    }

    @Override // defpackage.ez
    public final /* bridge */ /* synthetic */ ez m(g00 g00Var) {
        j0(g00Var);
        return this;
    }

    public final void n0(yp3 yp3Var) {
        yp3Var.getClass();
        while (yp3Var.l(8192L, this) != -1) {
        }
    }

    public final void o0(int i) {
        qg3 qg3VarZ = Z(1);
        byte[] bArr = qg3VarZ.a;
        int i2 = qg3VarZ.c;
        qg3VarZ.c = i2 + 1;
        bArr[i2] = (byte) i;
        this.o++;
    }

    @Override // defpackage.fz
    public final g00 p(long j) throws EOFException {
        if (j < 0 || j > 2147483647L) {
            k21.l(di0.s(j, "byteCount: "));
            return null;
        }
        if (this.o < j) {
            throw new EOFException();
        }
        if (j < 4096) {
            return new g00(K(j));
        }
        g00 g00VarY = Y((int) j);
        skip(j);
        return g00VarY;
    }

    public final void p0(long j) {
        boolean z;
        if (j == 0) {
            o0(48);
            return;
        }
        if (j < 0) {
            j = -j;
            if (j < 0) {
                u0("-9223372036854775808");
                return;
            }
            z = true;
        } else {
            z = false;
        }
        byte[] bArr = b.a;
        int iNumberOfLeadingZeros = ((64 - Long.numberOfLeadingZeros(j)) * 10) >>> 5;
        int i = iNumberOfLeadingZeros + (j > b.b[iNumberOfLeadingZeros] ? 1 : 0);
        if (z) {
            i++;
        }
        qg3 qg3VarZ = Z(i);
        byte[] bArr2 = qg3VarZ.a;
        int i2 = qg3VarZ.c + i;
        while (j != 0) {
            i2--;
            bArr2[i2] = b.a[(int) (j % 10)];
            j /= 10;
        }
        if (z) {
            bArr2[i2 - 1] = 45;
        }
        qg3VarZ.c += i;
        this.o += (long) i;
    }

    public final void q0(long j) {
        if (j == 0) {
            o0(48);
            return;
        }
        long j2 = (j >>> 1) | j;
        long j3 = j2 | (j2 >>> 2);
        long j4 = j3 | (j3 >>> 4);
        long j5 = j4 | (j4 >>> 8);
        long j6 = j5 | (j5 >>> 16);
        long j7 = j6 | (j6 >>> 32);
        long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
        long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
        long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
        long j11 = j10 + (j10 >>> 8);
        long j12 = j11 + (j11 >>> 16);
        int i = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + 3) / 4);
        qg3 qg3VarZ = Z(i);
        byte[] bArr = qg3VarZ.a;
        int i2 = qg3VarZ.c;
        for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = b.a[(int) (15 & j)];
            j >>>= 4;
        }
        qg3VarZ.c += i;
        this.o += (long) i;
    }

    public final boolean r() {
        return this.o == 0;
    }

    public final void r0(int i) {
        qg3 qg3VarZ = Z(4);
        byte[] bArr = qg3VarZ.a;
        int i2 = qg3VarZ.c;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >>> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
        qg3VarZ.c = i2 + 4;
        this.o += 4;
    }

    public final int read(byte[] bArr, int i, int i2) {
        is0.q(bArr.length, i, i2);
        qg3 qg3Var = this.n;
        if (qg3Var == null) {
            return -1;
        }
        int iMin = Math.min(i2, qg3Var.c - qg3Var.b);
        byte[] bArr2 = qg3Var.a;
        int i3 = qg3Var.b;
        ji.M(i, i3, i3 + iMin, bArr2, bArr);
        int i4 = qg3Var.b + iMin;
        qg3Var.b = i4;
        this.o -= (long) iMin;
        if (i4 == qg3Var.c) {
            this.n = qg3Var.a();
            sg3.a(qg3Var);
        }
        return iMin;
    }

    @Override // defpackage.fz
    public final byte readByte() throws EOFException {
        if (this.o == 0) {
            throw new EOFException();
        }
        qg3 qg3Var = this.n;
        qg3Var.getClass();
        int i = qg3Var.b;
        int i2 = qg3Var.c;
        int i3 = i + 1;
        byte b = qg3Var.a[i];
        this.o--;
        if (i3 != i2) {
            qg3Var.b = i3;
            return b;
        }
        this.n = qg3Var.a();
        sg3.a(qg3Var);
        return b;
    }

    @Override // defpackage.fz
    public final int readInt() throws EOFException {
        if (this.o < 4) {
            throw new EOFException();
        }
        qg3 qg3Var = this.n;
        qg3Var.getClass();
        int i = qg3Var.b;
        int i2 = qg3Var.c;
        if (i2 - i < 4) {
            return (readByte() & 255) | ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8);
        }
        byte[] bArr = qg3Var.a;
        int i3 = i + 3;
        int i4 = ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24) | ((bArr[i + 2] & 255) << 8);
        int i5 = i + 4;
        int i6 = (bArr[i3] & 255) | i4;
        this.o -= 4;
        if (i5 != i2) {
            qg3Var.b = i5;
            return i6;
        }
        this.n = qg3Var.a();
        sg3.a(qg3Var);
        return i6;
    }

    @Override // defpackage.fz
    public final short readShort() throws EOFException {
        if (this.o < 2) {
            throw new EOFException();
        }
        qg3 qg3Var = this.n;
        qg3Var.getClass();
        int i = qg3Var.b;
        int i2 = qg3Var.c;
        if (i2 - i < 2) {
            return (short) ((readByte() & 255) | ((readByte() & 255) << 8));
        }
        byte[] bArr = qg3Var.a;
        int i3 = i + 1;
        int i4 = (bArr[i] & 255) << 8;
        int i5 = i + 2;
        int i6 = (bArr[i3] & 255) | i4;
        this.o -= 2;
        if (i5 == i2) {
            this.n = qg3Var.a();
            sg3.a(qg3Var);
        } else {
            qg3Var.b = i5;
        }
        return (short) i6;
    }

    public final void s0(int i) {
        qg3 qg3VarZ = Z(2);
        byte[] bArr = qg3VarZ.a;
        int i2 = qg3VarZ.c;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 1] = (byte) (i & 255);
        qg3VarZ.c = i2 + 2;
        this.o += 2;
    }

    @Override // defpackage.fz
    public final void skip(long j) throws EOFException {
        while (j > 0) {
            qg3 qg3Var = this.n;
            if (qg3Var == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j, qg3Var.c - qg3Var.b);
            long j2 = iMin;
            this.o -= j2;
            j -= j2;
            int i = qg3Var.b + iMin;
            qg3Var.b = i;
            if (i == qg3Var.c) {
                this.n = qg3Var.a();
                sg3.a(qg3Var);
            }
        }
    }

    public final void t0(int i, String str, int i2) {
        char cCharAt;
        str.getClass();
        if (i < 0) {
            k21.l(di0.q(i, "beginIndex < 0: "));
            return;
        }
        if (i2 < i) {
            k21.l(di0.p(i2, i, "endIndex < beginIndex: ", " < "));
            return;
        }
        if (i2 > str.length()) {
            StringBuilder sbU = xw1.u("endIndex > string.length: ", i2, " > ");
            sbU.append(str.length());
            throw new IllegalArgumentException(sbU.toString().toString());
        }
        while (i < i2) {
            char cCharAt2 = str.charAt(i);
            if (cCharAt2 < 128) {
                qg3 qg3VarZ = Z(1);
                byte[] bArr = qg3VarZ.a;
                int i3 = qg3VarZ.c - i;
                int iMin = Math.min(i2, 8192 - i3);
                int i4 = i + 1;
                bArr[i + i3] = (byte) cCharAt2;
                while (true) {
                    i = i4;
                    if (i >= iMin || (cCharAt = str.charAt(i)) >= 128) {
                        break;
                    }
                    i4 = i + 1;
                    bArr[i + i3] = (byte) cCharAt;
                }
                int i5 = qg3VarZ.c;
                int i6 = (i3 + i) - i5;
                qg3VarZ.c = i5 + i6;
                this.o += (long) i6;
            } else {
                if (cCharAt2 < 2048) {
                    qg3 qg3VarZ2 = Z(2);
                    byte[] bArr2 = qg3VarZ2.a;
                    int i7 = qg3VarZ2.c;
                    bArr2[i7] = (byte) ((cCharAt2 >> 6) | 192);
                    bArr2[i7 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    qg3VarZ2.c = i7 + 2;
                    this.o += 2;
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    qg3 qg3VarZ3 = Z(3);
                    byte[] bArr3 = qg3VarZ3.a;
                    int i8 = qg3VarZ3.c;
                    bArr3[i8] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i8 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i8 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    qg3VarZ3.c = i8 + 3;
                    this.o += 3;
                } else {
                    int i9 = i + 1;
                    char cCharAt3 = i9 < i2 ? str.charAt(i9) : (char) 0;
                    if (cCharAt2 > 56319 || 56320 > cCharAt3 || cCharAt3 >= 57344) {
                        o0(63);
                        i = i9;
                    } else {
                        int i10 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                        qg3 qg3VarZ4 = Z(4);
                        byte[] bArr4 = qg3VarZ4.a;
                        int i11 = qg3VarZ4.c;
                        bArr4[i11] = (byte) ((i10 >> 18) | 240);
                        bArr4[i11 + 1] = (byte) (((i10 >> 12) & 63) | 128);
                        bArr4[i11 + 2] = (byte) (((i10 >> 6) & 63) | 128);
                        bArr4[i11 + 3] = (byte) ((i10 & 63) | 128);
                        qg3VarZ4.c = i11 + 4;
                        this.o += 4;
                        i += 2;
                    }
                }
                i++;
            }
        }
    }

    public final String toString() {
        long j = this.o;
        if (j <= 2147483647L) {
            return Y((int) j).toString();
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + this.o).toString());
    }

    @Override // defpackage.fz
    public final boolean u(long j) {
        return this.o >= j;
    }

    public final void u0(String str) {
        str.getClass();
        t0(0, str, str.length());
    }

    public final void v0(int i) {
        if (i < 128) {
            o0(i);
            return;
        }
        if (i < 2048) {
            qg3 qg3VarZ = Z(2);
            byte[] bArr = qg3VarZ.a;
            int i2 = qg3VarZ.c;
            bArr[i2] = (byte) ((i >> 6) | 192);
            bArr[i2 + 1] = (byte) ((i & 63) | 128);
            qg3VarZ.c = i2 + 2;
            this.o += 2;
            return;
        }
        if (55296 <= i && i < 57344) {
            o0(63);
            return;
        }
        if (i < 65536) {
            qg3 qg3VarZ2 = Z(3);
            byte[] bArr2 = qg3VarZ2.a;
            int i3 = qg3VarZ2.c;
            bArr2[i3] = (byte) ((i >> 12) | 224);
            bArr2[i3 + 1] = (byte) (((i >> 6) & 63) | 128);
            bArr2[i3 + 2] = (byte) ((i & 63) | 128);
            qg3VarZ2.c = i3 + 3;
            this.o += 3;
            return;
        }
        if (i > 1114111) {
            k21.f("Unexpected code point: 0x".concat(is0.Z(i)));
            return;
        }
        qg3 qg3VarZ3 = Z(4);
        byte[] bArr3 = qg3VarZ3.a;
        int i4 = qg3VarZ3.c;
        bArr3[i4] = (byte) ((i >> 18) | 240);
        bArr3[i4 + 1] = (byte) (((i >> 12) & 63) | 128);
        bArr3[i4 + 2] = (byte) (((i >> 6) & 63) | 128);
        bArr3[i4 + 3] = (byte) ((i & 63) | 128);
        qg3VarZ3.c = i4 + 4;
        this.o += 4;
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        int iRemaining = byteBuffer.remaining();
        int i = iRemaining;
        while (i > 0) {
            qg3 qg3VarZ = Z(1);
            int iMin = Math.min(i, 8192 - qg3VarZ.c);
            byteBuffer.get(qg3VarZ.a, qg3VarZ.c, iMin);
            i -= iMin;
            qg3VarZ.c += iMin;
        }
        this.o += (long) iRemaining;
        return iRemaining;
    }

    @Override // defpackage.ez
    public final /* bridge */ /* synthetic */ ez writeByte(int i) {
        o0(i);
        return this;
    }

    @Override // defpackage.ez
    public final /* bridge */ /* synthetic */ ez writeInt(int i) {
        r0(i);
        return this;
    }

    @Override // defpackage.ez
    public final /* bridge */ /* synthetic */ ez writeShort(int i) {
        s0(i);
        return this;
    }

    public final byte z(long j) {
        is0.q(this.o, j, 1L);
        qg3 qg3Var = this.n;
        qg3Var.getClass();
        long j2 = this.o;
        if (j2 - j < j) {
            while (j2 > j) {
                qg3Var = qg3Var.g;
                qg3Var.getClass();
                j2 -= (long) (qg3Var.c - qg3Var.b);
            }
            return qg3Var.a[(int) ((((long) qg3Var.b) + j) - j2)];
        }
        long j3 = 0;
        while (true) {
            int i = qg3Var.c;
            int i2 = qg3Var.b;
            long j4 = ((long) (i - i2)) + j3;
            if (j4 > j) {
                return qg3Var.a[(int) ((((long) i2) + j) - j3)];
            }
            qg3Var = qg3Var.f;
            qg3Var.getClass();
            j3 = j4;
        }
    }

    @Override // defpackage.fz
    public final sy H() {
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel, defpackage.kn3
    public final void close() {
    }

    @Override // defpackage.ez, defpackage.kn3, java.io.Flushable
    public final void flush() {
    }

    @Override // defpackage.ez
    public final ez write(byte[] bArr) {
        i0(bArr.length, bArr);
        return this;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        qg3 qg3Var = this.n;
        if (qg3Var == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), qg3Var.c - qg3Var.b);
        byteBuffer.put(qg3Var.a, qg3Var.b, iMin);
        int i = qg3Var.b + iMin;
        qg3Var.b = i;
        this.o -= (long) iMin;
        if (i == qg3Var.c) {
            this.n = qg3Var.a();
            sg3.a(qg3Var);
        }
        return iMin;
    }
}
