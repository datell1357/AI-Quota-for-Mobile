package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ui1 implements yp3 {
    public byte n;
    public final d23 o;
    public final Inflater p;
    public final sq1 q;
    public final CRC32 r;

    public ui1(fz fzVar) {
        fzVar.getClass();
        d23 d23Var = new d23(fzVar);
        this.o = d23Var;
        Inflater inflater = new Inflater(true);
        this.p = inflater;
        this.q = new sq1(d23Var, inflater);
        this.r = new CRC32();
    }

    public static void b(int i, String str, int i2) throws IOException {
        if (i2 == i) {
            return;
        }
        throw new IOException(str + ": actual 0x" + zs3.M0(8, is0.Z(i2)) + " != expected 0x" + zs3.M0(8, is0.Z(i)));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.q.close();
    }

    @Override // defpackage.yp3
    public final mz3 g() {
        return this.o.n.g();
    }

    public final void j(sy syVar, long j, long j2) {
        qg3 qg3Var = syVar.n;
        qg3Var.getClass();
        while (true) {
            int i = qg3Var.c;
            int i2 = qg3Var.b;
            if (j < i - i2) {
                break;
            }
            j -= (long) (i - i2);
            qg3Var = qg3Var.f;
            qg3Var.getClass();
        }
        while (j2 > 0) {
            int i3 = (int) (((long) qg3Var.b) + j);
            int iMin = (int) Math.min(qg3Var.c - i3, j2);
            this.r.update(qg3Var.a, i3, iMin);
            j2 -= (long) iMin;
            qg3Var = qg3Var.f;
            qg3Var.getClass();
            j = 0;
        }
    }

    @Override // defpackage.yp3
    public final long l(long j, sy syVar) throws IOException {
        ui1 ui1Var = this;
        syVar.getClass();
        if (j < 0) {
            k21.l(di0.s(j, "byteCount < 0: "));
            return 0L;
        }
        if (j == 0) {
            return 0L;
        }
        byte b = ui1Var.n;
        CRC32 crc32 = ui1Var.r;
        d23 d23Var = ui1Var.o;
        if (b == 0) {
            d23Var.d0(10L);
            sy syVar2 = d23Var.o;
            byte bZ = syVar2.z(3L);
            boolean z = ((bZ >> 1) & 1) == 1;
            if (z) {
                ui1Var.j(syVar2, 0L, 10L);
            }
            b(8075, "ID1ID2", d23Var.readShort());
            d23Var.skip(8L);
            if (((bZ >> 2) & 1) == 1) {
                d23Var.d0(2L);
                if (z) {
                    j(syVar2, 0L, 2L);
                }
                long jN = syVar2.N() & 65535;
                d23Var.d0(jN);
                if (z) {
                    j(syVar2, 0L, jN);
                }
                d23Var.skip(jN);
            }
            if (((bZ >> 3) & 1) == 1) {
                long j2 = d23Var.j((byte) 0, 0L, Long.MAX_VALUE);
                if (j2 == -1) {
                    throw new EOFException();
                }
                if (z) {
                    j(syVar2, 0L, j2 + 1);
                }
                d23Var.skip(j2 + 1);
            }
            if (((bZ >> 4) & 1) == 1) {
                long j3 = d23Var.j((byte) 0, 0L, Long.MAX_VALUE);
                if (j3 == -1) {
                    throw new EOFException();
                }
                if (z) {
                    ui1Var = this;
                    ui1Var.j(syVar2, 0L, j3 + 1);
                } else {
                    ui1Var = this;
                }
                d23Var.skip(j3 + 1);
            } else {
                ui1Var = this;
            }
            if (z) {
                b(d23Var.A(), "FHCRC", (short) crc32.getValue());
                crc32.reset();
            }
            ui1Var.n = (byte) 1;
        }
        if (ui1Var.n == 1) {
            long j4 = syVar.o;
            long jL = ui1Var.q.l(j, syVar);
            if (jL != -1) {
                ui1Var.j(syVar, j4, jL);
                return jL;
            }
            ui1Var.n = (byte) 2;
        }
        if (ui1Var.n == 2) {
            b(d23Var.r(), "CRC", (int) crc32.getValue());
            b(d23Var.r(), "ISIZE", (int) ui1Var.p.getBytesWritten());
            ui1Var.n = (byte) 3;
            if (!d23Var.b()) {
                p61.k("gzip finished without exhausting source");
                return 0L;
            }
        }
        return -1L;
    }
}
