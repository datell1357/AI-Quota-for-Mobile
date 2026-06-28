package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sq1 implements yp3 {
    public final d23 n;
    public final Inflater o;
    public int p;
    public boolean q;

    public sq1(d23 d23Var, Inflater inflater) {
        this.n = d23Var;
        this.o = inflater;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.q) {
            return;
        }
        this.o.end();
        this.q = true;
        this.n.close();
    }

    @Override // defpackage.yp3
    public final mz3 g() {
        return this.n.n.g();
    }

    @Override // defpackage.yp3
    public final long l(long j, sy syVar) throws IOException {
        long j2;
        syVar.getClass();
        while (j >= 0) {
            if (this.q) {
                k21.n("closed");
                return 0L;
            }
            d23 d23Var = this.n;
            Inflater inflater = this.o;
            if (j == 0) {
                j2 = 0;
            } else {
                try {
                    qg3 qg3VarZ = syVar.Z(1);
                    int iMin = (int) Math.min(j, 8192 - qg3VarZ.c);
                    if (inflater.needsInput() && !d23Var.b()) {
                        qg3 qg3Var = d23Var.o.n;
                        qg3Var.getClass();
                        int i = qg3Var.c;
                        int i2 = qg3Var.b;
                        int i3 = i - i2;
                        this.p = i3;
                        inflater.setInput(qg3Var.a, i2, i3);
                    }
                    int iInflate = inflater.inflate(qg3VarZ.a, qg3VarZ.c, iMin);
                    int i4 = this.p;
                    if (i4 != 0) {
                        int remaining = i4 - inflater.getRemaining();
                        this.p -= remaining;
                        d23Var.skip(remaining);
                    }
                    if (iInflate > 0) {
                        qg3VarZ.c += iInflate;
                        j2 = iInflate;
                        syVar.o += j2;
                    } else {
                        if (qg3VarZ.b == qg3VarZ.c) {
                            syVar.n = qg3VarZ.a();
                            sg3.a(qg3VarZ);
                        }
                        j2 = 0;
                    }
                } catch (DataFormatException e) {
                    throw new IOException(e);
                }
            }
            if (j2 > 0) {
                return j2;
            }
            if (inflater.finished() || inflater.needsDictionary()) {
                return -1L;
            }
            if (d23Var.b()) {
                throw new EOFException("source exhausted prematurely");
            }
        }
        k21.l(di0.s(j, "byteCount < 0: "));
        return 0L;
    }
}
