package defpackage;

import java.io.IOException;
import java.util.zip.InflaterInputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class er0 extends InflaterInputStream {
    public boolean n;

    @Override // java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.n) {
            return;
        }
        this.n = true;
        ((InflaterInputStream) this).inf.end();
        super.close();
    }
}
