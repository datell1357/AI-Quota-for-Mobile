package defpackage;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w72 extends OutputStream {
    public final OutputStream n;
    public final kf4 o;

    public w72(OutputStream outputStream, kf4 kf4Var) {
        this.n = outputStream;
        this.o = kf4Var;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            this.n.close();
        } catch (IOException e) {
            this.o.c("[close] I/O error: " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        try {
            this.n.flush();
        } catch (IOException e) {
            this.o.c("[flush] I/O error: " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        kf4 kf4Var = this.o;
        try {
            kf4Var.getClass();
            w80.L(bArr, "Output");
            kf4Var.e(">> ", new ByteArrayInputStream(bArr, i, i2));
            this.n.write(bArr, i, i2);
        } catch (IOException e) {
            kf4Var.c("[write] I/O error: " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        kf4 kf4Var = this.o;
        try {
            kf4Var.d(bArr);
            this.n.write(bArr);
        } catch (IOException e) {
            kf4Var.c("[write] I/O error: " + e.getMessage());
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        kf4 kf4Var = this.o;
        try {
            kf4Var.d(new byte[]{(byte) i});
        } catch (IOException e) {
            kf4Var.c("[write] I/O error: " + e.getMessage());
            throw e;
        }
    }
}
