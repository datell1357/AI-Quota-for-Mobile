package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class qx {
    public static final kg2 a = c(true);
    public static final kg2 b = c(false);
    public static final oa c = oa.c;

    public static final void a(nd2 nd2Var, ag1 ag1Var, int i) {
        ag1Var.X(-211209833);
        int i2 = (ag1Var.f(nd2Var) ? 4 : 2) | i;
        if (ag1Var.N(i2 & 1, (i2 & 3) != 2)) {
            int iHashCode = Long.hashCode(ag1Var.T);
            nd2 nd2VarH = is0.H(ag1Var, nd2Var);
            hu2 hu2VarL = ag1Var.l();
            lb0.c.getClass();
            ic0 ic0Var = kb0.b;
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ic0Var);
            } else {
                ag1Var.j0();
            }
            ht4.D(kb0.f, ag1Var, c);
            ht4.D(kb0.e, ag1Var, hu2VarL);
            ht4.y(ag1Var, kb0.h);
            ht4.D(kb0.d, ag1Var, nd2VarH);
            ht4.D(kb0.g, ag1Var, Integer.valueOf(iHashCode));
            ag1Var.p(true);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new sp0(i, 3, nd2Var);
        }
    }

    public static final void b(cv2 cv2Var, dv2 dv2Var, ya2 ya2Var, hy1 hy1Var, int i, int i2, cw cwVar) {
        cw cwVar2;
        Object objI = ya2Var.i();
        px pxVar = objI instanceof px ? (px) objI : null;
        cv2.i(cv2Var, dv2Var, ((pxVar == null || (cwVar2 = pxVar.B) == null) ? cwVar : cwVar2).a((((long) dv2Var.n) << 32) | (((long) dv2Var.o) & 4294967295L), (((long) i) << 32) | (((long) i2) & 4294967295L), hy1Var));
    }

    public static final kg2 c(boolean z) {
        kg2 kg2Var = new kg2(9);
        cw cwVar = mj1.o;
        kg2Var.m(cwVar, new tx(cwVar, z));
        cw cwVar2 = mj1.p;
        kg2Var.m(cwVar2, new tx(cwVar2, z));
        cw cwVar3 = mj1.q;
        kg2Var.m(cwVar3, new tx(cwVar3, z));
        cw cwVar4 = mj1.r;
        kg2Var.m(cwVar4, new tx(cwVar4, z));
        cw cwVar5 = mj1.s;
        kg2Var.m(cwVar5, new tx(cwVar5, z));
        cw cwVar6 = mj1.t;
        kg2Var.m(cwVar6, new tx(cwVar6, z));
        cw cwVar7 = mj1.f211u;
        kg2Var.m(cwVar7, new tx(cwVar7, z));
        cw cwVar8 = mj1.v;
        kg2Var.m(cwVar8, new tx(cwVar8, z));
        cw cwVar9 = mj1.w;
        kg2Var.m(cwVar9, new tx(cwVar9, z));
        return kg2Var;
    }

    public static final db2 d(cw cwVar, boolean z) {
        db2 db2Var = (db2) (z ? a : b).g(cwVar);
        return db2Var == null ? new tx(cwVar, z) : db2Var;
    }
}
