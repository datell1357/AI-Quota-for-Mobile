package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class bc1 implements yp3 {
    public final yp3 n;

    public bc1(yp3 yp3Var) {
        yp3Var.getClass();
        this.n = yp3Var;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.n.close();
    }

    @Override // defpackage.yp3
    public final mz3 g() {
        return this.n.g();
    }

    @Override // defpackage.yp3
    public long l(long j, sy syVar) {
        syVar.getClass();
        return this.n.l(j, syVar);
    }

    public final String toString() {
        return getClass().getSimpleName() + '(' + this.n + ')';
    }
}
