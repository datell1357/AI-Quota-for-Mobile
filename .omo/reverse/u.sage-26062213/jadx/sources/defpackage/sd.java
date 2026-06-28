package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class sd {
    public static final yq3 a = tv4.Q(0.0f, 0.0f, null, 7);

    static {
        Map map = ic4.a;
        Float.floatToRawIntBits(1.0f);
        Float.floatToRawIntBits(1.0f);
        Float.floatToRawIntBits(1.0f);
        Float.floatToRawIntBits(1.0f);
    }

    public static final tr3 a(float f, z51 z51Var, String str, ag1 ag1Var, int i, int i2) {
        if ((i2 & 8) != 0) {
            str = "FloatAnimation";
        }
        String str2 = str;
        if (z51Var == a) {
            ag1Var.W(1144115775);
            boolean zC = ag1Var.c(0.01f);
            Object objK = ag1Var.K();
            if (zC || objK == rb0.a) {
                objK = tv4.Q(0.0f, 0.0f, Float.valueOf(0.01f), 3);
                ag1Var.g0(objK);
            }
            z51Var = (yq3) objK;
            ag1Var.p(false);
        } else {
            ag1Var.W(1144225701);
            ag1Var.p(false);
        }
        return b(Float.valueOf(f), k30.m, z51Var, null, str2, ag1Var, (i << 3) & 57344, 0);
    }

    public static final tr3 b(Object obj, e34 e34Var, ve veVar, Float f, String str, ag1 ag1Var, int i, int i2) {
        if ((i2 & 8) != 0) {
            f = null;
        }
        Object objK = ag1Var.K();
        Object obj2 = rb0.a;
        if (objK == obj2) {
            objK = ca.A(null);
            ag1Var.g0(objK);
        }
        pg2 pg2Var = (pg2) objK;
        Object objK2 = ag1Var.K();
        if (objK2 == obj2) {
            objK2 = new pd(obj, e34Var, f);
            ag1Var.g0(objK2);
        }
        pd pdVar = (pd) objK2;
        Object objE = ca.E(null, ag1Var);
        if (f != null && (veVar instanceof yq3)) {
            yq3 yq3Var = (yq3) veVar;
            if (!nt1.g(yq3Var.c, f)) {
                veVar = new yq3(yq3Var.a, yq3Var.b, f);
            }
        }
        Object objE2 = ca.E(veVar, ag1Var);
        Object objK3 = ag1Var.K();
        if (objK3 == obj2) {
            objK3 = ix.c(-1, 6, null);
            ag1Var.g0(objK3);
        }
        Object obj3 = (n30) objK3;
        boolean zH = ag1Var.h(obj3) | ag1Var.h(obj);
        Object objK4 = ag1Var.K();
        if (zH || objK4 == obj2) {
            objK4 = new h4(1, obj3, obj);
            ag1Var.g0(objK4);
        }
        zf5.g((ne1) objK4, ag1Var);
        boolean zH2 = ag1Var.h(obj3) | ag1Var.h(pdVar) | ag1Var.f(objE2) | ag1Var.f(objE);
        Object objK5 = ag1Var.K();
        if (zH2 || objK5 == obj2) {
            Object rdVar = new rd(obj3, pdVar, objE2, objE, null, 0);
            ag1Var.g0(rdVar);
            objK5 = rdVar;
        }
        zf5.c((df1) objK5, ag1Var, obj3);
        tr3 tr3Var = (tr3) pg2Var.getValue();
        return tr3Var == null ? pdVar.c : tr3Var;
    }
}
