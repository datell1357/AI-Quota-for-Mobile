package defpackage;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u72 extends InputStream {
    public final InputStream n;
    public final kf4 o;

    public u72(InputStream inputStream, kf4 kf4Var) {
        this.n = inputStream;
        this.o = kf4Var;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        try {
            return this.n.available();
        } catch (IOException e) {
            this.o.b("[available] I/O error : " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            this.n.close();
        } catch (IOException e) {
            this.o.b("[close] I/O error: " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        kf4 kf4Var = this.o;
        try {
            int i = this.n.read(bArr);
            if (i == -1) {
                kf4Var.b("end of stream");
                return i;
            }
            if (i > 0) {
                kf4Var.getClass();
                w80.L(bArr, "Input");
                kf4Var.e("<< ", new ByteArrayInputStream(bArr, 0, i));
            }
            return i;
        } catch (IOException e) {
            kf4Var.b("[read] I/O error: " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        try {
            return super.skip(j);
        } catch (IOException e) {
            this.o.b("[skip] I/O error: " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        kf4 kf4Var = this.o;
        try {
            int i = this.n.read();
            if (i == -1) {
                kf4Var.b("end of stream");
                return i;
            }
            kf4Var.getClass();
            kf4Var.e("<< ", new ByteArrayInputStream(new byte[]{(byte) i}));
            return i;
        } catch (IOException e) {
            kf4Var.b("[read] I/O error: " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        kf4 kf4Var = this.o;
        try {
            int i3 = this.n.read(bArr, i, i2);
            if (i3 == -1) {
                kf4Var.b("end of stream");
                return i3;
            }
            if (i3 > 0) {
                kf4Var.getClass();
                w80.L(bArr, "Input");
                kf4Var.e("<< ", new ByteArrayInputStream(bArr, i, i3));
            }
            return i3;
        } catch (IOException e) {
            kf4Var.b("[read] I/O error: " + e.getMessage());
            throw e;
        }
    }
}
