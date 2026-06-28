package defpackage;

import java.io.IOException;
import java.net.ProtocolException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v21 implements kn3 {
    public final kn3 n;
    public final long o;
    public final boolean p;
    public boolean q;
    public long r;
    public boolean s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ mu0 f367u;

    public v21(mu0 mu0Var, kn3 kn3Var, long j, boolean z) {
        kn3Var.getClass();
        this.f367u = mu0Var;
        this.n = kn3Var;
        this.o = j;
        this.p = z;
        this.s = z;
    }

    @Override // defpackage.kn3
    public final void J(long j, sy syVar) throws IOException {
        if (this.t) {
            k21.n("closed");
            return;
        }
        long j2 = this.o;
        if (j2 != -1 && this.r + j > j2) {
            throw new ProtocolException("expected " + j2 + " bytes but received " + (this.r + j));
        }
        try {
            if (this.s) {
                this.s = false;
            }
            this.n.J(j, syVar);
            this.r += j;
        } catch (IOException e) {
            IOException iOExceptionJ = j(e);
            iOExceptionJ.getClass();
            throw iOExceptionJ;
        }
    }

    public final void b() {
        this.n.close();
    }

    @Override // defpackage.kn3, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() throws IOException {
        if (this.t) {
            return;
        }
        this.t = true;
        long j = this.o;
        if (j != -1 && this.r != j) {
            throw new ProtocolException("unexpected end of stream");
        }
        try {
            b();
            j(null);
        } catch (IOException e) {
            IOException iOExceptionJ = j(e);
            iOExceptionJ.getClass();
            throw iOExceptionJ;
        }
    }

    @Override // defpackage.kn3, java.io.Flushable
    public final void flush() throws IOException {
        try {
            r();
        } catch (IOException e) {
            IOException iOExceptionJ = j(e);
            iOExceptionJ.getClass();
            throw iOExceptionJ;
        }
    }

    @Override // defpackage.kn3
    public final mz3 g() {
        return this.n.g();
    }

    public final IOException j(IOException iOException) {
        if (this.q) {
            return iOException;
        }
        this.q = true;
        return mu0.a(this.f367u, this.p, iOException, 4);
    }

    public final void r() {
        this.n.flush();
    }

    public final String toString() {
        return v21.class.getSimpleName() + '(' + this.n + ')';
    }
}
