package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hq0 implements kn3 {
    public final OutputStream n;
    public final lp3 o;
    public final /* synthetic */ qd1 p;

    public hq0(qd1 qd1Var) {
        this.p = qd1Var;
        Socket socket = (Socket) qd1Var.o;
        this.n = socket.getOutputStream();
        this.o = new lp3(socket);
    }

    @Override // defpackage.kn3
    public final void J(long j, sy syVar) throws IOException {
        is0.q(syVar.o, 0L, j);
        while (j > 0) {
            lp3 lp3Var = this.o;
            lp3Var.f();
            qg3 qg3Var = syVar.n;
            qg3Var.getClass();
            int iMin = (int) Math.min(j, qg3Var.c - qg3Var.b);
            lp3Var.h();
            try {
                try {
                    this.n.write(qg3Var.a, qg3Var.b, iMin);
                    if (lp3Var.i()) {
                        throw lp3Var.j(null);
                    }
                    int i = qg3Var.b + iMin;
                    qg3Var.b = i;
                    long j2 = iMin;
                    j -= j2;
                    syVar.o -= j2;
                    if (i == qg3Var.c) {
                        syVar.n = qg3Var.a();
                        sg3.a(qg3Var);
                    }
                } catch (IOException e) {
                    if (!lp3Var.i()) {
                        throw e;
                    }
                    throw lp3Var.j(e);
                }
            } catch (Throwable th) {
                lp3Var.i();
                throw th;
            }
        }
    }

    @Override // defpackage.kn3, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() throws IOException {
        int i;
        OutputStream outputStream = this.n;
        qd1 qd1Var = this.p;
        lp3 lp3Var = this.o;
        lp3Var.h();
        try {
            AtomicInteger atomicInteger = (AtomicInteger) qd1Var.p;
            Socket socket = (Socket) qd1Var.o;
            atomicInteger.getClass();
            while (true) {
                int i2 = atomicInteger.get();
                if ((i2 & 1) != 0) {
                    i = 0;
                    break;
                }
                int i3 = i2 | 1;
                if (atomicInteger.compareAndSet(i2, i3)) {
                    i = i3;
                    break;
                }
            }
            if (i != 0) {
                if (i != 3) {
                    if (!socket.isClosed() && !socket.isOutputShutdown()) {
                        outputStream.flush();
                        try {
                            socket.shutdownOutput();
                        } catch (UnsupportedOperationException unused) {
                            outputStream.close();
                        }
                    }
                    return;
                }
                socket.close();
                if (lp3Var.i()) {
                    throw lp3Var.j(null);
                }
            }
        } catch (IOException e) {
            if (!lp3Var.i()) {
                throw e;
            }
            throw lp3Var.j(e);
        } finally {
            lp3Var.i();
        }
    }

    @Override // defpackage.kn3, java.io.Flushable
    public final void flush() throws IOException {
        lp3 lp3Var = this.o;
        lp3Var.h();
        try {
            this.n.flush();
            if (lp3Var.i()) {
                throw lp3Var.j(null);
            }
        } catch (IOException e) {
            if (!lp3Var.i()) {
                throw e;
            }
            throw lp3Var.j(e);
        } finally {
            lp3Var.i();
        }
    }

    @Override // defpackage.kn3
    public final mz3 g() {
        return this.o;
    }

    public final String toString() {
        return "sink(" + ((Socket) this.p.o) + ')';
    }
}
