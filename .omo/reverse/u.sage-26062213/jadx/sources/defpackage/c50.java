package defpackage;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c50 extends OutputStream {
    public final zj3 n;
    public int p = 0;
    public boolean q = false;
    public boolean r = false;
    public final byte[] o = new byte[2048];

    public c50(zj3 zj3Var) {
        this.n = zj3Var;
    }

    public final void b() {
        int i = this.p;
        if (i > 0) {
            String hexString = Integer.toHexString(i);
            zj3 zj3Var = this.n;
            zj3Var.a(hexString);
            zj3Var.write(this.o, 0, this.p);
            zj3Var.a("");
            this.p = 0;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.r) {
            return;
        }
        this.r = true;
        boolean z = this.q;
        zj3 zj3Var = this.n;
        if (!z) {
            b();
            zj3Var.a("0");
            zj3Var.a("");
            this.q = true;
        }
        zj3Var.flush();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        b();
        this.n.flush();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        if (this.r) {
            p61.k("Attempted write to closed stream.");
            return;
        }
        byte[] bArr2 = this.o;
        int length = bArr2.length;
        int i3 = this.p;
        if (i2 < length - i3) {
            System.arraycopy(bArr, i, bArr2, i3, i2);
            this.p += i2;
            return;
        }
        String hexString = Integer.toHexString(i3 + i2);
        zj3 zj3Var = this.n;
        zj3Var.a(hexString);
        zj3Var.write(bArr2, 0, this.p);
        zj3Var.write(bArr, i, i2);
        zj3Var.a("");
        this.p = 0;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        if (!this.r) {
            int i2 = this.p;
            byte[] bArr = this.o;
            bArr[i2] = (byte) i;
            int i3 = i2 + 1;
            this.p = i3;
            if (i3 == bArr.length) {
                b();
                return;
            }
            return;
        }
        p61.k("Attempted write to closed stream.");
    }
}
