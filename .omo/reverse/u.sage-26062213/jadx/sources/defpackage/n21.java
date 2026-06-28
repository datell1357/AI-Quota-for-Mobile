package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n21 extends o21 {
    public final oz3 p;

    public n21(long j, oz3 oz3Var) {
        super(j);
        this.p = oz3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.p.run();
    }

    @Override // defpackage.o21
    public final String toString() {
        return super.toString() + this.p;
    }
}
