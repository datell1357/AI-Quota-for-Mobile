package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u31 extends InputStream {
    public final InputStream n;
    public int o = 1073741824;

    public u31(InputStream inputStream) {
        this.n = inputStream;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.o;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.n.close();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        int i = this.n.read();
        if (i == -1) {
            this.o = 0;
        }
        return i;
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        return this.n.skip(j);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        int i = this.n.read(bArr);
        if (i == -1) {
            this.o = 0;
        }
        return i;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.n.read(bArr, i, i2);
        if (i3 == -1) {
            this.o = 0;
        }
        return i3;
    }
}
