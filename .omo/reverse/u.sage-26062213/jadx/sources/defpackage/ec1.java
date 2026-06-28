package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ec1 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ lc1 o;

    public /* synthetic */ ec1(lc1 lc1Var, int i) {
        this.n = i;
        this.o = lc1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        lc1 lc1Var = this.o;
        switch (i) {
            case 0:
                lc1Var.startPostponedEnterTransition();
                break;
            default:
                lc1Var.callStartTransitionListener(false);
                break;
        }
    }
}
