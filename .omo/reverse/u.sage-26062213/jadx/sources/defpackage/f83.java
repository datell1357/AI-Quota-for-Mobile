package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f83 implements Serializable {
    public final Throwable n;

    public f83(Throwable th) {
        th.getClass();
        this.n = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f83) {
            return nt1.g(this.n, ((f83) obj).n);
        }
        return false;
    }

    public final int hashCode() {
        return this.n.hashCode();
    }

    public final String toString() {
        return "Failure(" + this.n + ')';
    }
}
