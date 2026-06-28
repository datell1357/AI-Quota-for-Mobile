package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dl0 implements my0 {
    public final float n;
    public final float o;
    public final float p;
    public final float q;
    public final float r;
    public final float s;

    public dl0(float f, float f2, float f3, float f4) {
        int iK0;
        this.n = f;
        this.o = f2;
        this.p = f3;
        this.q = f4;
        if (!((Float.isNaN(f) || Float.isNaN(f2) || Float.isNaN(f3) || Float.isNaN(f4)) ? false : true)) {
            StringBuilder sbZ = di0.z("Parameters to CubicBezierEasing cannot be NaN. Actual parameters are: ", f, ", ", f2, ", ");
            sbZ.append(f3);
            sbZ.append(", ");
            sbZ.append(f4);
            sbZ.append(".");
            kx2.a(sbZ.toString());
        }
        float[] fArr = new float[5];
        float f5 = (f2 - 0.0f) * 3.0f;
        float f6 = (f4 - f2) * 3.0f;
        float f7 = (1.0f - f4) * 3.0f;
        double d = f5;
        double d2 = f6;
        double d3 = f7;
        double d4 = d2 * 2.0d;
        double d5 = (d - d4) + d3;
        if (d5 == 0.0d) {
            iK0 = d2 == d3 ? 0 : kt4.k0((float) ((d4 - d3) / (d4 - (d3 * 2.0d))), fArr, 0);
        } else {
            double d6 = -Math.sqrt((d2 * d2) - (d3 * d));
            double d7 = (-d) + d2;
            int iK02 = kt4.k0((float) ((-(d6 + d7)) / d5), fArr, 0);
            int iK03 = kt4.k0((float) ((d6 - d7) / d5), fArr, iK02) + iK02;
            if (iK03 > 1) {
                float f8 = fArr[0];
                float f9 = fArr[1];
                if (f8 > f9) {
                    fArr[0] = f9;
                    fArr[1] = f8;
                } else if (f8 == f9) {
                    iK0 = iK03 - 1;
                }
                iK0 = iK03;
            } else {
                iK0 = iK03;
            }
        }
        float f10 = (f6 - f5) * 2.0f;
        int iK04 = kt4.k0((-f10) / (((f7 - f6) * 2.0f) - f10), fArr, iK0) + iK0;
        float fMin = Math.min(0.0f, 1.0f);
        float fMax = Math.max(0.0f, 1.0f);
        for (int i = 0; i < iK04; i++) {
            float f11 = fArr[i];
            float f12 = (((((((((f2 - f4) * 3.0f) + 1.0f) - 0.0f) * f11) + (((f4 - (f2 * 2.0f)) + 0.0f) * 3.0f)) * f11) + f5) * f11) + 0.0f;
            fMin = Math.min(fMin, f12);
            fMax = Math.max(fMax, f12);
        }
        long jA = v71.a(fMin, fMax);
        this.r = Float.intBitsToFloat((int) (jA >> 32));
        this.s = Float.intBitsToFloat((int) (jA & 4294967295L));
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0092 A[PHI: r3
  0x0092: PHI (r3v27 float) = (r3v5 float), (r3v16 float), (r3v21 float), (r3v31 float), (r3v36 float) binds: [B:128:0x0236, B:117:0x0206, B:92:0x01bb, B:47:0x00e5, B:22:0x008e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0162 A[PHI: r12
  0x0162: PHI (r12v41 float) = (r12v25 float), (r12v36 float) binds: [B:68:0x0160, B:81:0x0191] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.my0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float a(float r27) {
        /*
            Method dump skipped, instruction units count: 645
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dl0.a(float):float");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof dl0)) {
            return false;
        }
        dl0 dl0Var = (dl0) obj;
        return this.n == dl0Var.n && this.o == dl0Var.o && this.p == dl0Var.p && this.q == dl0Var.q;
    }

    public final int hashCode() {
        return Float.hashCode(this.q) + di0.l(this.p, di0.l(this.o, Float.hashCode(this.n) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbZ = di0.z("CubicBezierEasing(a=", this.n, ", b=", this.o, ", c=");
        sbZ.append(this.p);
        sbZ.append(", d=");
        sbZ.append(this.q);
        sbZ.append(")");
        return sbZ.toString();
    }
}
