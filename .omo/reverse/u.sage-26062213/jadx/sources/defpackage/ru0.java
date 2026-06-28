package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ru0 extends Exception {
    public final Throwable n;

    public ru0(Throwable th, ji0 ji0Var, hi0 hi0Var) {
        super("Coroutine dispatcher " + ji0Var + " threw an exception, context = " + hi0Var, th);
        this.n = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.n;
    }
}
