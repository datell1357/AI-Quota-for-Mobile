package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ny3 implements gi0 {
    public final ThreadLocal n;

    public ny3(ThreadLocal threadLocal) {
        this.n = threadLocal;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ny3) && nt1.g(this.n, ((ny3) obj).n);
    }

    public final int hashCode() {
        return this.n.hashCode();
    }

    public final String toString() {
        return "ThreadLocalKey(threadLocal=" + this.n + ')';
    }
}
