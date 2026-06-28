package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qo3 extends Exception {
    public final /* synthetic */ int n;

    @Override // java.lang.Throwable
    public synchronized Throwable fillInStackTrace() {
        switch (this.n) {
            case 3:
                synchronized (this) {
                    setStackTrace(new StackTraceElement[0]);
                }
                return this;
            default:
                return super.fillInStackTrace();
        }
    }
}
