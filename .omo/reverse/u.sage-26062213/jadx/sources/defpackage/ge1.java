package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ge1 extends RuntimeException {
    public final he1 n;
    public final Throwable o;

    public ge1(he1 he1Var, Throwable th) {
        super(th);
        this.n = he1Var;
        this.o = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.o;
    }
}
