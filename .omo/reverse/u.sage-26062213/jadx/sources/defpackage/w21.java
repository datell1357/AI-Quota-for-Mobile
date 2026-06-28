package defpackage;

import java.io.IOException;
import java.net.ProtocolException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w21 extends bc1 {
    public final long o;
    public final boolean p;
    public long q;
    public boolean r;
    public boolean s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ mu0 f389u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w21(mu0 mu0Var, yp3 yp3Var, long j, boolean z) {
        super(yp3Var);
        yp3Var.getClass();
        this.f389u = mu0Var;
        this.o = j;
        this.p = z;
        this.r = true;
        if (j == 0) {
            b(null);
        }
    }

    public final IOException b(IOException iOException) {
        if (this.s) {
            return iOException;
        }
        this.s = true;
        if (iOException == null && this.r) {
            this.r = false;
        }
        return mu0.a(this.f389u, this.p, iOException, 8);
    }

    @Override // defpackage.bc1, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.t) {
            return;
        }
        this.t = true;
        try {
            super.close();
            b(null);
        } catch (IOException e) {
            IOException iOExceptionB = b(e);
            iOExceptionB.getClass();
            throw iOExceptionB;
        }
    }

    @Override // defpackage.bc1, defpackage.yp3
    public final long l(long j, sy syVar) throws IOException {
        mu0 mu0Var = this.f389u;
        syVar.getClass();
        if (this.t) {
            k21.n("closed");
            return 0L;
        }
        try {
            long jL = this.n.l(j, syVar);
            if (this.r) {
                this.r = false;
            }
            if (jL == -1) {
                b(null);
                return -1L;
            }
            long j2 = this.q + jL;
            long j3 = this.o;
            if (j3 == -1 || j2 <= j3) {
                this.q = j2;
                if (((y21) mu0Var.d).j()) {
                    b(null);
                }
                return jL;
            }
            throw new ProtocolException("expected " + j3 + " bytes but received " + j2);
        } catch (IOException e) {
            IOException iOExceptionB = b(e);
            iOExceptionB.getClass();
            throw iOExceptionB;
        }
    }
}
