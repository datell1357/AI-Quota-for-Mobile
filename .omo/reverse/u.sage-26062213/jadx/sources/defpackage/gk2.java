package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class gk2 {
    public ck2 a;
    public boolean b;

    public final void a() {
        ck2 ck2Var = this.a;
        if (ck2Var == null) {
            k21.n("This input is not added to any dispatcher.");
            return;
        }
        if (!this.b) {
            ck2Var.e(this, null);
        }
        ck2Var.d();
        if (ck2Var.b) {
            hk2 hk2Var = ck2Var.c;
            r6 r6Var = ck2Var.a;
            hk2Var.getClass();
            if (equals(hk2Var.h) && -1 == hk2Var.g) {
                ek2 ek2VarC = hk2Var.f;
                if (ek2VarC == null) {
                    ek2VarC = hk2Var.c(-1);
                }
                hk2Var.f = null;
                hk2Var.g = 0;
                hk2Var.h = null;
                if (ek2VarC != null) {
                    ek2VarC.c();
                } else if (r6Var != null) {
                    ((uo2) r6Var.o).a.run();
                }
                wr3 wr3Var = hk2Var.a;
                ik2 ik2Var = ik2.z;
                wr3Var.getClass();
                wr3Var.i(null, ik2Var);
            }
        }
        this.b = false;
    }

    public void b(boolean z) {
    }
}
