package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j90 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ u90 o;

    public /* synthetic */ j90(u90 u90Var, int i) {
        this.n = i;
        this.o = u90Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        u90 u90Var = this.o;
        switch (i) {
            case 0:
                u90.e(u90Var);
                break;
            default:
                u90Var.invalidateMenu();
                break;
        }
    }
}
