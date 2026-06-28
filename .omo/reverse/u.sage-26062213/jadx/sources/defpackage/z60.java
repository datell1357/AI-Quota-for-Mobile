package defpackage;

import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z60 extends b70 {
    public final byte[] p;
    public int q;
    public int r;
    public int s;
    public final int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f432u;
    public int v = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    public z60(byte[] bArr, int i, int i2, boolean z) {
        this.p = bArr;
        this.q = i2 + i;
        this.s = i;
        this.t = i;
    }

    @Override // defpackage.b70
    public final long A() {
        return N();
    }

    @Override // defpackage.b70
    public final int B() {
        int iO = O();
        return (-(iO & 1)) ^ (iO >>> 1);
    }

    @Override // defpackage.b70
    public final long C() {
        long jP = P();
        return (-(jP & 1)) ^ (jP >>> 1);
    }

    @Override // defpackage.b70
    public final String E() throws wt1 {
        int iO = O();
        if (iO > 0) {
            int i = this.q;
            int i2 = this.s;
            if (iO <= i - i2) {
                String str = new String(this.p, i2, iO, dt1.a);
                this.s += iO;
                return str;
            }
        }
        if (iO == 0) {
            return "";
        }
        if (iO < 0) {
            throw wt1.d();
        }
        throw wt1.e();
    }

    @Override // defpackage.b70
    public final String F() throws wt1 {
        int iO = O();
        if (iO > 0) {
            int i = this.q;
            int i2 = this.s;
            if (iO <= i - i2) {
                String strN = h94.a.n(this.p, i2, iO);
                this.s += iO;
                return strN;
            }
        }
        if (iO == 0) {
            return "";
        }
        if (iO <= 0) {
            throw wt1.d();
        }
        throw wt1.e();
    }

    @Override // defpackage.b70
    public final int G() throws wt1 {
        if (j()) {
            this.f432u = 0;
            return 0;
        }
        int iO = O();
        this.f432u = iO;
        if ((iO >>> 3) != 0) {
            return iO;
        }
        throw new wt1("Protocol message contained an invalid tag (zero).");
    }

    @Override // defpackage.b70
    public final int H() {
        return O();
    }

    @Override // defpackage.b70
    public final long I() {
        return P();
    }

    @Override // defpackage.b70
    public final boolean J(int i) throws wt1 {
        int i2 = i & 7;
        int i3 = 0;
        if (i2 != 0) {
            if (i2 == 1) {
                S(8);
                return true;
            }
            if (i2 == 2) {
                S(O());
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
            S(4);
            return true;
        }
        int i4 = this.q - this.s;
        byte[] bArr = this.p;
        if (i4 >= 10) {
            while (i3 < 10) {
                int i5 = this.s;
                this.s = i5 + 1;
                if (bArr[i5] < 0) {
                    i3++;
                }
            }
            throw wt1.c();
        }
        while (i3 < 10) {
            int i6 = this.s;
            if (i6 == this.q) {
                throw wt1.e();
            }
            this.s = i6 + 1;
            if (bArr[i6] < 0) {
                i3++;
            }
        }
        throw wt1.c();
        return true;
    }

    public final int M() throws wt1 {
        int i = this.s;
        if (this.q - i < 4) {
            throw wt1.e();
        }
        this.s = i + 4;
        byte[] bArr = this.p;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public final long N() throws wt1 {
        int i = this.s;
        if (this.q - i < 8) {
            throw wt1.e();
        }
        this.s = i + 8;
        byte[] bArr = this.p;
        return ((((long) bArr[i + 1]) & 255) << 8) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    public final int O() {
        int i;
        int i2 = this.s;
        int i3 = this.q;
        if (i3 != i2) {
            int i4 = i2 + 1;
            byte[] bArr = this.p;
            byte b = bArr[i2];
            if (b >= 0) {
                this.s = i4;
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
                this.s = i5;
                return i;
            }
        }
        return (int) Q();
    }

    public final long P() {
        long j;
        long j2;
        long j3;
        long j4;
        int i = this.s;
        int i2 = this.q;
        if (i2 != i) {
            int i3 = i + 1;
            byte[] bArr = this.p;
            byte b = bArr[i];
            if (b >= 0) {
                this.s = i3;
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
                this.s = i4;
                return j;
            }
        }
        return Q();
    }

    public final long Q() throws wt1 {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            int i2 = this.s;
            if (i2 == this.q) {
                throw wt1.e();
            }
            this.s = i2 + 1;
            byte b = this.p[i2];
            j |= ((long) (b & 127)) << i;
            if ((b & 128) == 0) {
                return j;
            }
        }
        throw wt1.c();
    }

    public final void R() {
        int i = this.q + this.r;
        this.q = i;
        int i2 = i - this.t;
        int i3 = this.v;
        if (i2 <= i3) {
            this.r = 0;
            return;
        }
        int i4 = i2 - i3;
        this.r = i4;
        this.q = i - i4;
    }

    public final void S(int i) throws wt1 {
        if (i >= 0) {
            int i2 = this.q;
            int i3 = this.s;
            if (i <= i2 - i3) {
                this.s = i3 + i;
                return;
            }
        }
        if (i >= 0) {
            throw wt1.e();
        }
        throw wt1.d();
    }

    @Override // defpackage.b70
    public final void f(int i) throws wt1 {
        if (this.f432u != i) {
            throw new wt1("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // defpackage.b70
    public final int i() {
        return this.s - this.t;
    }

    @Override // defpackage.b70
    public final boolean j() {
        return this.s == this.q;
    }

    @Override // defpackage.b70
    public final void o(int i) {
        this.v = i;
        R();
    }

    @Override // defpackage.b70
    public final int p(int i) {
        if (i < 0) {
            throw wt1.d();
        }
        int i2 = i() + i;
        if (i2 < 0) {
            throw new wt1("Failed to parse the message.");
        }
        int i3 = this.v;
        if (i2 > i3) {
            throw wt1.e();
        }
        this.v = i2;
        R();
        return i3;
    }

    @Override // defpackage.b70
    public final boolean q() {
        return P() != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    @Override // defpackage.b70
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.f00 r() throws defpackage.wt1 {
        /*
            r4 = this;
            int r0 = r4.O()
            byte[] r1 = r4.p
            if (r0 <= 0) goto L19
            int r2 = r4.q
            int r3 = r4.s
            int r2 = r2 - r3
            if (r0 > r2) goto L19
            f00 r1 = defpackage.f00.d(r1, r3, r0)
            int r2 = r4.s
            int r2 = r2 + r0
            r4.s = r2
            return r1
        L19:
            if (r0 != 0) goto L1e
            f00 r4 = defpackage.f00.p
            return r4
        L1e:
            if (r0 <= 0) goto L2f
            int r2 = r4.q
            int r3 = r4.s
            int r2 = r2 - r3
            if (r0 > r2) goto L2f
            int r0 = r0 + r3
            r4.s = r0
            byte[] r4 = java.util.Arrays.copyOfRange(r1, r3, r0)
            goto L35
        L2f:
            if (r0 > 0) goto L42
            if (r0 != 0) goto L3d
            byte[] r4 = defpackage.dt1.b
        L35:
            f00 r0 = defpackage.f00.p
            f00 r0 = new f00
            r0.<init>(r4)
            return r0
        L3d:
            wt1 r4 = defpackage.wt1.d()
            throw r4
        L42:
            wt1 r4 = defpackage.wt1.e()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.z60.r():f00");
    }

    @Override // defpackage.b70
    public final double s() {
        return Double.longBitsToDouble(N());
    }

    @Override // defpackage.b70
    public final int t() {
        return O();
    }

    @Override // defpackage.b70
    public final int u() {
        return M();
    }

    @Override // defpackage.b70
    public final long v() {
        return N();
    }

    @Override // defpackage.b70
    public final float w() {
        return Float.intBitsToFloat(M());
    }

    @Override // defpackage.b70
    public final int x() {
        return O();
    }

    @Override // defpackage.b70
    public final long y() {
        return P();
    }

    @Override // defpackage.b70
    public final int z() {
        return M();
    }
}
