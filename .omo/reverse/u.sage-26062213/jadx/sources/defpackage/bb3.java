package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class bb3 {
    public static final cb3 a = new cb3(th.a, mj1.x);

    public static final cb3 a(qh qhVar, bw bwVar, ag1 ag1Var, int i) {
        if (nt1.g(qhVar, th.a) && bwVar.equals(mj1.x)) {
            ag1Var.W(-1073830487);
            ag1Var.p(false);
            return a;
        }
        ag1Var.W(-1073779616);
        boolean z = true;
        boolean z2 = (((i & 14) ^ 6) > 4 && ag1Var.f(qhVar)) || (i & 6) == 4;
        if ((((i & 112) ^ 48) <= 32 || !ag1Var.f(bwVar)) && (i & 48) != 32) {
            z = false;
        }
        boolean z3 = z2 | z;
        Object objK = ag1Var.K();
        if (z3 || objK == rb0.a) {
            objK = new cb3(qhVar, bwVar);
            ag1Var.g0(objK);
        }
        cb3 cb3Var = (cb3) objK;
        ag1Var.p(false);
        return cb3Var;
    }
}
