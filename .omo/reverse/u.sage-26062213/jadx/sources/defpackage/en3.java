package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class en3 {
    public static final tr3 a(long j, yq3 yq3Var, ag1 ag1Var) {
        boolean zF = ag1Var.f(t70.f(j));
        Object objK = ag1Var.K();
        if (zF || objK == rb0.a) {
            e34 e34Var = new e34(l9.C, new c8(8, t70.f(j)));
            ag1Var.g0(e34Var);
            objK = e34Var;
        }
        return sd.b(new t70(j), (e34) objK, yq3Var, null, "ColorAnimation", ag1Var, 0, 8);
    }
}
