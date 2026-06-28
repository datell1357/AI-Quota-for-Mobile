package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y02 {
    public final hb a = new hb();

    public y02(pe1 pe1Var) {
        pe1Var.k(this);
    }

    public final void a(int i, ih1 ih1Var, pe1 pe1Var, ka0 ka0Var) {
        eh ehVar = new eh(ih1Var, pe1Var, ka0Var, 18, false);
        hb hbVar = this.a;
        hbVar.getClass();
        if (i < 0) {
            dr1.a("size should be >=0");
        }
        if (i == 0) {
            return;
        }
        it1 it1Var = new it1(hbVar.b, i, ehVar);
        hbVar.b += i;
        ((ug2) hbVar.c).c(it1Var);
    }
}
