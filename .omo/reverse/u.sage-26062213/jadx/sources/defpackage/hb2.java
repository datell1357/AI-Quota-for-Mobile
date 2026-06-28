package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hb2 {
    public final cl0 a;
    public final float b;
    public float c;
    public float d;
    public final /* synthetic */ ib2 e;

    public hb2(ib2 ib2Var, cl0 cl0Var, float f, float f2) {
        cl0Var.getClass();
        this.e = ib2Var;
        this.a = cl0Var;
        if (f2 < f) {
            k21.f("endOutlineProgress is expected to be equal or greater than startOutlineProgress");
            throw null;
        }
        this.b = ib2Var.n.c(cl0Var);
        this.c = f;
        this.d = f2;
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [kd] */
    public final js2 a(float f) {
        float fJ = ix.j(f, this.c, this.d);
        float f2 = this.d;
        float f3 = this.c;
        float f4 = (fJ - f3) / (f2 - f3);
        ib2 ib2Var = this.e;
        final ld ldVar = ib2Var.n;
        final float f5 = f4 * this.b;
        ldVar.getClass();
        final cl0 cl0Var = this.a;
        cl0Var.getClass();
        float[] fArr = cl0Var.a;
        final float fA = k94.a(fArr[0] - ldVar.a, fArr[1] - ldVar.b);
        ?? r5 = new Object() { // from class: kd
            public final float a(float f6) {
                cl0 cl0Var2 = cl0Var;
                cl0Var2.getClass();
                ld ldVar2 = ldVar;
                ldVar2.getClass();
                long jC = cl0Var2.c(f6);
                return Math.abs(k94.d(k94.a(ix.x(jC) - ldVar2.a, ix.y(jC) - ldVar2.b) - fA, k94.c) - f5);
            }
        };
        float f6 = 0.0f;
        float f7 = 1.0f;
        while (f7 - f6 > 1.0E-5f) {
            float f8 = ((2.0f * f6) + f7) / 3.0f;
            float f9 = ((2.0f * f7) + f6) / 3.0f;
            if (r5.a(f8) < r5.a(f9)) {
                f7 = f9;
            } else {
                f6 = f8;
            }
        }
        float f10 = (f6 + f7) / 2.0f;
        if (0.0f > f10 || f10 > 1.0f) {
            k21.f("Cubic cut point is expected to be between 0 and 1");
            return null;
        }
        js2 js2VarD = cl0Var.d(f10);
        return new js2(new hb2(ib2Var, (cl0) js2VarD.n, this.c, fJ), new hb2(ib2Var, (cl0) js2VarD.o, fJ, this.d));
    }

    public final String toString() {
        return "MeasuredCubic(outlineProgress=[" + this.c + " .. " + this.d + "], size=" + this.b + ", cubic=" + this.a + ')';
    }
}
