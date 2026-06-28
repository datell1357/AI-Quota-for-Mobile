package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bc3 implements Runnable {
    public final /* synthetic */ int n;
    public final Runnable o;

    public /* synthetic */ bc3(Runnable runnable, int i) {
        this.n = i;
        this.o = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        Runnable runnable = this.o;
        switch (i) {
            case 0:
                try {
                    runnable.run();
                } catch (Exception e) {
                    qj0.E("Executor", "Background execution failure.", e);
                    return;
                }
                break;
            case 1:
                runnable.run();
                break;
            default:
                runnable.run();
                break;
        }
    }

    public String toString() {
        int i = this.n;
        Runnable runnable = this.o;
        switch (i) {
            case 1:
                return runnable.toString();
            case 2:
                return runnable.toString();
            default:
                return super.toString();
        }
    }
}
