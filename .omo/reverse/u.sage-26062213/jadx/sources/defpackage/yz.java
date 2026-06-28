package defpackage;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yz implements yp3 {
    public final ByteBuffer n;
    public final int o;

    public yz(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        this.n = byteBufferSlice;
        this.o = byteBufferSlice.capacity();
    }

    @Override // defpackage.yp3
    public final mz3 g() {
        return mz3.d;
    }

    @Override // defpackage.yp3
    public final long l(long j, sy syVar) {
        ByteBuffer byteBuffer = this.n;
        int iPosition = byteBuffer.position();
        int i = this.o;
        if (iPosition == i) {
            return -1L;
        }
        int iPosition2 = (int) (((long) byteBuffer.position()) + j);
        if (iPosition2 <= i) {
            i = iPosition2;
        }
        byteBuffer.limit(i);
        return syVar.write(byteBuffer);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
