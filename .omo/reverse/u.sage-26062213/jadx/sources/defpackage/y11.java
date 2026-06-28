package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y11 extends InputStream implements he0 {
    public InputStream n;
    public boolean o;
    public final z11 p;

    public y11(InputStream inputStream, z11 z11Var) {
        w80.L(inputStream, "Wrapped stream");
        this.n = inputStream;
        this.o = false;
        this.p = z11Var;
    }

    public final boolean A() throws IOException {
        if (!this.o) {
            return this.n != null;
        }
        p61.k("Attempted read on closed stream.");
        return false;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        if (!A()) {
            return 0;
        }
        try {
            return this.n.available();
        } catch (IOException e) {
            this.b();
            throw e;
        }
    }

    public final void b() {
        InputStream inputStream = this.n;
        if (inputStream != null) {
            try {
                z11 z11Var = this.p;
                if (z11Var != null) {
                    z11Var.b();
                } else {
                    inputStream.close();
                }
                this.n = null;
            } catch (Throwable th) {
                this.n = null;
                throw th;
            }
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.o = true;
        InputStream inputStream = this.n;
        if (inputStream != null) {
            try {
                z11 z11Var = this.p;
                if (z11Var != null) {
                    z11Var.a(inputStream);
                } else {
                    inputStream.close();
                }
                this.n = null;
            } catch (Throwable th) {
                this.n = null;
                throw th;
            }
        }
    }

    @Override // defpackage.he0
    public final void j() {
        this.o = true;
        b();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        if (!A()) {
            return -1;
        }
        try {
            int i = this.n.read();
            z(i);
            return i;
        } catch (IOException e) {
            b();
            throw e;
        }
    }

    public final void z(int i) {
        InputStream inputStream = this.n;
        if (inputStream == null || i >= 0) {
            return;
        }
        try {
            z11 z11Var = this.p;
            if (z11Var != null) {
                z11Var.c(inputStream);
            } else {
                inputStream.close();
            }
            this.n = null;
        } catch (Throwable th) {
            this.n = null;
            throw th;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (!A()) {
            return -1;
        }
        try {
            int i3 = this.n.read(bArr, i, i2);
            z(i3);
            return i3;
        } catch (IOException e) {
            b();
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }
}
