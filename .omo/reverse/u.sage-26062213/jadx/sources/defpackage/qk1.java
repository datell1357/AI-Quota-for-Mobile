package defpackage;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qk1 extends nk1 {
    public long r;
    public final /* synthetic */ sk1 s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qk1(sk1 sk1Var, cn1 cn1Var, long j) {
        super(sk1Var, cn1Var);
        cn1Var.getClass();
        this.s = sk1Var;
        this.r = j;
        if (j == 0) {
            b(kj1.o);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        boolean zE;
        if (this.p) {
            return;
        }
        if (this.r != 0) {
            TimeZone timeZone = hi4.a;
            TimeUnit.MILLISECONDS.getClass();
            try {
                zE = hi4.e(this, 100);
            } catch (IOException unused) {
                zE = false;
            }
            if (!zE) {
                this.s.b.k();
                b(sk1.f);
            }
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
        long j2 = this.r;
        if (j2 == 0) {
            return -1L;
        }
        long jL = super.l(Math.min(j2, j), syVar);
        if (jL == -1) {
            this.s.b.k();
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            b(sk1.f);
            throw protocolException;
        }
        long j3 = this.r - jL;
        this.r = j3;
        if (j3 == 0) {
            b(kj1.o);
        }
        return jL;
    }
}
