package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d23 implements fz {
    public final yp3 n;
    public final sy o;
    public boolean p;

    public d23(yp3 yp3Var) {
        yp3Var.getClass();
        this.n = yp3Var;
        this.o = new sy();
    }

    public final short A() throws EOFException {
        d0(2L);
        return this.o.N();
    }

    public final String B(long j) throws EOFException {
        d0(j);
        return this.o.R(j, k40.a);
    }

    @Override // defpackage.fz
    public final sy H() {
        return this.o;
    }

    @Override // defpackage.fz
    public final String Q(long j) {
        if (j < 0) {
            k21.l(di0.s(j, "limit < 0: "));
            return null;
        }
        long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
        long j3 = j((byte) 10, 0L, j2);
        sy syVar = this.o;
        if (j3 != -1) {
            return b.b(j3, syVar);
        }
        if (j2 < Long.MAX_VALUE && u(j2) && syVar.z(j2 - 1) == 13 && u(j2 + 1) && syVar.z(j2) == 10) {
            return b.b(j2, syVar);
        }
        sy syVar2 = new sy();
        syVar.j(syVar2, 0L, Math.min(32L, syVar.o));
        throw new EOFException("\\n not found: limit=" + Math.min(syVar.o, j) + " content=" + syVar2.p(syVar2.o).d() + (char) 8230);
    }

    @Override // defpackage.fz
    public final long W(ez ezVar) {
        sy syVar;
        long j = 0;
        while (true) {
            yp3 yp3Var = this.n;
            syVar = this.o;
            if (yp3Var.l(8192L, syVar) == -1) {
                break;
            }
            long jB = syVar.b();
            if (jB > 0) {
                j += jB;
                ezVar.J(jB, syVar);
            }
        }
        long j2 = syVar.o;
        if (j2 <= 0) {
            return j;
        }
        long j3 = j + j2;
        ezVar.J(j2, syVar);
        return j3;
    }

    public final boolean b() {
        if (this.p) {
            k21.n("closed");
            return false;
        }
        sy syVar = this.o;
        return syVar.r() && this.n.l(8192L, syVar) == -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() throws IOException {
        if (this.p) {
            return;
        }
        this.p = true;
        this.n.close();
        sy syVar = this.o;
        syVar.skip(syVar.o);
    }

    @Override // defpackage.fz
    public final void d0(long j) throws EOFException {
        if (!u(j)) {
            throw new EOFException();
        }
    }

    @Override // defpackage.yp3
    public final mz3 g() {
        return this.n.g();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.p;
    }

    public final long j(byte b, long j, long j2) {
        if (this.p) {
            k21.n("closed");
            return 0L;
        }
        if (0 > j2) {
            k21.l(di0.s(j2, "fromIndex=0 toIndex="));
            return 0L;
        }
        long jMax = 0;
        while (jMax < j2) {
            sy syVar = this.o;
            byte b2 = b;
            long j3 = j2;
            long jA = syVar.A(b2, jMax, j3);
            if (jA != -1) {
                return jA;
            }
            long j4 = syVar.o;
            if (j4 >= j3 || this.n.l(8192L, syVar) == -1) {
                break;
            }
            jMax = Math.max(jMax, j4);
            b = b2;
            j2 = j3;
        }
        return -1L;
    }

    @Override // defpackage.yp3
    public final long l(long j, sy syVar) {
        syVar.getClass();
        if (j < 0) {
            k21.l(di0.s(j, "byteCount < 0: "));
            return 0L;
        }
        if (this.p) {
            k21.n("closed");
            return 0L;
        }
        sy syVar2 = this.o;
        if (syVar2.o == 0) {
            if (j == 0) {
                return 0L;
            }
            if (this.n.l(8192L, syVar2) == -1) {
                return -1L;
            }
        }
        return syVar2.l(Math.min(j, syVar2.o), syVar);
    }

    @Override // defpackage.fz
    public final g00 p(long j) throws EOFException {
        d0(j);
        return this.o.p(j);
    }

    public final int r() throws EOFException {
        d0(4L);
        int i = this.o.readInt();
        return ((i & 255) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        sy syVar = this.o;
        if (syVar.o == 0 && this.n.l(8192L, syVar) == -1) {
            return -1;
        }
        return syVar.read(byteBuffer);
    }

    @Override // defpackage.fz
    public final byte readByte() throws EOFException {
        d0(1L);
        return this.o.readByte();
    }

    @Override // defpackage.fz
    public final int readInt() throws EOFException {
        d0(4L);
        return this.o.readInt();
    }

    @Override // defpackage.fz
    public final short readShort() throws EOFException {
        d0(2L);
        return this.o.readShort();
    }

    @Override // defpackage.fz
    public final void skip(long j) throws EOFException {
        if (this.p) {
            k21.n("closed");
            return;
        }
        while (j > 0) {
            sy syVar = this.o;
            if (syVar.o == 0 && this.n.l(8192L, syVar) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j, syVar.o);
            syVar.skip(jMin);
            j -= jMin;
        }
    }

    public final String toString() {
        return "buffer(" + this.n + ')';
    }

    @Override // defpackage.fz
    public final boolean u(long j) {
        sy syVar;
        if (j < 0) {
            k21.l(di0.s(j, "byteCount < 0: "));
            return false;
        }
        if (this.p) {
            k21.n("closed");
            return false;
        }
        do {
            syVar = this.o;
            if (syVar.o >= j) {
                return true;
            }
        } while (this.n.l(8192L, syVar) != -1);
        return false;
    }

    public final long z() throws EOFException {
        char c;
        char c2;
        long j;
        d0(8L);
        sy syVar = this.o;
        if (syVar.o < 8) {
            throw new EOFException();
        }
        qg3 qg3Var = syVar.n;
        qg3Var.getClass();
        int i = qg3Var.b;
        int i2 = qg3Var.c;
        if (i2 - i < 8) {
            j = ((((long) syVar.readInt()) & 4294967295L) << 32) | (4294967295L & ((long) syVar.readInt()));
            c = 24;
            c2 = '(';
        } else {
            byte[] bArr = qg3Var.a;
            c = 24;
            c2 = '(';
            int i3 = i + 7;
            long j2 = ((((long) bArr[i]) & 255) << 56) | ((((long) bArr[i + 1]) & 255) << 48) | ((((long) bArr[i + 2]) & 255) << 40) | ((((long) bArr[i + 3]) & 255) << 32) | ((((long) bArr[i + 4]) & 255) << 24) | ((((long) bArr[i + 5]) & 255) << 16) | ((((long) bArr[i + 6]) & 255) << 8);
            int i4 = i + 8;
            long j3 = j2 | (((long) bArr[i3]) & 255);
            syVar.o -= 8;
            if (i4 == i2) {
                syVar.n = qg3Var.a();
                sg3.a(qg3Var);
            } else {
                qg3Var.b = i4;
            }
            j = j3;
        }
        return ((j & 255) << 56) | (((-72057594037927936L) & j) >>> 56) | ((71776119061217280L & j) >>> c2) | ((280375465082880L & j) >>> c) | ((1095216660480L & j) >>> 8) | ((4278190080L & j) << 8) | ((16711680 & j) << c) | ((65280 & j) << c2);
    }
}
