package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class mt3 {
    public static final pr3 a = new pr3(1);
    public static final Object b = new Object();

    public static final void a(nd2 nd2Var, df1 df1Var, ag1 ag1Var, int i) {
        ag1Var.X(-1298353104);
        int i2 = i | 6 | (ag1Var.h(df1Var) ? 32 : 16);
        if (ag1Var.N(i2 & 1, (i2 & 19) != 18)) {
            Object objK = ag1Var.K();
            if (objK == rb0.a) {
                objK = new pt3(mj1.b0);
                ag1Var.g0(objK);
            }
            kd2 kd2Var = kd2.b;
            b((pt3) objK, kd2Var, df1Var, ag1Var, (i2 << 3) & 1008);
            nd2Var = kd2Var;
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ga(nd2Var, df1Var, i, 4);
        }
    }

    public static final void b(pt3 pt3Var, nd2 nd2Var, df1 df1Var, ag1 ag1Var, int i) {
        int i2;
        ag1Var.X(-511989831);
        if ((i & 6) == 0) {
            i2 = (ag1Var.h(pt3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.f(nd2Var) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= ag1Var.h(df1Var) ? 256 : 128;
        }
        if (ag1Var.N(i2 & 1, (i2 & 147) != 146)) {
            int iHashCode = Long.hashCode(ag1Var.T);
            yf1 yf1VarJ = dm0.J(ag1Var);
            nd2 nd2VarH = is0.H(ag1Var, nd2Var);
            hu2 hu2VarL = ag1Var.l();
            ic0 ic0Var = ic0.A;
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ic0Var);
            } else {
                ag1Var.j0();
            }
            ht4.D(pt3Var.c, ag1Var, pt3Var);
            ht4.D(pt3Var.d, ag1Var, yf1VarJ);
            ht4.D(pt3Var.e, ag1Var, df1Var);
            lb0.c.getClass();
            ht4.D(kb0.e, ag1Var, hu2VarL);
            ht4.y(ag1Var, kb0.h);
            ht4.D(kb0.d, ag1Var, nd2VarH);
            ht4.D(kb0.g, ag1Var, Integer.valueOf(iHashCode));
            ag1Var.p(true);
            if (ag1Var.z()) {
                ag1Var.W(-1259187287);
                ag1Var.p(false);
            } else {
                ag1Var.W(-1259245908);
                boolean zH = ag1Var.h(pt3Var);
                Object objK = ag1Var.K();
                if (zH || objK == rb0.a) {
                    objK = new je(12, pt3Var);
                    ag1Var.g0(objK);
                }
                zf5.g((ne1) objK, ag1Var);
                ag1Var.p(false);
            }
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new lt3(pt3Var, nd2Var, df1Var, i);
        }
    }
}
