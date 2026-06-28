package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rk1 extends nk1 {
    public boolean r;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.p) {
            return;
        }
        if (!this.r) {
            b(sk1.f);
        }
        this.p = true;
    }

    @Override // defpackage.nk1, defpackage.yp3
    public final long l(long j, sy syVar) throws IOException {
        syVar.getClass();
        if (j < 0) {
            k21.l(di0.s(j, "byteCount < 0: "));
            return 0L;
        }
        if (this.p) {
            k21.n("closed");
            return 0L;
        }
        if (this.r) {
            return -1L;
        }
        long jL = super.l(j, syVar);
        if (jL != -1) {
            return jL;
        }
        this.r = true;
        b(kj1.o);
        return -1L;
    }
}
