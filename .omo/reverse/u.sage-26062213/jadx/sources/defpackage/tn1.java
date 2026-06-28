package defpackage;

import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tn1 extends InputStream {
    public final xj3 n;
    public boolean o = false;

    public tn1(xj3 xj3Var) {
        w80.L(xj3Var, "Session input buffer");
        this.n = xj3Var;
    }

    @Override // java.io.InputStream
    public final int available() {
        xj3 xj3Var = this.n;
        if (xj3Var instanceof ty) {
            return ((ty) xj3Var).length();
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.o = true;
    }

    @Override // java.io.InputStream
    public final int read() {
        if (this.o) {
            return -1;
        }
        return this.n.read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (this.o) {
            return -1;
        }
        return this.n.read(bArr, i, i2);
    }
}
