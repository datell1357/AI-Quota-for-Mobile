package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sz1 extends InputStream {
    public final InputStream n;
    public final gr0 o;
    public InputStream p;

    public sz1(InputStream inputStream, gr0 gr0Var) {
        this.n = inputStream;
        this.o = gr0Var;
    }

    @Override // java.io.InputStream
    public final int available() {
        b();
        return this.p.available();
    }

    public final void b() {
        InputStream fr0Var;
        if (this.p == null) {
            int i = this.o.a;
            InputStream inputStream = this.n;
            switch (i) {
                case 0:
                    fr0Var = new fr0(inputStream);
                    break;
                default:
                    fr0Var = new GZIPInputStream(inputStream);
                    break;
            }
            this.p = fr0Var;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        InputStream inputStream = this.n;
        try {
            InputStream inputStream2 = this.p;
            if (inputStream2 != null) {
                inputStream2.close();
            }
        } finally {
            inputStream.close();
        }
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public final int read() {
        b();
        return this.p.read();
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        b();
        return this.p.skip(j);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        b();
        return this.p.read(bArr);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        b();
        return this.p.read(bArr, i, i2);
    }
}
