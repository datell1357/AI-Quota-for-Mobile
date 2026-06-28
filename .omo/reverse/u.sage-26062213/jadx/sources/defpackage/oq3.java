package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oq3 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ pq3 o;
    public final /* synthetic */ pq0 p;

    public /* synthetic */ oq3(pq0 pq0Var, pq3 pq3Var, int i) {
        this.n = i;
        this.p = pq0Var;
        this.o = pq3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        pq3 pq3Var = this.o;
        pq0 pq0Var = this.p;
        switch (i) {
            case 0:
                if (pq0Var.b.contains(pq3Var)) {
                    xw1.a(pq3Var.c.mView, pq3Var.a);
                }
                break;
            default:
                pq0Var.b.remove(pq3Var);
                pq0Var.c.remove(pq3Var);
                break;
        }
    }
}
