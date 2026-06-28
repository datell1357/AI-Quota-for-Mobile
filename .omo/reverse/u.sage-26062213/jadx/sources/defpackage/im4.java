package defpackage;

import java.io.Closeable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class im4 implements Closeable {
    public static final lc o = new lc(3);
    public int n;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        int i = this.n;
        if (i > 0) {
            this.n = i - 1;
        } else {
            k21.c("Mismatched calls to RecursionDepth (possible error in core library)");
        }
    }
}
