package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class qc0 {
    public static final sg0 a = new sg0("CLOSED", 3);

    public static final Object a(rg3 rg3Var, long j, df1 df1Var) {
        while (true) {
            if (rg3Var.e >= j && !rg3Var.f()) {
                return rg3Var;
            }
            Object objD = rg3Var.d();
            sg0 sg0Var = a;
            if (objD == sg0Var) {
                return sg0Var;
            }
            rg3 rg3Var2 = (rg3) ((rc0) objD);
            if (rg3Var2 == null) {
                rg3Var2 = (rg3) df1Var.f(Long.valueOf(rg3Var.e + 1), rg3Var);
                if (rg3Var.i(rg3Var2)) {
                    if (rg3Var.f()) {
                        rg3Var.h();
                    }
                }
            }
            rg3Var = rg3Var2;
        }
    }
}
