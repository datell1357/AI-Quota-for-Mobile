package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ba3 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ kj0 o;
    public final /* synthetic */ xo p;

    public /* synthetic */ ba3(kj0 kj0Var, xo xoVar, int i) {
        this.n = i;
        this.o = kj0Var;
        this.p = xoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        xo xoVar = this.p;
        kj0 kj0Var = this.o;
        switch (i) {
            case 0:
                kj0Var.a(xoVar);
                break;
            default:
                kj0Var.a(xoVar);
                break;
        }
    }
}
