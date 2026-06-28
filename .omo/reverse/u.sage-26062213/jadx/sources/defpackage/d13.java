package defpackage;

import com.google.android.gms.auth.blockstore.BlockstoreClient;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d13 implements Closeable {
    public static final Logger t = Logger.getLogger(d13.class.getName());
    public final RandomAccessFile n;
    public int o;
    public int p;
    public a13 q;
    public a13 r;
    public final byte[] s;

    public d13(File file) throws IOException {
        byte[] bArr = new byte[16];
        this.s = bArr;
        if (!file.exists()) {
            File file2 = new File(file.getPath() + ".tmp");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rwd");
            try {
                randomAccessFile.setLength(4096L);
                randomAccessFile.seek(0L);
                byte[] bArr2 = new byte[16];
                int[] iArr = {BlockstoreClient.MAX_SIZE, 0, 0, 0};
                int i = 0;
                for (int i2 = 0; i2 < 4; i2++) {
                    Y(bArr2, i, iArr[i2]);
                    i += 4;
                }
                randomAccessFile.write(bArr2);
                randomAccessFile.close();
                if (!file2.renameTo(file)) {
                    p61.k("Rename failed!");
                    throw null;
                }
            } catch (Throwable th) {
                randomAccessFile.close();
                throw th;
            }
        }
        RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rwd");
        this.n = randomAccessFile2;
        randomAccessFile2.seek(0L);
        randomAccessFile2.readFully(bArr);
        int iB = B(0, bArr);
        this.o = iB;
        if (iB <= randomAccessFile2.length()) {
            this.p = B(4, bArr);
            int iB2 = B(8, bArr);
            int iB3 = B(12, bArr);
            this.q = A(iB2);
            this.r = A(iB3);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.o + ", Actual length: " + randomAccessFile2.length());
    }

    public static int B(int i, byte[] bArr) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    public static void Y(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    public final a13 A(int i) throws IOException {
        if (i == 0) {
            return a13.d;
        }
        RandomAccessFile randomAccessFile = this.n;
        randomAccessFile.seek(i);
        return new a13(i, randomAccessFile.readInt(), 0);
    }

    public final synchronized void F() {
        if (z()) {
            throw new NoSuchElementException();
        }
        int i = 0;
        if (this.p == 1) {
            synchronized (this) {
                V(BlockstoreClient.MAX_SIZE, 0, 0, 0);
                this.p = 0;
                a13 a13Var = a13.d;
                this.q = a13Var;
                this.r = a13Var;
                if (this.o > 4096) {
                    RandomAccessFile randomAccessFile = this.n;
                    randomAccessFile.setLength(4096L);
                    randomAccessFile.getChannel().force(true);
                }
                this.o = BlockstoreClient.MAX_SIZE;
            }
        } else {
            a13 a13Var2 = this.q;
            int iR = R(a13Var2.b + 4 + a13Var2.c);
            K(this.s, iR, 0, 4);
            int iB = B(0, this.s);
            V(this.o, this.p - 1, iR, this.r.b);
            this.p--;
            this.q = new a13(iR, iB, i);
        }
    }

    public final void K(byte[] bArr, int i, int i2, int i3) throws IOException {
        int iR = R(i);
        int i4 = iR + i3;
        int i5 = this.o;
        RandomAccessFile randomAccessFile = this.n;
        if (i4 <= i5) {
            randomAccessFile.seek(iR);
            randomAccessFile.readFully(bArr, i2, i3);
            return;
        }
        int i6 = i5 - iR;
        randomAccessFile.seek(iR);
        randomAccessFile.readFully(bArr, i2, i6);
        randomAccessFile.seek(16L);
        randomAccessFile.readFully(bArr, i2 + i6, i3 - i6);
    }

    public final void L(byte[] bArr, int i, int i2) throws IOException {
        int iR = R(i);
        int i3 = iR + i2;
        int i4 = this.o;
        RandomAccessFile randomAccessFile = this.n;
        if (i3 <= i4) {
            randomAccessFile.seek(iR);
            randomAccessFile.write(bArr, 0, i2);
            return;
        }
        int i5 = i4 - iR;
        randomAccessFile.seek(iR);
        randomAccessFile.write(bArr, 0, i5);
        randomAccessFile.seek(16L);
        randomAccessFile.write(bArr, i5, i2 - i5);
    }

    public final int N() {
        if (this.p == 0) {
            return 16;
        }
        a13 a13Var = this.r;
        int i = a13Var.b;
        int i2 = this.q.b;
        return i >= i2 ? (i - i2) + 4 + a13Var.c + 16 : (((i + 4) + a13Var.c) + this.o) - i2;
    }

    public final int R(int i) {
        int i2 = this.o;
        return i < i2 ? i : (i + 16) - i2;
    }

    public final void V(int i, int i2, int i3, int i4) throws IOException {
        int[] iArr = {i, i2, i3, i4};
        int i5 = 0;
        int i6 = 0;
        while (true) {
            byte[] bArr = this.s;
            if (i5 >= 4) {
                RandomAccessFile randomAccessFile = this.n;
                randomAccessFile.seek(0L);
                randomAccessFile.write(bArr);
                return;
            } else {
                Y(bArr, i6, iArr[i5]);
                i6 += 4;
                i5++;
            }
        }
    }

    public final void b(byte[] bArr) {
        int iR;
        int length = bArr.length;
        synchronized (this) {
            if (length >= 0) {
                if (length <= bArr.length) {
                    j(length);
                    boolean z = z();
                    if (z) {
                        iR = 16;
                    } else {
                        a13 a13Var = this.r;
                        iR = R(a13Var.b + 4 + a13Var.c);
                    }
                    a13 a13Var2 = new a13(iR, length, 0);
                    Y(this.s, 0, length);
                    L(this.s, iR, 4);
                    L(bArr, iR + 4, length);
                    V(this.o, this.p + 1, z ? iR : this.q.b, iR);
                    this.r = a13Var2;
                    this.p++;
                    if (z) {
                        this.q = a13Var2;
                    }
                }
            }
            throw new IndexOutOfBoundsException();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.n.close();
    }

    public final void j(int i) throws IOException {
        int i2 = i + 4;
        int iN = this.o - N();
        if (iN >= i2) {
            return;
        }
        int i3 = this.o;
        do {
            iN += i3;
            i3 <<= 1;
        } while (iN < i2);
        RandomAccessFile randomAccessFile = this.n;
        randomAccessFile.setLength(i3);
        randomAccessFile.getChannel().force(true);
        a13 a13Var = this.r;
        int iR = R(a13Var.b + 4 + a13Var.c);
        if (iR < this.q.b) {
            FileChannel channel = randomAccessFile.getChannel();
            channel.position(this.o);
            long j = iR - 4;
            if (channel.transferTo(16L, j, channel) != j) {
                k21.c("Copied insufficient number of bytes!");
                return;
            }
        }
        int i4 = this.r.b;
        int i5 = this.q.b;
        if (i4 < i5) {
            int i6 = (this.o + i4) - 16;
            V(i3, this.p, i5, i6);
            this.r = new a13(i6, this.r.c, 0);
        } else {
            V(i3, this.p, i5, i4);
        }
        this.o = i3;
    }

    public final synchronized void r(c13 c13Var) {
        int iR = this.q.b;
        for (int i = 0; i < this.p; i++) {
            a13 a13VarA = A(iR);
            c13Var.a(new b13(this, a13VarA), a13VarA.c);
            iR = R(a13VarA.b + 4 + a13VarA.c);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(d13.class.getSimpleName());
        sb.append("[fileLength=");
        sb.append(this.o);
        sb.append(", size=");
        sb.append(this.p);
        sb.append(", first=");
        sb.append(this.q);
        sb.append(", last=");
        sb.append(this.r);
        sb.append(", element lengths=[");
        try {
            r(new sb0(sb));
        } catch (IOException e) {
            t.log(Level.WARNING, "read error", (Throwable) e);
        }
        sb.append("]]");
        return sb.toString();
    }

    public final synchronized boolean z() {
        return this.p == 0;
    }
}
