package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b13 extends InputStream {
    public int n;
    public int o;
    public final /* synthetic */ d13 p;

    public b13(d13 d13Var, a13 a13Var) {
        this.p = d13Var;
        this.n = d13Var.R(a13Var.b + 4);
        this.o = a13Var.c;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (bArr == null) {
            q73.r("buffer");
            return 0;
        }
        if ((i | i2) < 0 || i2 > bArr.length - i) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = this.o;
        if (i3 <= 0) {
            return -1;
        }
        if (i2 > i3) {
            i2 = i3;
        }
        int i4 = this.n;
        d13 d13Var = this.p;
        d13Var.K(bArr, i4, i, i2);
        this.n = d13Var.R(this.n + i2);
        this.o -= i2;
        return i2;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        d13 d13Var = this.p;
        RandomAccessFile randomAccessFile = d13Var.n;
        if (this.o == 0) {
            return -1;
        }
        randomAccessFile.seek(this.n);
        int i = randomAccessFile.read();
        this.n = d13Var.R(this.n + 1);
        this.o--;
        return i;
    }
}
