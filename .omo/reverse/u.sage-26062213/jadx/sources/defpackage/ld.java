package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ld {
    public final float a;
    public final float b;

    public ld(float f, as0 as0Var) {
        this.a = f;
        float fB = as0Var.b();
        float f2 = p71.a;
        this.b = fB * 386.0878f * 160.0f * 0.84f;
    }

    public o71 a(float f) {
        double dB = b(f);
        double d = p71.a;
        double d2 = d - 1.0d;
        return new o71(f, (float) (Math.exp((d / d2) * dB) * ((double) (this.a * this.b))), (long) (Math.exp(dB / d2) * 1000.0d));
    }

    public double b(float f) {
        float[] fArr = bb.a;
        return Math.log(((double) (Math.abs(f) * 0.35f)) / ((double) (this.a * this.b)));
    }

    public float c(cl0 cl0Var) {
        cl0Var.getClass();
        float fA = cl0Var.a();
        float f = this.a;
        float fB = cl0Var.b();
        float f2 = this.b;
        float fA2 = k94.a(fA - f, fB - f2);
        float[] fArr = cl0Var.a;
        float fA3 = fA2 - k94.a(fArr[0] - f, fArr[1] - f2);
        float f3 = k94.c;
        float fD = k94.d(fA3, f3);
        if (fD > f3 - 1.0E-4f) {
            return 0.0f;
        }
        return fD;
    }

    public ld(float f, float f2) {
        this.a = f;
        this.b = f2;
    }
}
