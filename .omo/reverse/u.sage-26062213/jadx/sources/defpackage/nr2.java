package defpackage;

import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nr2 implements kn3 {
    public final FileOutputStream n;
    public final mz3 o;

    public nr2(FileOutputStream fileOutputStream, mz3 mz3Var) {
        this.n = fileOutputStream;
        this.o = mz3Var;
    }

    @Override // defpackage.kn3
    public final void J(long j, sy syVar) throws IOException {
        is0.q(syVar.o, 0L, j);
        while (j > 0) {
            this.o.f();
            qg3 qg3Var = syVar.n;
            qg3Var.getClass();
            int iMin = (int) Math.min(j, qg3Var.c - qg3Var.b);
            this.n.write(qg3Var.a, qg3Var.b, iMin);
            int i = qg3Var.b + iMin;
            qg3Var.b = i;
            long j2 = iMin;
            j -= j2;
            syVar.o -= j2;
            if (i == qg3Var.c) {
                syVar.n = qg3Var.a();
                sg3.a(qg3Var);
            }
        }
    }

    @Override // defpackage.kn3, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() throws IOException {
        this.n.close();
    }

    @Override // defpackage.kn3, java.io.Flushable
    public final void flush() throws IOException {
        this.n.flush();
    }

    @Override // defpackage.kn3
    public final mz3 g() {
        return this.o;
    }

    public final String toString() {
        return "sink(" + this.n + ')';
    }
}
