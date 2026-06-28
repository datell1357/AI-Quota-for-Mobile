package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h4 implements ne1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ h4(ei2 ei2Var, yh2 yh2Var, boolean z) {
        this.n = 21;
        this.o = ei2Var;
        this.p = yh2Var;
    }

    private final Object c() {
        int i;
        long jA;
        jl1[] jl1VarArr;
        bl1 bl1Var = (bl1) this.o;
        lk3 lk3Var = (lk3) this.p;
        w33 w33Var = new w33();
        cl1 cl1Var = (cl1) bl1Var.p;
        synchronized (cl1Var.J) {
            synchronized (cl1Var) {
                try {
                    lk3 lk3Var2 = cl1Var.E;
                    lk3 lk3Var3 = new lk3();
                    lk3Var2.getClass();
                    for (int i2 = 0; i2 < 10; i2++) {
                        if (((1 << i2) & lk3Var2.a) != 0) {
                            lk3Var3.b(i2, lk3Var2.b[i2]);
                        }
                    }
                    for (int i3 = 0; i3 < 10; i3++) {
                        if (((1 << i3) & lk3Var.a) != 0) {
                            lk3Var3.b(i3, lk3Var.b[i3]);
                        }
                    }
                    w33Var.n = lk3Var3;
                    jA = ((long) lk3Var3.a()) - ((long) lk3Var2.a());
                    jl1VarArr = (jA == 0 || cl1Var.o.isEmpty()) ? null : (jl1[]) cl1Var.o.values().toArray(new jl1[0]);
                    lk3 lk3Var4 = (lk3) w33Var.n;
                    lk3Var4.getClass();
                    cl1Var.E = lk3Var4;
                    sw3.b(cl1Var.w, cl1Var.p + " onSettings", new h4(16, cl1Var, w33Var));
                } catch (Throwable th) {
                    throw th;
                }
            }
            try {
                cl1Var.J.b((lk3) w33Var.n);
            } catch (IOException e) {
                d21 d21Var = d21.q;
                cl1Var.b(d21Var, d21Var, e);
            }
        }
        if (jl1VarArr != null) {
            for (jl1 jl1Var : jl1VarArr) {
                synchronized (jl1Var) {
                    jl1Var.r += jA;
                    if (jA > 0) {
                        jl1Var.notifyAll();
                    }
                }
            }
        }
        return t64.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:183:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x043b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a9  */
    @Override // defpackage.ne1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a() {
        /*
            Method dump skipped, instruction units count: 1364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.h4.a():java.lang.Object");
    }

    public /* synthetic */ h4(int i, Object obj, Object obj2, boolean z) {
        this.n = i;
        this.p = obj;
        this.o = obj2;
    }

    public /* synthetic */ h4(int i, Object obj, Object obj2) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
    }
}
