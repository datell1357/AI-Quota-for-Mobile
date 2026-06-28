package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ta4 {
    public final boolean a;
    public final sa4 b;
    public final int c;
    public final jm0[] d;
    public int e;
    public final float[] f;
    public final float[] g;
    public final float[] h;

    public ta4(boolean z, sa4 sa4Var) {
        int i;
        this.a = z;
        this.b = sa4Var;
        if (z && sa4Var.equals(sa4.n)) {
            k21.n("Lsq2 not (yet) supported for differential axes");
            throw null;
        }
        int iOrdinal = sa4Var.ordinal();
        if (iOrdinal == 0) {
            i = 3;
        } else {
            if (iOrdinal != 1) {
                p61.x();
                throw null;
            }
            i = 2;
        }
        this.c = i;
        this.d = new jm0[20];
        this.f = new float[20];
        this.g = new float[20];
        this.h = new float[3];
    }

    public final void a(float f, long j) {
        int i = (this.e + 1) % 20;
        this.e = i;
        jm0[] jm0VarArr = this.d;
        jm0 jm0Var = jm0VarArr[i];
        if (jm0Var != null) {
            jm0Var.a = j;
            jm0Var.b = f;
        } else {
            jm0 jm0Var2 = new jm0();
            jm0Var2.a = j;
            jm0Var2.b = f;
            jm0VarArr[i] = jm0Var2;
        }
    }

    public final float b() {
        boolean z;
        sa4 sa4Var;
        float[] fArr;
        int i;
        float[] fArr2;
        int i2;
        float f;
        float f2;
        float fSignum;
        int i3 = this.e;
        jm0[] jm0VarArr = this.d;
        jm0 jm0Var = jm0VarArr[i3];
        if (jm0Var == null) {
            return 0.0f;
        }
        int i4 = 0;
        jm0 jm0Var2 = jm0Var;
        do {
            jm0 jm0Var3 = jm0VarArr[i3];
            z = this.a;
            sa4Var = this.b;
            float[] fArr3 = this.f;
            fArr = this.g;
            if (jm0Var3 == null) {
                i = i4;
                fArr2 = fArr3;
                i2 = 1;
                f = 0.0f;
            } else {
                long j = jm0Var.a;
                i = i4;
                f = 0.0f;
                long j2 = jm0Var3.a;
                float f3 = j - j2;
                fArr2 = fArr3;
                i2 = 1;
                float fAbs = Math.abs(j2 - jm0Var2.a);
                jm0Var2 = (sa4Var == sa4.n || z) ? jm0Var3 : jm0Var;
                if (f3 <= 100.0f && fAbs <= 40.0f) {
                    fArr2[i] = jm0Var3.b;
                    fArr[i] = -f3;
                    if (i3 == 0) {
                        i3 = 20;
                    }
                    i3--;
                    i4 = i + 1;
                }
            }
            i4 = i;
            break;
        } while (i4 < 20);
        if (i4 < this.c) {
            return f;
        }
        int iOrdinal = sa4Var.ordinal();
        if (iOrdinal == 0) {
            try {
                float[] fArr4 = this.h;
                n44.E0(fArr, fArr2, i4, fArr4);
                f2 = fArr4[1];
            } catch (IllegalArgumentException unused) {
                f2 = f;
            }
            fSignum = f2;
        } else {
            if (iOrdinal != i2) {
                p61.x();
                return f;
            }
            int i5 = i4 - i2;
            float f4 = fArr[i5];
            int i6 = i5;
            float f5 = f;
            while (i6 > 0) {
                int i7 = i6 - 1;
                float f6 = fArr[i7];
                if (f4 != f6) {
                    float f7 = (z ? -fArr2[i7] : fArr2[i6] - fArr2[i7]) / (f4 - f6);
                    float fAbs2 = (Math.abs(f7) * (f7 - (Math.signum(f5) * ((float) Math.sqrt(Math.abs(f5) * 2.0f))))) + f5;
                    if (i6 == i5) {
                        fAbs2 *= 0.5f;
                    }
                    f5 = fAbs2;
                }
                i6--;
                f4 = f6;
            }
            fSignum = Math.signum(f5) * ((float) Math.sqrt(Math.abs(f5) * 2.0f));
        }
        return fSignum * 1000.0f;
    }

    public final float c(float f) {
        if (f <= 0.0f) {
            ar1.b("maximumVelocity should be a positive value. You specified=" + f);
        }
        float fB = b();
        if (fB == 0.0f || Float.isNaN(fB)) {
            return 0.0f;
        }
        if (fB <= 0.0f) {
            float f2 = -f;
            if (fB < f2) {
                return f2;
            }
        } else if (fB > f) {
            return f;
        }
        return fB;
    }

    public /* synthetic */ ta4() {
        this(false, sa4.n);
    }

    public ta4(boolean z) {
        this(z, sa4.o);
    }
}
