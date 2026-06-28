package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l82 extends cv2 {
    public final /* synthetic */ int o;
    public final Object p;

    public /* synthetic */ l82(int i, Object obj) {
        this.o = i;
        this.p = obj;
    }

    @Override // defpackage.as0
    public final float b() {
        int i = this.o;
        Object obj = this.p;
        switch (i) {
            case 0:
                return ((k82) obj).b();
            default:
                return ((q9) obj).getDensity().b();
        }
    }

    @Override // defpackage.cv2
    public float c(ek1 ek1Var) {
        pe1 pe1Var;
        int iA0;
        ur2 snapshotObserver;
        int iA02;
        switch (this.o) {
            case 0:
                df1 df1Var = ek1Var.a;
                if (df1Var != null) {
                    return ((Number) df1Var.f(this, Float.valueOf(Float.NaN))).floatValue();
                }
                k82 k82Var = (k82) this.p;
                if (k82Var.B) {
                    return Float.NaN;
                }
                w33 w33Var = new w33();
                w33Var.n = k82Var;
                while (true) {
                    gg ggVar = ((k82) w33Var.n).D;
                    float f = (ggVar == null || (iA02 = ji.a0((ek1[]) ggVar.b, ek1Var)) < 0) ? Float.NaN : ((float[]) ggVar.c)[iA02];
                    boolean zIsNaN = Float.isNaN(f);
                    Object obj = w33Var.n;
                    if (!zIsNaN) {
                        ((k82) obj).j0(k82Var.u0(), ek1Var);
                        return ek1Var.a(f, ((k82) w33Var.n).o0(), k82Var.o0());
                    }
                    k82 k82Var2 = (k82) obj;
                    df1 df1Var2 = k82Var2.f162u;
                    if (df1Var2 != null && (pe1Var = k82Var2.v) != null && ((Boolean) pe1Var.k(ek1Var)).booleanValue()) {
                        k82 k82Var3 = (k82) w33Var.n;
                        kg2 kg2Var = k82Var3.x;
                        if (kg2Var == null) {
                            long[] jArr = td3.a;
                            kg2Var = new kg2();
                            k82Var3.x = kg2Var;
                        }
                        Object objG = kg2Var.g(ek1Var);
                        if (objG == null) {
                            objG = new fv2(k82Var3.v0(), k82Var3, ek1Var);
                            kg2Var.m(ek1Var, objG);
                        }
                        fv2 fv2Var = (fv2) objG;
                        fv2Var.n = k82Var3.v0();
                        sr2 sr2Var = k82Var.u0().A;
                        if (sr2Var != null && (snapshotObserver = ((q9) sr2Var).getSnapshotObserver()) != null) {
                            snapshotObserver.a.c(fv2Var, l9.Q, new h82(df1Var2, w33Var, ek1Var, 0));
                        }
                        ((k82) w33Var.n).j0(k82Var.u0(), ek1Var);
                        gg ggVar2 = ((k82) w33Var.n).D;
                        float f2 = (ggVar2 == null || (iA0 = ji.a0((ek1[]) ggVar2.b, ek1Var)) < 0) ? Float.NaN : ((float[]) ggVar2.c)[iA0];
                        if (!Float.isNaN(f2)) {
                            return ek1Var.a(f2, ((k82) w33Var.n).o0(), k82Var.o0());
                        }
                    }
                    k82 k82VarW0 = ((k82) w33Var.n).w0();
                    if (k82VarW0 == null) {
                        ((k82) w33Var.n).j0(k82Var.u0(), ek1Var);
                        return Float.NaN;
                    }
                    w33Var.n = k82VarW0;
                }
                break;
            default:
                return super.c(ek1Var);
        }
    }

    @Override // defpackage.cv2
    public final hy1 e() {
        int i = this.o;
        Object obj = this.p;
        switch (i) {
            case 0:
                return ((k82) obj).getLayoutDirection();
            default:
                return ((q9) obj).getLayoutDirection();
        }
    }

    @Override // defpackage.cv2
    public final int g() {
        int i = this.o;
        Object obj = this.p;
        switch (i) {
            case 0:
                return ((k82) obj).a0();
            default:
                return ((q9) obj).getRoot().T.p.n;
        }
    }

    @Override // defpackage.as0
    public final float k() {
        int i = this.o;
        Object obj = this.p;
        switch (i) {
            case 0:
                return ((k82) obj).k();
            default:
                return ((q9) obj).getDensity().k();
        }
    }
}
