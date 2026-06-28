package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t35 implements Cloneable {
    public final v35 n;
    public sy4 o;

    public t35() {
        v35 v35Var = v35.zzb;
        this.n = v35Var;
        if (v35Var.g()) {
            k21.f("Default instance must be immutable.");
            throw null;
        }
        this.o = v35Var.b();
    }

    public final sy4 a() {
        boolean zG = this.o.g();
        sy4 sy4Var = this.o;
        if (!zG) {
            return sy4Var;
        }
        sy4Var.getClass();
        z05.c.a(sy4Var.getClass()).b(sy4Var);
        sy4Var.d();
        return this.o;
    }

    public final Object clone() {
        t35 t35Var = (t35) this.n.h(5);
        t35Var.o = a();
        return t35Var;
    }
}
