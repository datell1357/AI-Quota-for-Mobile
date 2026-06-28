package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dq3 implements AutoCloseable {
    public final fz n;

    @Override // java.lang.AutoCloseable
    public final void close() throws IOException {
        this.n.close();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof dq3) {
            return this.n.equals(((dq3) obj).n);
        }
        return false;
    }

    public final int hashCode() {
        return this.n.hashCode();
    }

    public final String toString() {
        return "SourceResponseBody(source=" + this.n + ")";
    }
}
