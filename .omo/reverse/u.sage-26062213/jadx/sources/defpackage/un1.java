package defpackage;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class un1 extends OutputStream {
    public final zj3 n;
    public boolean o = false;

    public un1(zj3 zj3Var) {
        w80.L(zj3Var, "Session output buffer");
        this.n = zj3Var;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.o) {
            return;
        }
        this.o = true;
        this.n.flush();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        this.n.flush();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        if (this.o) {
            p61.k("Attempted write to closed stream.");
        } else {
            this.n.write(bArr, i, i2);
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        if (!this.o) {
            this.n.write(i);
        } else {
            p61.k("Attempted write to closed stream.");
        }
    }
}
