package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class fh0 extends dr {
    public final hi0 o;
    public transient dh0 p;

    public fh0(dh0 dh0Var) {
        this(dh0Var, dh0Var != null ? dh0Var.e() : null);
    }

    @Override // defpackage.dh0
    public hi0 e() {
        hi0 hi0Var = this.o;
        hi0Var.getClass();
        return hi0Var;
    }

    @Override // defpackage.dr
    public void s() {
        dh0 dh0Var = this.p;
        if (dh0Var != null && dh0Var != this) {
            fi0 fi0VarK = e().K(w13.s);
            fi0VarK.getClass();
            su0 su0Var = (su0) dh0Var;
            su0Var.n();
            o20 o20VarP = su0Var.p();
            if (o20VarP != null) {
                o20VarP.q();
            }
        }
        this.p = b90.o;
    }

    public fh0(dh0 dh0Var, hi0 hi0Var) {
        super(dh0Var);
        this.o = hi0Var;
    }
}
