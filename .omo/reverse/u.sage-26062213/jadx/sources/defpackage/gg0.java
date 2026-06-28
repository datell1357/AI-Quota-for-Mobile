package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gg0 extends InputStream {
    public final long n;
    public long o = 0;
    public boolean p = false;
    public final xj3 q;

    public gg0(xj3 xj3Var, long j) {
        this.q = null;
        w80.L(xj3Var, "Session input buffer");
        this.q = xj3Var;
        w80.K(j);
        this.n = j;
    }

    @Override // java.io.InputStream
    public final int available() {
        xj3 xj3Var = this.q;
        if (xj3Var instanceof ty) {
            return Math.min(((ty) xj3Var).length(), (int) (this.n - this.o));
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.p) {
            return;
        }
        try {
            if (this.o < this.n) {
                do {
                } while (read(new byte[2048], 0, 2048) >= 0);
            }
        } finally {
            this.p = true;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.p) {
            p61.k("Attempted read from closed stream.");
            return 0;
        }
        long j = this.o;
        long j2 = this.n;
        if (j >= j2) {
            return -1;
        }
        if (((long) i2) + j > j2) {
            i2 = (int) (j2 - j);
        }
        int i3 = this.q.read(bArr, i, i2);
        if (i3 == -1 && this.o < j2) {
            throw new c70(Long.valueOf(j2), Long.valueOf(this.o));
        }
        if (i3 > 0) {
            this.o += (long) i3;
        }
        return i3;
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        int i;
        if (j <= 0) {
            return 0L;
        }
        byte[] bArr = new byte[2048];
        long jMin = Math.min(j, this.n - this.o);
        long j2 = 0;
        while (jMin > 0 && (i = read(bArr, 0, (int) Math.min(2048L, jMin))) != -1) {
            long j3 = i;
            j2 += j3;
            jMin -= j3;
        }
        return j2;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        if (!this.p) {
            long j = this.o;
            long j2 = this.n;
            if (j >= j2) {
                return -1;
            }
            int i = this.q.read();
            long j3 = this.o;
            if (i != -1) {
                this.o = j3 + 1;
                return i;
            }
            if (j3 >= j2) {
                return i;
            }
            throw new c70(Long.valueOf(j2), Long.valueOf(this.o));
        }
        p61.k("Attempted read from closed stream.");
        return 0;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }
}
