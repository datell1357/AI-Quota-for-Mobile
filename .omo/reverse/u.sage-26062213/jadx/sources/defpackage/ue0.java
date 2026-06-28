package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ue0 extends ve0 {
    public final w83 e;
    public final w83 f;
    public final float[] g;

    public ue0(w83 w83Var, w83 w83Var2) {
        float[] fArrP;
        super(w83Var2, w83Var, w83Var2, null);
        this.e = w83Var;
        this.f = w83Var2;
        float[] fArr = b7.c.b;
        cd4 cd4Var = w83Var.d;
        float[] fArr2 = w83Var.i;
        cd4 cd4Var2 = w83Var2.d;
        float[] fArr3 = w83Var2.j;
        if (zf5.v(cd4Var, cd4Var2)) {
            fArrP = zf5.P(fArr3, fArr2);
        } else {
            float[] fArrA = cd4Var.a();
            float[] fArrA2 = cd4Var2.a();
            cd4 cd4Var3 = fl4.r;
            fArrP = zf5.P(zf5.v(cd4Var2, cd4Var3) ? fArr3 : zf5.M(zf5.P(zf5.s(fArr, fArrA2, new float[]{0.964212f, 1.0f, 0.825188f}), w83Var2.i)), zf5.v(cd4Var, cd4Var3) ? fArr2 : zf5.P(zf5.s(fArr, fArrA, new float[]{0.964212f, 1.0f, 0.825188f}), fArr2));
        }
        this.g = fArrP;
    }

    @Override // defpackage.ve0
    public final long a(long j) {
        float fH = t70.h(j);
        float fG = t70.g(j);
        float fE = t70.e(j);
        float fD = t70.d(j);
        s83 s83Var = this.e.p;
        float fB = (float) s83Var.b(fH);
        float fB2 = (float) s83Var.b(fG);
        float fB3 = (float) s83Var.b(fE);
        float[] fArr = this.g;
        float f = (fArr[6] * fB3) + (fArr[3] * fB2) + (fArr[0] * fB);
        float f2 = (fArr[7] * fB3) + (fArr[4] * fB2) + (fArr[1] * fB);
        float f3 = (fArr[8] * fB3) + (fArr[5] * fB2) + (fArr[2] * fB);
        w83 w83Var = this.f;
        float fB4 = (float) w83Var.m.b(f);
        s83 s83Var2 = w83Var.m;
        return c75.a(fB4, (float) s83Var2.b(f2), (float) s83Var2.b(f3), fD, w83Var);
    }
}
