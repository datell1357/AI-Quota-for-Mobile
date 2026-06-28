package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w83 extends b80 {
    public static final q73 r = new q73(3);
    public final cd4 d;
    public final float e;
    public final float f;
    public final e14 g;
    public final float[] h;
    public final float[] i;
    public final float[] j;
    public final yv0 k;
    public final v83 l;
    public final s83 m;
    public final yv0 n;
    public final v83 o;
    public final s83 p;
    public final boolean q;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0260  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public w83(java.lang.String r36, float[] r37, defpackage.cd4 r38, float[] r39, defpackage.yv0 r40, defpackage.yv0 r41, float r42, float r43, defpackage.e14 r44, int r45) {
        /*
            Method dump skipped, instruction units count: 659
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w83.<init>(java.lang.String, float[], cd4, float[], yv0, yv0, float, float, e14, int):void");
    }

    @Override // defpackage.b80
    public final float a(int i) {
        return this.f;
    }

    @Override // defpackage.b80
    public final float b(int i) {
        return this.e;
    }

    @Override // defpackage.b80
    public final boolean c() {
        return this.q;
    }

    @Override // defpackage.b80
    public final long d(float f, float f2, float f3) {
        double d = f;
        s83 s83Var = this.p;
        float fB = (float) s83Var.b(d);
        float fB2 = (float) s83Var.b(f2);
        float fB3 = (float) s83Var.b(f3);
        float[] fArr = this.i;
        if (fArr.length < 9) {
            return 0L;
        }
        return (((long) Float.floatToRawIntBits((fArr[6] * fB3) + ((fArr[3] * fB2) + (fArr[0] * fB)))) << 32) | (4294967295L & ((long) Float.floatToRawIntBits((fArr[7] * fB3) + (fArr[4] * fB2) + (fArr[1] * fB))));
    }

    @Override // defpackage.b80
    public final float e(float f, float f2, float f3) {
        double d = f;
        s83 s83Var = this.p;
        float fB = (float) s83Var.b(d);
        float fB2 = (float) s83Var.b(f2);
        float fB3 = (float) s83Var.b(f3);
        float[] fArr = this.i;
        return (fArr[8] * fB3) + (fArr[5] * fB2) + (fArr[2] * fB);
    }

    @Override // defpackage.b80
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || w83.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        w83 w83Var = (w83) obj;
        if (Float.compare(w83Var.e, this.e) != 0 || Float.compare(w83Var.f, this.f) != 0 || !nt1.g(this.d, w83Var.d) || !Arrays.equals(this.h, w83Var.h)) {
            return false;
        }
        e14 e14Var = w83Var.g;
        e14 e14Var2 = this.g;
        if (e14Var2 != null) {
            return nt1.g(e14Var2, e14Var);
        }
        if (e14Var == null) {
            return true;
        }
        if (nt1.g(this.k, w83Var.k)) {
            return nt1.g(this.n, w83Var.n);
        }
        return false;
    }

    @Override // defpackage.b80
    public final long f(float f, float f2, float f3, float f4, b80 b80Var) {
        float[] fArr = this.j;
        float f5 = (fArr[6] * f3) + (fArr[3] * f2) + (fArr[0] * f);
        float f6 = (fArr[7] * f3) + (fArr[4] * f2) + (fArr[1] * f);
        float f7 = (fArr[8] * f3) + (fArr[5] * f2) + (fArr[2] * f);
        s83 s83Var = this.m;
        return c75.a((float) s83Var.b(f5), (float) s83Var.b(f6), (float) s83Var.b(f7), f4, b80Var);
    }

    @Override // defpackage.b80
    public final int hashCode() {
        int iHashCode = (Arrays.hashCode(this.h) + ((this.d.hashCode() + (super.hashCode() * 31)) * 31)) * 31;
        float f = this.e;
        int iFloatToIntBits = (iHashCode + (f == 0.0f ? 0 : Float.floatToIntBits(f))) * 31;
        float f2 = this.f;
        int iFloatToIntBits2 = (iFloatToIntBits + (f2 == 0.0f ? 0 : Float.floatToIntBits(f2))) * 31;
        e14 e14Var = this.g;
        int iHashCode2 = iFloatToIntBits2 + (e14Var != null ? e14Var.hashCode() : 0);
        if (e14Var != null) {
            return iHashCode2;
        }
        return this.n.hashCode() + ((this.k.hashCode() + (iHashCode2 * 31)) * 31);
    }

    public w83(String str, float[] fArr, cd4 cd4Var, final e14 e14Var, int i) {
        double d;
        yv0 yv0Var;
        yv0 yv0Var2;
        double d2 = e14Var.a;
        final int i2 = 0;
        final int i3 = 1;
        boolean z = d2 == -3.0d;
        double d3 = e14Var.g;
        double d4 = e14Var.f;
        if (z) {
            d = -3.0d;
            final int i4 = 4;
            yv0Var = new yv0() { // from class: u83
                @Override // defpackage.yv0
                public final double b(double d5) {
                    int i5 = i4;
                    e14 e14Var2 = e14Var;
                    switch (i5) {
                        case 0:
                            float[] fArr2 = e80.a;
                            return e80.a(e14Var2, d5);
                        case 1:
                            float[] fArr3 = e80.a;
                            return e80.c(e14Var2, d5);
                        case 2:
                            double d6 = e14Var2.b;
                            return d5 >= e14Var2.e ? Math.pow((d6 * d5) + e14Var2.c, e14Var2.a) : e14Var2.d * d5;
                        case 3:
                            double d7 = e14Var2.b;
                            double d8 = e14Var2.c;
                            double d9 = e14Var2.d;
                            return d5 >= e14Var2.e ? Math.pow((d7 * d5) + d8, e14Var2.a) + e14Var2.f : (d9 * d5) + e14Var2.g;
                        case 4:
                            float[] fArr4 = e80.a;
                            return e80.b(e14Var2, d5);
                        case 5:
                            float[] fArr5 = e80.a;
                            return e80.d(e14Var2, d5);
                        case 6:
                            double d10 = e14Var2.b;
                            double d11 = e14Var2.c;
                            double d12 = e14Var2.d;
                            return d5 >= e14Var2.e * d12 ? (Math.pow(d5, 1.0d / e14Var2.a) - d11) / d10 : d5 / d12;
                        default:
                            double d13 = e14Var2.b;
                            double d14 = e14Var2.c;
                            double d15 = e14Var2.d;
                            return d5 >= e14Var2.e * d15 ? (Math.pow(d5 - e14Var2.f, 1.0d / e14Var2.a) - d14) / d13 : (d5 - e14Var2.g) / d15;
                    }
                }
            };
        } else {
            d = -3.0d;
            if (d2 == -2.0d) {
                final int i5 = 5;
                yv0Var = new yv0() { // from class: u83
                    @Override // defpackage.yv0
                    public final double b(double d5) {
                        int i52 = i5;
                        e14 e14Var2 = e14Var;
                        switch (i52) {
                            case 0:
                                float[] fArr2 = e80.a;
                                return e80.a(e14Var2, d5);
                            case 1:
                                float[] fArr3 = e80.a;
                                return e80.c(e14Var2, d5);
                            case 2:
                                double d6 = e14Var2.b;
                                return d5 >= e14Var2.e ? Math.pow((d6 * d5) + e14Var2.c, e14Var2.a) : e14Var2.d * d5;
                            case 3:
                                double d7 = e14Var2.b;
                                double d8 = e14Var2.c;
                                double d9 = e14Var2.d;
                                return d5 >= e14Var2.e ? Math.pow((d7 * d5) + d8, e14Var2.a) + e14Var2.f : (d9 * d5) + e14Var2.g;
                            case 4:
                                float[] fArr4 = e80.a;
                                return e80.b(e14Var2, d5);
                            case 5:
                                float[] fArr5 = e80.a;
                                return e80.d(e14Var2, d5);
                            case 6:
                                double d10 = e14Var2.b;
                                double d11 = e14Var2.c;
                                double d12 = e14Var2.d;
                                return d5 >= e14Var2.e * d12 ? (Math.pow(d5, 1.0d / e14Var2.a) - d11) / d10 : d5 / d12;
                            default:
                                double d13 = e14Var2.b;
                                double d14 = e14Var2.c;
                                double d15 = e14Var2.d;
                                return d5 >= e14Var2.e * d15 ? (Math.pow(d5 - e14Var2.f, 1.0d / e14Var2.a) - d14) / d13 : (d5 - e14Var2.g) / d15;
                        }
                    }
                };
            } else if (d4 == 0.0d && d3 == 0.0d) {
                final int i6 = 6;
                yv0Var = new yv0() { // from class: u83
                    @Override // defpackage.yv0
                    public final double b(double d5) {
                        int i52 = i6;
                        e14 e14Var2 = e14Var;
                        switch (i52) {
                            case 0:
                                float[] fArr2 = e80.a;
                                return e80.a(e14Var2, d5);
                            case 1:
                                float[] fArr3 = e80.a;
                                return e80.c(e14Var2, d5);
                            case 2:
                                double d6 = e14Var2.b;
                                return d5 >= e14Var2.e ? Math.pow((d6 * d5) + e14Var2.c, e14Var2.a) : e14Var2.d * d5;
                            case 3:
                                double d7 = e14Var2.b;
                                double d8 = e14Var2.c;
                                double d9 = e14Var2.d;
                                return d5 >= e14Var2.e ? Math.pow((d7 * d5) + d8, e14Var2.a) + e14Var2.f : (d9 * d5) + e14Var2.g;
                            case 4:
                                float[] fArr4 = e80.a;
                                return e80.b(e14Var2, d5);
                            case 5:
                                float[] fArr5 = e80.a;
                                return e80.d(e14Var2, d5);
                            case 6:
                                double d10 = e14Var2.b;
                                double d11 = e14Var2.c;
                                double d12 = e14Var2.d;
                                return d5 >= e14Var2.e * d12 ? (Math.pow(d5, 1.0d / e14Var2.a) - d11) / d10 : d5 / d12;
                            default:
                                double d13 = e14Var2.b;
                                double d14 = e14Var2.c;
                                double d15 = e14Var2.d;
                                return d5 >= e14Var2.e * d15 ? (Math.pow(d5 - e14Var2.f, 1.0d / e14Var2.a) - d14) / d13 : (d5 - e14Var2.g) / d15;
                        }
                    }
                };
            } else {
                final int i7 = 7;
                yv0Var = new yv0() { // from class: u83
                    @Override // defpackage.yv0
                    public final double b(double d5) {
                        int i52 = i7;
                        e14 e14Var2 = e14Var;
                        switch (i52) {
                            case 0:
                                float[] fArr2 = e80.a;
                                return e80.a(e14Var2, d5);
                            case 1:
                                float[] fArr3 = e80.a;
                                return e80.c(e14Var2, d5);
                            case 2:
                                double d6 = e14Var2.b;
                                return d5 >= e14Var2.e ? Math.pow((d6 * d5) + e14Var2.c, e14Var2.a) : e14Var2.d * d5;
                            case 3:
                                double d7 = e14Var2.b;
                                double d8 = e14Var2.c;
                                double d9 = e14Var2.d;
                                return d5 >= e14Var2.e ? Math.pow((d7 * d5) + d8, e14Var2.a) + e14Var2.f : (d9 * d5) + e14Var2.g;
                            case 4:
                                float[] fArr4 = e80.a;
                                return e80.b(e14Var2, d5);
                            case 5:
                                float[] fArr5 = e80.a;
                                return e80.d(e14Var2, d5);
                            case 6:
                                double d10 = e14Var2.b;
                                double d11 = e14Var2.c;
                                double d12 = e14Var2.d;
                                return d5 >= e14Var2.e * d12 ? (Math.pow(d5, 1.0d / e14Var2.a) - d11) / d10 : d5 / d12;
                            default:
                                double d13 = e14Var2.b;
                                double d14 = e14Var2.c;
                                double d15 = e14Var2.d;
                                return d5 >= e14Var2.e * d15 ? (Math.pow(d5 - e14Var2.f, 1.0d / e14Var2.a) - d14) / d13 : (d5 - e14Var2.g) / d15;
                        }
                    }
                };
            }
        }
        if (d2 == d) {
            yv0Var2 = new yv0() { // from class: u83
                @Override // defpackage.yv0
                public final double b(double d5) {
                    int i52 = i2;
                    e14 e14Var2 = e14Var;
                    switch (i52) {
                        case 0:
                            float[] fArr2 = e80.a;
                            return e80.a(e14Var2, d5);
                        case 1:
                            float[] fArr3 = e80.a;
                            return e80.c(e14Var2, d5);
                        case 2:
                            double d6 = e14Var2.b;
                            return d5 >= e14Var2.e ? Math.pow((d6 * d5) + e14Var2.c, e14Var2.a) : e14Var2.d * d5;
                        case 3:
                            double d7 = e14Var2.b;
                            double d8 = e14Var2.c;
                            double d9 = e14Var2.d;
                            return d5 >= e14Var2.e ? Math.pow((d7 * d5) + d8, e14Var2.a) + e14Var2.f : (d9 * d5) + e14Var2.g;
                        case 4:
                            float[] fArr4 = e80.a;
                            return e80.b(e14Var2, d5);
                        case 5:
                            float[] fArr5 = e80.a;
                            return e80.d(e14Var2, d5);
                        case 6:
                            double d10 = e14Var2.b;
                            double d11 = e14Var2.c;
                            double d12 = e14Var2.d;
                            return d5 >= e14Var2.e * d12 ? (Math.pow(d5, 1.0d / e14Var2.a) - d11) / d10 : d5 / d12;
                        default:
                            double d13 = e14Var2.b;
                            double d14 = e14Var2.c;
                            double d15 = e14Var2.d;
                            return d5 >= e14Var2.e * d15 ? (Math.pow(d5 - e14Var2.f, 1.0d / e14Var2.a) - d14) / d13 : (d5 - e14Var2.g) / d15;
                    }
                }
            };
        } else if (d2 == -2.0d) {
            yv0Var2 = new yv0() { // from class: u83
                @Override // defpackage.yv0
                public final double b(double d5) {
                    int i52 = i3;
                    e14 e14Var2 = e14Var;
                    switch (i52) {
                        case 0:
                            float[] fArr2 = e80.a;
                            return e80.a(e14Var2, d5);
                        case 1:
                            float[] fArr3 = e80.a;
                            return e80.c(e14Var2, d5);
                        case 2:
                            double d6 = e14Var2.b;
                            return d5 >= e14Var2.e ? Math.pow((d6 * d5) + e14Var2.c, e14Var2.a) : e14Var2.d * d5;
                        case 3:
                            double d7 = e14Var2.b;
                            double d8 = e14Var2.c;
                            double d9 = e14Var2.d;
                            return d5 >= e14Var2.e ? Math.pow((d7 * d5) + d8, e14Var2.a) + e14Var2.f : (d9 * d5) + e14Var2.g;
                        case 4:
                            float[] fArr4 = e80.a;
                            return e80.b(e14Var2, d5);
                        case 5:
                            float[] fArr5 = e80.a;
                            return e80.d(e14Var2, d5);
                        case 6:
                            double d10 = e14Var2.b;
                            double d11 = e14Var2.c;
                            double d12 = e14Var2.d;
                            return d5 >= e14Var2.e * d12 ? (Math.pow(d5, 1.0d / e14Var2.a) - d11) / d10 : d5 / d12;
                        default:
                            double d13 = e14Var2.b;
                            double d14 = e14Var2.c;
                            double d15 = e14Var2.d;
                            return d5 >= e14Var2.e * d15 ? (Math.pow(d5 - e14Var2.f, 1.0d / e14Var2.a) - d14) / d13 : (d5 - e14Var2.g) / d15;
                    }
                }
            };
        } else if (d4 == 0.0d && d3 == 0.0d) {
            final int i8 = 2;
            yv0Var2 = new yv0() { // from class: u83
                @Override // defpackage.yv0
                public final double b(double d5) {
                    int i52 = i8;
                    e14 e14Var2 = e14Var;
                    switch (i52) {
                        case 0:
                            float[] fArr2 = e80.a;
                            return e80.a(e14Var2, d5);
                        case 1:
                            float[] fArr3 = e80.a;
                            return e80.c(e14Var2, d5);
                        case 2:
                            double d6 = e14Var2.b;
                            return d5 >= e14Var2.e ? Math.pow((d6 * d5) + e14Var2.c, e14Var2.a) : e14Var2.d * d5;
                        case 3:
                            double d7 = e14Var2.b;
                            double d8 = e14Var2.c;
                            double d9 = e14Var2.d;
                            return d5 >= e14Var2.e ? Math.pow((d7 * d5) + d8, e14Var2.a) + e14Var2.f : (d9 * d5) + e14Var2.g;
                        case 4:
                            float[] fArr4 = e80.a;
                            return e80.b(e14Var2, d5);
                        case 5:
                            float[] fArr5 = e80.a;
                            return e80.d(e14Var2, d5);
                        case 6:
                            double d10 = e14Var2.b;
                            double d11 = e14Var2.c;
                            double d12 = e14Var2.d;
                            return d5 >= e14Var2.e * d12 ? (Math.pow(d5, 1.0d / e14Var2.a) - d11) / d10 : d5 / d12;
                        default:
                            double d13 = e14Var2.b;
                            double d14 = e14Var2.c;
                            double d15 = e14Var2.d;
                            return d5 >= e14Var2.e * d15 ? (Math.pow(d5 - e14Var2.f, 1.0d / e14Var2.a) - d14) / d13 : (d5 - e14Var2.g) / d15;
                    }
                }
            };
        } else {
            final int i9 = 3;
            yv0Var2 = new yv0() { // from class: u83
                @Override // defpackage.yv0
                public final double b(double d5) {
                    int i52 = i9;
                    e14 e14Var2 = e14Var;
                    switch (i52) {
                        case 0:
                            float[] fArr2 = e80.a;
                            return e80.a(e14Var2, d5);
                        case 1:
                            float[] fArr3 = e80.a;
                            return e80.c(e14Var2, d5);
                        case 2:
                            double d6 = e14Var2.b;
                            return d5 >= e14Var2.e ? Math.pow((d6 * d5) + e14Var2.c, e14Var2.a) : e14Var2.d * d5;
                        case 3:
                            double d7 = e14Var2.b;
                            double d8 = e14Var2.c;
                            double d9 = e14Var2.d;
                            return d5 >= e14Var2.e ? Math.pow((d7 * d5) + d8, e14Var2.a) + e14Var2.f : (d9 * d5) + e14Var2.g;
                        case 4:
                            float[] fArr4 = e80.a;
                            return e80.b(e14Var2, d5);
                        case 5:
                            float[] fArr5 = e80.a;
                            return e80.d(e14Var2, d5);
                        case 6:
                            double d10 = e14Var2.b;
                            double d11 = e14Var2.c;
                            double d12 = e14Var2.d;
                            return d5 >= e14Var2.e * d12 ? (Math.pow(d5, 1.0d / e14Var2.a) - d11) / d10 : d5 / d12;
                        default:
                            double d13 = e14Var2.b;
                            double d14 = e14Var2.c;
                            double d15 = e14Var2.d;
                            return d5 >= e14Var2.e * d15 ? (Math.pow(d5 - e14Var2.f, 1.0d / e14Var2.a) - d14) / d13 : (d5 - e14Var2.g) / d15;
                    }
                }
            };
        }
        this(str, fArr, cd4Var, null, yv0Var, yv0Var2, 0.0f, 1.0f, e14Var, i);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public w83(String str, float[] fArr, cd4 cd4Var, final double d, float f, float f2, int i) {
        yv0 yv0Var;
        yv0 yv0Var2 = r;
        if (d == 1.0d) {
            yv0Var = yv0Var2;
        } else {
            final int i2 = 0;
            yv0Var = new yv0() { // from class: t83
                @Override // defpackage.yv0
                public final double b(double d2) {
                    switch (i2) {
                        case 0:
                            if (d2 < 0.0d) {
                                d2 = 0.0d;
                            }
                            return Math.pow(d2, 1.0d / d);
                        default:
                            if (d2 < 0.0d) {
                                d2 = 0.0d;
                            }
                            return Math.pow(d2, d);
                    }
                }
            };
        }
        if (d != 1.0d) {
            final int i3 = 1;
            yv0Var2 = new yv0() { // from class: t83
                @Override // defpackage.yv0
                public final double b(double d2) {
                    switch (i3) {
                        case 0:
                            if (d2 < 0.0d) {
                                d2 = 0.0d;
                            }
                            return Math.pow(d2, 1.0d / d);
                        default:
                            if (d2 < 0.0d) {
                                d2 = 0.0d;
                            }
                            return Math.pow(d2, d);
                    }
                }
            };
        }
        yv0 yv0Var3 = yv0Var2;
        this(str, fArr, cd4Var, null, yv0Var, yv0Var3, f, f2, new e14(d, 1.0d, 0.0d, 0.0d, 0.0d), i);
    }
}
