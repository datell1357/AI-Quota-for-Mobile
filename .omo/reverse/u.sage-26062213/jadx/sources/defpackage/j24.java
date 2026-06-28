package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j24 {
    public static final j24 e = new j24(0, 0, new Object[0], null);
    public int a;
    public int b;
    public final qz0 c;
    public Object[] d;

    public j24(int i, int i2, Object[] objArr, qz0 qz0Var) {
        this.a = i;
        this.b = i2;
        this.c = qz0Var;
        this.d = objArr;
    }

    public static j24 j(int i, Object obj, Object obj2, int i2, Object obj3, Object obj4, int i3, qz0 qz0Var) {
        if (i3 > 30) {
            return new j24(0, 0, new Object[]{obj, obj2, obj3, obj4}, qz0Var);
        }
        int iY = dm0.y(i, i3);
        int iY2 = dm0.y(i2, i3);
        if (iY != iY2) {
            return new j24((1 << iY) | (1 << iY2), 0, iY < iY2 ? new Object[]{obj, obj2, obj3, obj4} : new Object[]{obj3, obj4, obj, obj2}, qz0Var);
        }
        return new j24(0, 1 << iY, new Object[]{j(i, obj, obj2, i2, obj3, obj4, i3 + 5, qz0Var)}, qz0Var);
    }

    public final Object[] a(int i, int i2, int i3, Object obj, Object obj2, int i4, qz0 qz0Var) {
        Object obj3 = this.d[i];
        j24 j24VarJ = j(obj3 != null ? obj3.hashCode() : 0, obj3, x(i), i3, obj, obj2, i4 + 5, qz0Var);
        int iT = t(i2);
        int i5 = iT + 1;
        Object[] objArr = this.d;
        Object[] objArr2 = new Object[objArr.length - 1];
        ji.R(0, i, 6, objArr, objArr2);
        ji.O(i, i + 2, i5, objArr, objArr2);
        objArr2[iT - 1] = j24VarJ;
        ji.O(iT, i5, objArr.length, objArr, objArr2);
        return objArr2;
    }

    public final int b() {
        if (this.b == 0) {
            return this.d.length / 2;
        }
        int iBitCount = Integer.bitCount(this.a);
        int length = this.d.length;
        for (int i = iBitCount * 2; i < length; i++) {
            iBitCount += s(i).b();
        }
        return iBitCount;
    }

    public final boolean c(Object obj) {
        ks1 ks1VarT = ix.T(ix.a0(0, this.d.length), 2);
        int i = ks1VarT.n;
        int i2 = ks1VarT.o;
        int i3 = ks1VarT.p;
        if ((i3 > 0 && i <= i2) || (i3 < 0 && i2 <= i)) {
            while (!nt1.g(obj, this.d[i])) {
                if (i != i2) {
                    i += i3;
                }
            }
            return true;
        }
        return false;
    }

    public final boolean d(int i, int i2, Object obj) {
        int iY = 1 << dm0.y(i, i2);
        if (h(iY)) {
            return nt1.g(obj, this.d[f(iY)]);
        }
        if (!i(iY)) {
            return false;
        }
        j24 j24VarS = s(t(iY));
        return i2 == 30 ? j24VarS.c(obj) : j24VarS.d(i, i2 + 5, obj);
    }

    public final boolean e(j24 j24Var) {
        if (this == j24Var) {
            return true;
        }
        if (this.b == j24Var.b && this.a == j24Var.a) {
            int length = this.d.length;
            for (int i = 0; i < length; i++) {
                if (this.d[i] == j24Var.d[i]) {
                }
            }
            return true;
        }
        return false;
    }

    public final int f(int i) {
        return Integer.bitCount(this.a & (i - 1)) * 2;
    }

    public final Object g(int i, int i2, Object obj) {
        int iY = 1 << dm0.y(i, i2);
        if (h(iY)) {
            int iF = f(iY);
            if (nt1.g(obj, this.d[iF])) {
                return x(iF);
            }
            return null;
        }
        if (!i(iY)) {
            return null;
        }
        j24 j24VarS = s(t(iY));
        if (i2 != 30) {
            return j24VarS.g(i, i2 + 5, obj);
        }
        ks1 ks1VarT = ix.T(ix.a0(0, j24VarS.d.length), 2);
        int i3 = ks1VarT.n;
        int i4 = ks1VarT.o;
        int i5 = ks1VarT.p;
        if ((i5 <= 0 || i3 > i4) && (i5 >= 0 || i4 > i3)) {
            return null;
        }
        while (!nt1.g(obj, j24VarS.d[i3])) {
            if (i3 == i4) {
                return null;
            }
            i3 += i5;
        }
        return j24VarS.x(i3);
    }

    public final boolean h(int i) {
        return (this.a & i) != 0;
    }

    public final boolean i(int i) {
        return (this.b & i) != 0;
    }

    public final j24 k(int i, gu2 gu2Var) {
        gu2Var.f(gu2Var.r - 1);
        gu2Var.p = x(i);
        Object[] objArr = this.d;
        if (objArr.length == 2) {
            return null;
        }
        if (this.c != gu2Var.n) {
            return new j24(0, 0, dm0.k(i, objArr), gu2Var.n);
        }
        this.d = dm0.k(i, objArr);
        return this;
    }

    public final j24 l(int i, Object obj, Object obj2, int i2, gu2 gu2Var) {
        gu2 gu2Var2;
        j24 j24VarL;
        int iY = 1 << dm0.y(i, i2);
        boolean zH = h(iY);
        qz0 qz0Var = this.c;
        if (zH) {
            int iF = f(iY);
            if (!nt1.g(obj, this.d[iF])) {
                gu2Var.f(gu2Var.r + 1);
                qz0 qz0Var2 = gu2Var.n;
                if (qz0Var != qz0Var2) {
                    return new j24(this.a ^ iY, this.b | iY, a(iF, iY, i, obj, obj2, i2, qz0Var2), qz0Var2);
                }
                this.d = a(iF, iY, i, obj, obj2, i2, qz0Var2);
                this.a ^= iY;
                this.b |= iY;
                return this;
            }
            gu2Var.p = x(iF);
            if (x(iF) == obj2) {
                return this;
            }
            if (qz0Var == gu2Var.n) {
                this.d[iF + 1] = obj2;
                return this;
            }
            gu2Var.q++;
            Object[] objArr = this.d;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            objArrCopyOf[iF + 1] = obj2;
            return new j24(this.a, this.b, objArrCopyOf, gu2Var.n);
        }
        if (!i(iY)) {
            gu2Var.f(gu2Var.r + 1);
            qz0 qz0Var3 = gu2Var.n;
            int iF2 = f(iY);
            Object[] objArr2 = this.d;
            if (qz0Var != qz0Var3) {
                return new j24(this.a | iY, this.b, dm0.j(objArr2, iF2, obj, obj2), qz0Var3);
            }
            this.d = dm0.j(objArr2, iF2, obj, obj2);
            this.a |= iY;
            return this;
        }
        int iT = t(iY);
        j24 j24VarS = s(iT);
        if (i2 == 30) {
            ks1 ks1VarT = ix.T(ix.a0(0, j24VarS.d.length), 2);
            int i3 = ks1VarT.n;
            int i4 = ks1VarT.o;
            int i5 = ks1VarT.p;
            if ((i5 <= 0 || i3 > i4) && (i5 >= 0 || i4 > i3)) {
                gu2Var.f(gu2Var.r + 1);
                j24VarL = new j24(0, 0, dm0.j(j24VarS.d, 0, obj, obj2), gu2Var.n);
                gu2Var2 = gu2Var;
            } else {
                while (!nt1.g(obj, j24VarS.d[i3])) {
                    if (i3 == i4) {
                        gu2Var.f(gu2Var.r + 1);
                        j24VarL = new j24(0, 0, dm0.j(j24VarS.d, 0, obj, obj2), gu2Var.n);
                        break;
                    }
                    i3 += i5;
                }
                gu2Var.p = j24VarS.x(i3);
                if (j24VarS.c == gu2Var.n) {
                    j24VarS.d[i3 + 1] = obj2;
                    j24VarL = j24VarS;
                } else {
                    gu2Var.q++;
                    Object[] objArr3 = j24VarS.d;
                    Object[] objArrCopyOf2 = Arrays.copyOf(objArr3, objArr3.length);
                    objArrCopyOf2[i3 + 1] = obj2;
                    j24VarL = new j24(0, 0, objArrCopyOf2, gu2Var.n);
                }
                gu2Var2 = gu2Var;
            }
        } else {
            gu2Var2 = gu2Var;
            j24VarL = j24VarS.l(i, obj, obj2, i2 + 5, gu2Var2);
        }
        return j24VarS == j24VarL ? this : r(iT, j24VarL, gu2Var2.n);
    }

    public final j24 m(j24 j24Var, int i, zr0 zr0Var, gu2 gu2Var) {
        Object[] objArr;
        j24 j24VarJ;
        if (this == j24Var) {
            zr0Var.a += b();
            return this;
        }
        int i2 = 0;
        if (i > 30) {
            qz0 qz0Var = gu2Var.n;
            int i3 = j24Var.b;
            Object[] objArr2 = this.d;
            Object[] objArrCopyOf = Arrays.copyOf(objArr2, objArr2.length + j24Var.d.length);
            int length = this.d.length;
            ks1 ks1VarT = ix.T(ix.a0(0, j24Var.d.length), 2);
            int i4 = ks1VarT.n;
            int i5 = ks1VarT.o;
            int i6 = ks1VarT.p;
            if ((i6 > 0 && i4 <= i5) || (i6 < 0 && i5 <= i4)) {
                while (true) {
                    if (c(j24Var.d[i4])) {
                        zr0Var.a++;
                    } else {
                        Object[] objArr3 = j24Var.d;
                        objArrCopyOf[length] = objArr3[i4];
                        objArrCopyOf[length + 1] = objArr3[i4 + 1];
                        length += 2;
                    }
                    if (i4 == i5) {
                        break;
                    }
                    i4 += i6;
                }
            }
            if (length != this.d.length) {
                return length == j24Var.d.length ? j24Var : length == objArrCopyOf.length ? new j24(0, 0, objArrCopyOf, qz0Var) : new j24(0, 0, Arrays.copyOf(objArrCopyOf, length), qz0Var);
            }
        } else {
            int i7 = this.b | j24Var.b;
            int i8 = this.a;
            int i9 = j24Var.a;
            int i10 = (i8 ^ i9) & (~i7);
            int i11 = i8 & i9;
            int i12 = i10;
            while (i11 != 0) {
                int iLowestOneBit = Integer.lowestOneBit(i11);
                if (nt1.g(this.d[f(iLowestOneBit)], j24Var.d[j24Var.f(iLowestOneBit)])) {
                    i12 |= iLowestOneBit;
                } else {
                    i7 |= iLowestOneBit;
                }
                i11 ^= iLowestOneBit;
            }
            if ((i7 & i12) != 0) {
                ix2.b("Check failed.");
            }
            j24 j24Var2 = (nt1.g(this.c, gu2Var.n) && this.a == i12 && this.b == i7) ? this : new j24(i12, i7, new Object[Integer.bitCount(i7) + (Integer.bitCount(i12) * 2)], null);
            int i13 = i7;
            int i14 = 0;
            while (i13 != 0) {
                int iLowestOneBit2 = Integer.lowestOneBit(i13);
                Object[] objArr4 = j24Var2.d;
                int length2 = (objArr4.length - 1) - i14;
                if (i(iLowestOneBit2)) {
                    j24VarJ = s(t(iLowestOneBit2));
                    if (j24Var.i(iLowestOneBit2)) {
                        j24VarJ = j24VarJ.m(j24Var.s(j24Var.t(iLowestOneBit2)), i + 5, zr0Var, gu2Var);
                        objArr = objArr4;
                    } else if (j24Var.h(iLowestOneBit2)) {
                        int iF = j24Var.f(iLowestOneBit2);
                        Object obj = j24Var.d[iF];
                        Object objX = j24Var.x(iF);
                        int i15 = gu2Var.r;
                        objArr = objArr4;
                        j24VarJ = j24VarJ.l(obj != null ? obj.hashCode() : i2, obj, objX, i + 5, gu2Var);
                        if (gu2Var.r == i15) {
                            zr0Var.a++;
                        }
                    } else {
                        objArr = objArr4;
                    }
                } else {
                    objArr = objArr4;
                    if (j24Var.i(iLowestOneBit2)) {
                        j24 j24VarS = j24Var.s(j24Var.t(iLowestOneBit2));
                        if (h(iLowestOneBit2)) {
                            int iF2 = f(iLowestOneBit2);
                            Object obj2 = this.d[iF2];
                            int i16 = i + 5;
                            if (j24VarS.d(obj2 != null ? obj2.hashCode() : 0, i16, obj2)) {
                                zr0Var.a++;
                                j24VarJ = j24VarS;
                            } else {
                                j24VarJ = j24VarS.l(obj2 != null ? obj2.hashCode() : 0, obj2, x(iF2), i16, gu2Var);
                            }
                        } else {
                            j24VarJ = j24VarS;
                        }
                    } else {
                        int iF3 = f(iLowestOneBit2);
                        Object obj3 = this.d[iF3];
                        Object objX2 = x(iF3);
                        int iF4 = j24Var.f(iLowestOneBit2);
                        Object obj4 = j24Var.d[iF4];
                        j24VarJ = j(obj3 != null ? obj3.hashCode() : 0, obj3, objX2, obj4 != null ? obj4.hashCode() : 0, obj4, j24Var.x(iF4), i + 5, gu2Var.n);
                    }
                }
                objArr[length2] = j24VarJ;
                i14++;
                i13 ^= iLowestOneBit2;
                i2 = 0;
            }
            int i17 = 0;
            while (i12 != 0) {
                int iLowestOneBit3 = Integer.lowestOneBit(i12);
                int i18 = i17 * 2;
                if (j24Var.h(iLowestOneBit3)) {
                    int iF5 = j24Var.f(iLowestOneBit3);
                    Object[] objArr5 = j24Var2.d;
                    objArr5[i18] = j24Var.d[iF5];
                    objArr5[i18 + 1] = j24Var.x(iF5);
                    if (h(iLowestOneBit3)) {
                        zr0Var.a++;
                    }
                } else {
                    int iF6 = f(iLowestOneBit3);
                    Object[] objArr6 = j24Var2.d;
                    objArr6[i18] = this.d[iF6];
                    objArr6[i18 + 1] = x(iF6);
                }
                i17++;
                i12 ^= iLowestOneBit3;
            }
            if (!e(j24Var2)) {
                return j24Var.e(j24Var2) ? j24Var : j24Var2;
            }
        }
        return this;
    }

    public final j24 n(int i, Object obj, int i2, gu2 gu2Var) {
        j24 j24VarN;
        int iY = 1 << dm0.y(i, i2);
        if (h(iY)) {
            int iF = f(iY);
            if (nt1.g(obj, this.d[iF])) {
                return p(iF, iY, gu2Var);
            }
        } else if (i(iY)) {
            int iT = t(iY);
            j24 j24VarS = s(iT);
            if (i2 == 30) {
                ks1 ks1VarT = ix.T(ix.a0(0, j24VarS.d.length), 2);
                int i3 = ks1VarT.n;
                int i4 = ks1VarT.o;
                int i5 = ks1VarT.p;
                if ((i5 <= 0 || i3 > i4) && (i5 >= 0 || i4 > i3)) {
                    j24VarN = j24VarS;
                    break;
                }
                while (!nt1.g(obj, j24VarS.d[i3])) {
                    if (i3 == i4) {
                        j24VarN = j24VarS;
                        break;
                    }
                    i3 += i5;
                }
                j24VarN = j24VarS.k(i3, gu2Var);
            } else {
                j24VarN = j24VarS.n(i, obj, i2 + 5, gu2Var);
            }
            return q(j24VarS, j24VarN, iT, iY, gu2Var.n);
        }
        return this;
    }

    public final j24 o(int i, Object obj, Object obj2, int i2, gu2 gu2Var) {
        gu2 gu2Var2;
        j24 j24VarO;
        int iY = 1 << dm0.y(i, i2);
        if (h(iY)) {
            int iF = f(iY);
            return (nt1.g(obj, this.d[iF]) && nt1.g(obj2, x(iF))) ? p(iF, iY, gu2Var) : this;
        }
        if (!i(iY)) {
            return this;
        }
        int iT = t(iY);
        j24 j24VarS = s(iT);
        if (i2 == 30) {
            ks1 ks1VarT = ix.T(ix.a0(0, j24VarS.d.length), 2);
            int i3 = ks1VarT.n;
            int i4 = ks1VarT.o;
            int i5 = ks1VarT.p;
            if ((i5 <= 0 || i3 > i4) && (i5 >= 0 || i4 > i3)) {
                j24VarO = j24VarS;
                gu2Var2 = gu2Var;
            } else {
                while (true) {
                    if (!nt1.g(obj, j24VarS.d[i3]) || !nt1.g(obj2, j24VarS.x(i3))) {
                        if (i3 == i4) {
                            break;
                        }
                        i3 += i5;
                    } else {
                        j24VarO = j24VarS.k(i3, gu2Var);
                        break;
                    }
                }
                j24VarO = j24VarS;
                gu2Var2 = gu2Var;
            }
        } else {
            gu2Var2 = gu2Var;
            j24VarO = j24VarS.o(i, obj, obj2, i2 + 5, gu2Var2);
        }
        return q(j24VarS, j24VarO, iT, iY, gu2Var2.n);
    }

    public final j24 p(int i, int i2, gu2 gu2Var) {
        gu2Var.f(gu2Var.r - 1);
        gu2Var.p = x(i);
        Object[] objArr = this.d;
        if (objArr.length == 2) {
            return null;
        }
        if (this.c != gu2Var.n) {
            return new j24(i2 ^ this.a, this.b, dm0.k(i, objArr), gu2Var.n);
        }
        this.d = dm0.k(i, objArr);
        this.a ^= i2;
        return this;
    }

    public final j24 q(j24 j24Var, j24 j24Var2, int i, int i2, qz0 qz0Var) {
        qz0 qz0Var2 = this.c;
        if (j24Var2 != null) {
            return (qz0Var2 == qz0Var || j24Var != j24Var2) ? r(i, j24Var2, qz0Var) : this;
        }
        Object[] objArr = this.d;
        if (objArr.length == 1) {
            return null;
        }
        if (qz0Var2 != qz0Var) {
            return new j24(this.a, this.b ^ i2, dm0.l(i, objArr), qz0Var);
        }
        this.d = dm0.l(i, objArr);
        this.b ^= i2;
        return this;
    }

    public final j24 r(int i, j24 j24Var, qz0 qz0Var) {
        Object[] objArr = this.d;
        if (objArr.length == 1 && j24Var.d.length == 2 && j24Var.b == 0) {
            j24Var.a = this.b;
            return j24Var;
        }
        if (this.c == qz0Var) {
            objArr[i] = j24Var;
            return this;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        objArrCopyOf[i] = j24Var;
        return new j24(this.a, this.b, objArrCopyOf, qz0Var);
    }

    public final j24 s(int i) {
        Object obj = this.d[i];
        obj.getClass();
        return (j24) obj;
    }

    public final int t(int i) {
        return (this.d.length - 1) - Integer.bitCount(this.b & (i - 1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c5, code lost:
    
        if (r14 != null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ce, code lost:
    
        if (r14 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d1, code lost:
    
        r14.p = w(r7, r2, (defpackage.j24) r14.p);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00db, code lost:
    
        return r14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.d90 u(int r14, int r15, java.lang.Object r16, java.lang.Object r17) {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.j24.u(int, int, java.lang.Object, java.lang.Object):d90");
    }

    public final j24 v(int i, int i2, Object obj) {
        j24 j24VarV;
        int iY = 1 << dm0.y(i, i2);
        if (h(iY)) {
            int iF = f(iY);
            if (!nt1.g(obj, this.d[iF])) {
                return this;
            }
            Object[] objArr = this.d;
            if (objArr.length != 2) {
                return new j24(this.a ^ iY, this.b, dm0.k(iF, objArr), null);
            }
        } else {
            if (!i(iY)) {
                return this;
            }
            int iT = t(iY);
            j24 j24VarS = s(iT);
            if (i2 == 30) {
                ks1 ks1VarT = ix.T(ix.a0(0, j24VarS.d.length), 2);
                int i3 = ks1VarT.n;
                int i4 = ks1VarT.o;
                int i5 = ks1VarT.p;
                if ((i5 <= 0 || i3 > i4) && (i5 >= 0 || i4 > i3)) {
                    j24VarV = j24VarS;
                    break;
                }
                while (!nt1.g(obj, j24VarS.d[i3])) {
                    if (i3 == i4) {
                        j24VarV = j24VarS;
                        break;
                    }
                    i3 += i5;
                }
                Object[] objArr2 = j24VarS.d;
                j24VarV = objArr2.length == 2 ? null : new j24(0, 0, dm0.k(i3, objArr2), null);
            } else {
                j24VarV = j24VarS.v(i, i2 + 5, obj);
            }
            if (j24VarV != null) {
                return j24VarS != j24VarV ? w(iT, iY, j24VarV) : this;
            }
            Object[] objArr3 = this.d;
            if (objArr3.length != 1) {
                return new j24(this.a, this.b ^ iY, dm0.l(iT, objArr3), null);
            }
        }
        return null;
    }

    public final j24 w(int i, int i2, j24 j24Var) {
        Object[] objArr = j24Var.d;
        if (objArr.length != 2 || j24Var.b != 0) {
            Object[] objArr2 = this.d;
            Object[] objArrCopyOf = Arrays.copyOf(objArr2, objArr2.length);
            objArrCopyOf[i] = j24Var;
            return new j24(this.a, this.b, objArrCopyOf, null);
        }
        if (this.d.length == 1) {
            j24Var.a = this.b;
            return j24Var;
        }
        int iF = f(i2);
        Object[] objArr3 = this.d;
        Object obj = objArr[0];
        Object obj2 = objArr[1];
        Object[] objArrCopyOf2 = Arrays.copyOf(objArr3, objArr3.length + 1);
        ji.O(i + 2, i + 1, objArr3.length, objArrCopyOf2, objArrCopyOf2);
        ji.O(iF + 2, iF, i, objArrCopyOf2, objArrCopyOf2);
        objArrCopyOf2[iF] = obj;
        objArrCopyOf2[iF + 1] = obj2;
        return new j24(this.a ^ i2, this.b ^ i2, objArrCopyOf2, null);
    }

    public final Object x(int i) {
        return this.d[i + 1];
    }
}
