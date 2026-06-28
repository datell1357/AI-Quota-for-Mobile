package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fo1 extends gs2 {
    public final ao1 s;

    public fo1(ao1 ao1Var) {
        this.s = ao1Var;
    }

    @Override // defpackage.gs2
    public final long h() {
        ao1 ao1Var = this.s;
        int iB = ao1Var.b();
        float f = iB > 0 ? iB : Float.NaN;
        int iA = ao1Var.a();
        return (((long) Float.floatToRawIntBits(iA > 0 ? iA : Float.NaN)) & 4294967295L) | (((long) Float.floatToRawIntBits(f)) << 32);
    }

    @Override // defpackage.gs2
    public final void i(zy1 zy1Var) {
        x20 x20Var = zy1Var.n;
        ao1 ao1Var = this.s;
        int iB = ao1Var.b();
        float fIntBitsToFloat = iB > 0 ? Float.intBitsToFloat((int) (x20Var.d() >> 32)) / iB : 1.0f;
        int iA = ao1Var.a();
        float fIntBitsToFloat2 = iA > 0 ? Float.intBitsToFloat((int) (x20Var.d() & 4294967295L)) / iA : 1.0f;
        eh ehVar = x20Var.o;
        long jZ = ehVar.z();
        ehVar.u().j();
        try {
            ((dh1) ehVar.o).s(fIntBitsToFloat, fIntBitsToFloat2, 0L);
            ao1Var.d(z8.a(x20Var.o.u()));
        } finally {
            ehVar.u().h();
            ehVar.K(jZ);
        }
    }
}
