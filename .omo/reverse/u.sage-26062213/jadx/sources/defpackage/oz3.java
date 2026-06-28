package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oz3 extends me3 implements Runnable {
    public final long t;

    public oz3(long j, fh0 fh0Var) {
        super(fh0Var, fh0Var.e());
        this.t = j;
    }

    @Override // defpackage.bv1
    public final String X() {
        return super.X() + "(timeMillis=" + this.t + ')';
    }

    @Override // java.lang.Runnable
    public final void run() {
        zf5.F(this.r);
        t(new nz3("Timed out waiting for " + this.t + " ms", this));
    }
}
