package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j14 {
    public final e34 a;
    public final ws2 b = ca.A(null);
    public final /* synthetic */ n14 c;

    public j14(n14 n14Var, e34 e34Var, String str) {
        this.c = n14Var;
        this.a = e34Var;
    }

    public final i14 a(pe1 pe1Var, Object obj, bf bfVar, pe1 pe1Var2) {
        ws2 ws2Var = this.b;
        i14 i14Var = (i14) ws2Var.getValue();
        n14 n14Var = this.c;
        if (i14Var == null) {
            Object objK = pe1Var2.k(n14Var.a.l());
            Object objK2 = pe1Var2.k(n14Var.a.l());
            e34 e34Var = this.a;
            bf bfVar2 = (bf) e34Var.a.k(objK2);
            bfVar2.d();
            m14 m14Var = new m14(n14Var, objK, bfVar2, e34Var);
            i14Var = new i14(this, m14Var, pe1Var, pe1Var2);
            ws2Var.setValue(i14Var);
            n14Var.j.add(m14Var);
        }
        i14Var.p = pe1Var2;
        i14Var.o = pe1Var;
        i14Var.a(n14Var.f(), obj, bfVar);
        return i14Var;
    }
}
