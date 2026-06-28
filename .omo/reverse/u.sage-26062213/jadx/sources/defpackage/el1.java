package defpackage;

import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class el1 implements yp3 {
    public final fz n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;

    public el1(fz fzVar) {
        fzVar.getClass();
        this.n = fzVar;
    }

    @Override // defpackage.yp3
    public final mz3 g() {
        return this.n.g();
    }

    @Override // defpackage.yp3
    public final long l(long j, sy syVar) throws IOException {
        int i;
        int i2;
        syVar.getClass();
        do {
            int i3 = this.r;
            fz fzVar = this.n;
            if (i3 == 0) {
                fzVar.skip(this.s);
                this.s = 0;
                if ((this.p & 4) == 0) {
                    i = this.q;
                    int iK = fi4.k(fzVar);
                    this.r = iK;
                    this.o = iK;
                    int i4 = fzVar.readByte() & 255;
                    this.p = fzVar.readByte() & 255;
                    Logger logger = fl1.q;
                    if (logger.isLoggable(Level.FINE)) {
                        g00 g00Var = tk1.a;
                        logger.fine(tk1.b(true, this.q, this.o, i4, this.p));
                    }
                    i2 = fzVar.readInt() & Api.BaseClientBuilder.API_PRIORITY_OTHER;
                    this.q = i2;
                    if (i4 != 9) {
                        throw new IOException(i4 + " != TYPE_CONTINUATION");
                    }
                }
            } else {
                long jL = fzVar.l(Math.min(j, i3), syVar);
                if (jL != -1) {
                    this.r -= (int) jL;
                    return jL;
                }
            }
            return -1L;
        } while (i2 == i);
        p61.k("TYPE_CONTINUATION streamId changed");
        return 0L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
