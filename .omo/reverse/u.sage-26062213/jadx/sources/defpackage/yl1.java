package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yl1 extends OutputStream {
    public final MessageDigest n;
    public boolean o;
    public byte[] p;

    public yl1(MessageDigest messageDigest) {
        this.n = messageDigest;
        messageDigest.reset();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.o) {
            return;
        }
        this.o = true;
        this.p = this.n.digest();
        super.close();
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        if (this.o) {
            p61.k("Stream has been already closed");
        } else {
            this.n.update((byte) i);
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        if (!this.o) {
            this.n.update(bArr, i, i2);
        } else {
            p61.k("Stream has been already closed");
        }
    }
}
