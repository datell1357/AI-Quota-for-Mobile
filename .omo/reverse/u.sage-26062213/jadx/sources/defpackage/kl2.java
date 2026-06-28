package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kl2 implements y41 {
    public final nv3 a;
    public final nv3 b;
    public final xh1 c;
    public final nv3 d;

    public kl2(t52 t52Var) {
        t52 t52Var2 = new t52(12);
        jl2 jl2Var = jl2.f153u;
        t52 t52Var3 = new t52(13);
        this.a = new nv3(t52Var);
        this.b = dm0.D(t52Var2);
        xh1 xh1Var = new xh1();
        xh1Var.n = jl2Var;
        xh1Var.o = bx3.p;
        this.c = xh1Var;
        this.d = dm0.D(t52Var3);
    }

    @Override // defpackage.y41
    public final z41 a(Object obj, er2 er2Var, o23 o23Var) {
        a84 a84Var = (a84) obj;
        if (!nt1.g(a84Var.c, "http") && !nt1.g(a84Var.c, "https")) {
            return null;
        }
        String str = a84Var.a;
        nv3 nv3Var = this.a;
        nv3 nv3Var2 = new nv3(new cc(22, o23Var));
        nv3 nv3Var3 = this.b;
        xh1 xh1Var = this.c;
        Context context = er2Var.a;
        Object obj2 = xh1Var.o;
        bx3 bx3Var = bx3.p;
        if (obj2 == bx3Var) {
            synchronized (xh1Var) {
                obj2 = xh1Var.o;
                if (obj2 == bx3Var) {
                    pe1 pe1Var = (pe1) xh1Var.n;
                    pe1Var.getClass();
                    Object objK = pe1Var.k(context);
                    xh1Var.o = objK;
                    xh1Var.n = null;
                    obj2 = objK;
                }
            }
        }
        return new ol2(str, er2Var, nv3Var, nv3Var2, nv3Var3, new tq1(obj2), this.d);
    }
}
