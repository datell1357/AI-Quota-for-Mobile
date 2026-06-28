package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class i80 {
    public static final k80 a = new k80(th.c, mj1.z);

    public static final k80 a(sh shVar, aw awVar, ag1 ag1Var, int i) {
        if (shVar.equals(th.c) && awVar.equals(mj1.z)) {
            ag1Var.W(-1446604504);
            ag1Var.p(false);
            return a;
        }
        ag1Var.W(-1446550657);
        boolean z = true;
        boolean z2 = (((i & 14) ^ 6) > 4 && ag1Var.f(shVar)) || (i & 6) == 4;
        if ((((i & 112) ^ 48) <= 32 || !ag1Var.f(awVar)) && (i & 48) != 32) {
            z = false;
        }
        boolean z3 = z2 | z;
        Object objK = ag1Var.K();
        if (z3 || objK == rb0.a) {
            objK = new k80(shVar, awVar);
            ag1Var.g0(objK);
        }
        k80 k80Var = (k80) objK;
        ag1Var.p(false);
        return k80Var;
    }
}
