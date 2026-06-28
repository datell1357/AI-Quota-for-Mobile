package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class qg1 implements Cloneable {
    public final sg1 n;
    public sg1 o;

    public qg1(sg1 sg1Var) {
        this.n = sg1Var;
        if (sg1Var.g()) {
            k21.f("Default instance must be immutable.");
            throw null;
        }
        this.o = sg1Var.i();
    }

    public final sg1 a() {
        sg1 sg1VarB = b();
        sg1VarB.getClass();
        if (sg1.f(sg1VarB, true)) {
            return sg1VarB;
        }
        throw new r64();
    }

    public final sg1 b() {
        boolean zG = this.o.g();
        sg1 sg1Var = this.o;
        if (!zG) {
            return sg1Var;
        }
        sg1Var.getClass();
        zz2 zz2Var = zz2.c;
        zz2Var.getClass();
        zz2Var.a(sg1Var.getClass()).d(sg1Var);
        sg1Var.h();
        return this.o;
    }

    public final void c() {
        if (this.o.g()) {
            return;
        }
        sg1 sg1VarI = this.n.i();
        sg1 sg1Var = this.o;
        zz2 zz2Var = zz2.c;
        zz2Var.getClass();
        zz2Var.a(sg1VarI.getClass()).b(sg1VarI, sg1Var);
        this.o = sg1VarI;
    }

    public final Object clone() {
        qg1 qg1Var = (qg1) this.n.c(5);
        qg1Var.o = b();
        return qg1Var;
    }
}
