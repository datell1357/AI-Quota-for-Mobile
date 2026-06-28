package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lq0 implements Runnable {
    public final /* synthetic */ int n = 0;
    public boolean o;
    public final Object p;
    public final Object q;

    public lq0(r22 r22Var, f22 f22Var) {
        r22Var.getClass();
        f22Var.getClass();
        this.p = r22Var;
        this.q = f22Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        Object obj = this.q;
        Object obj2 = this.p;
        switch (i) {
            case 0:
                lc1 lc1Var = ((pq3) obj2).c;
                lc1 lc1Var2 = ((pq3) obj).c;
                boolean z = this.o;
                ae1 ae1Var = vd1.a;
                if (!z) {
                    lc1Var.getEnterTransitionCallback();
                } else {
                    lc1Var2.getEnterTransitionCallback();
                }
                break;
            default:
                if (!this.o) {
                    ((r22) obj2).e((f22) obj);
                    this.o = true;
                }
                break;
        }
    }

    public lq0(pq3 pq3Var, pq3 pq3Var2, boolean z, di diVar) {
        this.p = pq3Var;
        this.q = pq3Var2;
        this.o = z;
    }
}
