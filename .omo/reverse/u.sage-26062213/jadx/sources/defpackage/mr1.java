package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mr1 implements yp3 {
    public final InputStream n;
    public final mz3 o;

    public mr1(InputStream inputStream, mz3 mz3Var) {
        inputStream.getClass();
        this.n = inputStream;
        this.o = mz3Var;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.n.close();
    }

    @Override // defpackage.yp3
    public final mz3 g() {
        return this.o;
    }

    @Override // defpackage.yp3
    public final long l(long j, sy syVar) throws IOException {
        syVar.getClass();
        if (j == 0) {
            return 0L;
        }
        if (j < 0) {
            k21.l(di0.s(j, "byteCount < 0: "));
            return 0L;
        }
        try {
            this.o.f();
            qg3 qg3VarZ = syVar.Z(1);
            int i = this.n.read(qg3VarZ.a, qg3VarZ.c, (int) Math.min(j, 8192 - qg3VarZ.c));
            if (i != -1) {
                qg3VarZ.c += i;
                long j2 = i;
                syVar.o += j2;
                return j2;
            }
            if (qg3VarZ.b != qg3VarZ.c) {
                return -1L;
            }
            syVar.n = qg3VarZ.a();
            sg3.a(qg3VarZ);
            return -1L;
        } catch (AssertionError e) {
            if (ei4.a(e)) {
                throw new IOException(e);
            }
            throw e;
        }
    }

    public final String toString() {
        return "source(" + this.n + ')';
    }
}
