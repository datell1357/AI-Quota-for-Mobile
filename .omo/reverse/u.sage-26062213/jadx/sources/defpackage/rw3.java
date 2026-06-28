package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rw3 extends mw3 {
    public final Runnable p;

    public rw3(Runnable runnable, long j, boolean z) {
        super(z, j);
        this.p = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.p.run();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Task[");
        Runnable runnable = this.p;
        sb.append(runnable.getClass().getSimpleName());
        sb.append('@');
        sb.append(qn0.u(runnable));
        sb.append(", ");
        sb.append(this.n);
        sb.append(", ");
        sb.append(this.o ? "Blocking" : "Non-blocking");
        sb.append(']');
        return sb.toString();
    }
}
