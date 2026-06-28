package defpackage;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hg0 extends OutputStream {
    public final zj3 n;
    public final long o;
    public long p;
    public boolean q;

    public hg0(zj3 zj3Var, long j) {
        w80.L(zj3Var, "Session output buffer");
        this.n = zj3Var;
        w80.K(j);
        this.o = j;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.q) {
            return;
        }
        this.q = true;
        this.n.flush();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        this.n.flush();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        if (this.q) {
            p61.k("Attempted write to closed stream.");
            return;
        }
        long j = this.p;
        long j2 = this.o;
        if (j < j2) {
            long j3 = j2 - j;
            if (i2 > j3) {
                i2 = (int) j3;
            }
            this.n.write(bArr, i, i2);
            this.p += (long) i2;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        if (this.q) {
            p61.k("Attempted write to closed stream.");
        } else if (this.p < this.o) {
            this.n.write(i);
            this.p++;
        }
    }
}
