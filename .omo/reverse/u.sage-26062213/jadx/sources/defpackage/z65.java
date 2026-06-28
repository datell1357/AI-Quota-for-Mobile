package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z65 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ y55 o;
    public final /* synthetic */ long p;
    public final /* synthetic */ boolean q;
    public final /* synthetic */ m75 r;

    public /* synthetic */ z65(m75 m75Var, y55 y55Var, long j, boolean z, int i) {
        this.n = i;
        this.o = y55Var;
        this.p = j;
        this.q = z;
        this.r = m75Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        long j = this.p;
        boolean z = this.q;
        y55 y55Var = this.o;
        m75 m75Var = this.r;
        switch (i) {
            case 0:
                m75Var.V(y55Var);
                m75Var.L(y55Var, j, z);
                break;
            default:
                m75Var.V(y55Var);
                m75Var.L(y55Var, j, z);
                break;
        }
    }
}
