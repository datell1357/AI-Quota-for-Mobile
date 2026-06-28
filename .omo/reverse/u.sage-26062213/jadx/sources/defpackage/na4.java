package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class na4 implements ka4 {
    public final sf2 n;
    public final tf2 o;
    public final int p;
    public final my0 q;
    public int[] r = ja4.a;
    public float[] s;
    public bf t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public bf f219u;
    public bf v;
    public bf w;
    public float[] x;
    public float[] y;
    public dh1 z;

    public na4(sf2 sf2Var, tf2 tf2Var, int i, my0 my0Var) {
        this.n = sf2Var;
        this.o = tf2Var;
        this.p = i;
        this.q = my0Var;
        float[] fArr = ja4.b;
        this.s = fArr;
        this.x = fArr;
        this.y = fArr;
        this.z = ja4.c;
    }

    public final int b(int i) {
        int i2;
        sf2 sf2Var = this.n;
        int i3 = sf2Var.b;
        int i4 = 0;
        if (i3 <= 0) {
            mk0.h("");
            return 0;
        }
        int i5 = i3 - 1;
        while (true) {
            if (i4 <= i5) {
                i2 = (i4 + i5) >>> 1;
                int i6 = sf2Var.a[i2];
                if (i6 >= i) {
                    if (i6 <= i) {
                        break;
                    }
                    i5 = i2 - 1;
                } else {
                    i4 = i2 + 1;
                }
            } else {
                i2 = -(i4 + 1);
                break;
            }
        }
        return i2 < -1 ? -(i2 + 2) : i2;
    }

    public final float d(int i, boolean z, int i2) {
        my0 my0Var;
        float f;
        sf2 sf2Var = this.n;
        if (i >= sf2Var.b - 1) {
            f = i2;
        } else {
            int iC = sf2Var.c(i);
            int iC2 = sf2Var.c(i + 1);
            if (i2 != iC) {
                int i3 = iC2 - iC;
                ma4 ma4Var = (ma4) this.o.b(iC);
                if (ma4Var == null || (my0Var = ma4Var.b) == null) {
                    my0Var = this.q;
                }
                float f2 = i3;
                float fA = my0Var.a((i2 - iC) / f2);
                return z ? fA : ((f2 * fA) + iC) / 1000.0f;
            }
            f = iC;
        }
        return f / 1000.0f;
    }

    public final void e(bf bfVar, bf bfVar2, bf bfVar3) {
        float[] fArr;
        boolean z = this.z != ja4.c;
        bf bfVar4 = this.t;
        tf2 tf2Var = this.o;
        sf2 sf2Var = this.n;
        if (bfVar4 == null) {
            this.t = bfVar.c();
            this.f219u = bfVar3.c();
            int i = sf2Var.b;
            float[] fArr2 = new float[i];
            for (int i2 = 0; i2 < i; i2++) {
                fArr2[i2] = sf2Var.c(i2) / 1000.0f;
            }
            this.s = fArr2;
            int i3 = sf2Var.b;
            int[] iArr = new int[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                iArr[i4] = 0;
            }
            this.r = iArr;
        }
        if (z) {
            if (this.z != ja4.c && nt1.g(this.v, bfVar) && nt1.g(this.w, bfVar2)) {
                return;
            }
            this.v = bfVar;
            this.w = bfVar2;
            int iB = bfVar.b() + (bfVar.b() % 2);
            this.x = new float[iB];
            this.y = new float[iB];
            int i5 = sf2Var.b;
            float[][] fArr3 = new float[i5][];
            for (int i6 = 0; i6 < i5; i6++) {
                int iC = sf2Var.c(i6);
                ma4 ma4Var = (ma4) tf2Var.b(iC);
                if (iC == 0 && ma4Var == null) {
                    fArr = new float[iB];
                    for (int i7 = 0; i7 < iB; i7++) {
                        fArr[i7] = bfVar.a(i7);
                    }
                } else if (iC == this.p && ma4Var == null) {
                    fArr = new float[iB];
                    for (int i8 = 0; i8 < iB; i8++) {
                        fArr[i8] = bfVar2.a(i8);
                    }
                } else {
                    ma4Var.getClass();
                    bf bfVar5 = ma4Var.a;
                    float[] fArr4 = new float[iB];
                    for (int i9 = 0; i9 < iB; i9++) {
                        fArr4[i9] = bfVar5.a(i9);
                    }
                    fArr = fArr4;
                }
                fArr3[i6] = fArr;
            }
            this.z = new dh1(this.r, this.s, fArr3);
        }
    }

    @Override // defpackage.ka4
    public final int k() {
        return 0;
    }

    @Override // defpackage.ia4
    public final bf m(long j, bf bfVar, bf bfVar2, bf bfVar3) {
        long j2 = j / 1000000;
        int[] iArr = ja4.a;
        long j3 = this.p;
        if (j2 < 0) {
            j2 = 0;
        }
        long j4 = j2 > j3 ? j3 : j2;
        if (j4 < 0) {
            return bfVar3;
        }
        e(bfVar, bfVar2, bfVar3);
        bf bfVar4 = this.f219u;
        bfVar4.getClass();
        int i = 0;
        if (this.z != ja4.c) {
            int i2 = (int) j4;
            float fD = d(b(i2), false, i2);
            float[] fArr = this.y;
            lh[][] lhVarArr = (lh[][]) this.z.n;
            float f = lhVarArr[0][0].a;
            float f2 = lhVarArr[lhVarArr.length - 1][0].b;
            if (fD < f) {
                fD = f;
            }
            if (fD <= f2) {
                f2 = fD;
            }
            int length = fArr.length;
            boolean z = false;
            for (lh[] lhVarArr2 : lhVarArr) {
                int i3 = 0;
                int i4 = 0;
                while (i3 < length - 1) {
                    lh lhVar = lhVarArr2[i4];
                    if (f2 <= lhVar.b) {
                        if (lhVar.p) {
                            fArr[i3] = lhVar.q;
                            fArr[i3 + 1] = lhVar.r;
                        } else {
                            lhVar.c(f2);
                            fArr[i3] = lhVar.a();
                            fArr[i3 + 1] = lhVar.b();
                        }
                        z = true;
                    }
                    i3 += 2;
                    i4++;
                }
                if (z) {
                    break;
                }
            }
            int length2 = fArr.length;
            while (i < length2) {
                bfVar4.e(i, fArr[i]);
                i++;
            }
        } else {
            bf bfVarP = p((j4 - 1) * 1000000, bfVar, bfVar2, bfVar3);
            bf bfVarP2 = p(j4 * 1000000, bfVar, bfVar2, bfVar3);
            int iB = bfVarP.b();
            while (i < iB) {
                bfVar4.e(i, (bfVarP.a(i) - bfVarP2.a(i)) * 1000.0f);
                i++;
            }
        }
        return bfVar4;
    }

    @Override // defpackage.ka4
    public final int o() {
        return this.p;
    }

    @Override // defpackage.ia4
    public final bf p(long j, bf bfVar, bf bfVar2, bf bfVar3) {
        bf bfVar4;
        bf bfVar5;
        lh[][] lhVarArr;
        bf bfVar6 = bfVar;
        long j2 = j / 1000000;
        int[] iArr = ja4.a;
        int i = this.p;
        long j3 = i;
        if (j2 < 0) {
            j2 = 0;
        }
        if (j2 <= j3) {
            j3 = j2;
        }
        int i2 = (int) j3;
        tf2 tf2Var = this.o;
        ma4 ma4Var = (ma4) tf2Var.b(i2);
        if (ma4Var != null) {
            return ma4Var.a;
        }
        if (i2 >= i) {
            return bfVar2;
        }
        if (i2 <= 0) {
            return bfVar6;
        }
        e(bfVar6, bfVar2, bfVar3);
        bf bfVar7 = this.t;
        bfVar7.getClass();
        int i3 = 0;
        if (this.z != ja4.c) {
            float fD = d(b(i2), false, i2);
            float[] fArr = this.x;
            lh[][] lhVarArr2 = (lh[][]) this.z.n;
            int length = lhVarArr2.length - 1;
            float f = lhVarArr2[0][0].a;
            float f2 = lhVarArr2[length][0].b;
            int length2 = fArr.length;
            if (fD < f || fD > f2) {
                if (fD > f2) {
                    f = f2;
                } else {
                    length = 0;
                }
                float f3 = fD - f;
                int i4 = 0;
                int i5 = 0;
                while (i4 < length2 - 1) {
                    lh lhVar = lhVarArr2[length][i5];
                    boolean z = lhVar.p;
                    float f4 = lhVar.r;
                    float f5 = lhVar.q;
                    if (z) {
                        float f6 = lhVar.a;
                        float f7 = lhVar.k;
                        float f8 = lhVar.c;
                        lhVarArr = lhVarArr2;
                        fArr[i4] = (f5 * f3) + ((lhVar.e - f8) * (f - f6) * f7) + f8;
                        float f9 = (f - f6) * f7;
                        float f10 = lhVar.d;
                        fArr[i4 + 1] = (f4 * f3) + ((lhVar.f - f10) * f9) + f10;
                    } else {
                        lhVarArr = lhVarArr2;
                        lhVar.c(f);
                        fArr[i4] = (lhVar.a() * f3) + (lhVar.n * lhVar.h) + f5;
                        fArr[i4 + 1] = (lhVar.b() * f3) + (lhVar.o * lhVar.i) + f4;
                    }
                    i4 += 2;
                    i5++;
                    lhVarArr2 = lhVarArr;
                }
            } else {
                int length3 = lhVarArr2.length;
                int i6 = 0;
                boolean z2 = false;
                while (i6 < length3) {
                    int i7 = i3;
                    int i8 = i7;
                    while (i7 < length2 - 1) {
                        lh lhVar2 = lhVarArr2[i6][i8];
                        if (fD <= lhVar2.b) {
                            if (lhVar2.p) {
                                float f11 = lhVar2.a;
                                float f12 = lhVar2.k;
                                float f13 = lhVar2.c;
                                fArr[i7] = ((lhVar2.e - f13) * (fD - f11) * f12) + f13;
                                float f14 = lhVar2.d;
                                fArr[i7 + 1] = ((lhVar2.f - f14) * (fD - f11) * f12) + f14;
                            } else {
                                lhVar2.c(fD);
                                fArr[i7] = (lhVar2.n * lhVar2.h) + lhVar2.q;
                                fArr[i7 + 1] = (lhVar2.o * lhVar2.i) + lhVar2.r;
                            }
                            z2 = true;
                        }
                        i7 += 2;
                        i8++;
                    }
                    if (z2) {
                        break;
                    }
                    i6++;
                    i3 = 0;
                }
            }
            int length4 = fArr.length;
            for (int i9 = 0; i9 < length4; i9++) {
                bfVar7.e(i9, fArr[i9]);
            }
        } else {
            int iB = b(i2);
            float fD2 = d(iB, true, i2);
            sf2 sf2Var = this.n;
            ma4 ma4Var2 = (ma4) tf2Var.b(sf2Var.c(iB));
            if (ma4Var2 != null && (bfVar5 = ma4Var2.a) != null) {
                bfVar6 = bfVar5;
            }
            ma4 ma4Var3 = (ma4) tf2Var.b(sf2Var.c(iB + 1));
            if (ma4Var3 == null || (bfVar4 = ma4Var3.a) == null) {
                bfVar4 = bfVar2;
            }
            int iB2 = bfVar7.b();
            for (int i10 = 0; i10 < iB2; i10++) {
                bfVar7.e(i10, (bfVar4.a(i10) * fD2) + ((1.0f - fD2) * bfVar6.a(i10)));
            }
        }
        return bfVar7;
    }
}
