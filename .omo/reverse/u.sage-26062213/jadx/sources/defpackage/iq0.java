package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class iq0 implements yp3 {
    public final InputStream n;
    public final lp3 o;
    public final /* synthetic */ qd1 p;

    public iq0(qd1 qd1Var) {
        this.p = qd1Var;
        Socket socket = (Socket) qd1Var.o;
        this.n = socket.getInputStream();
        this.o = new lp3(socket);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        int i;
        qd1 qd1Var = this.p;
        lp3 lp3Var = this.o;
        lp3Var.h();
        try {
            AtomicInteger atomicInteger = (AtomicInteger) qd1Var.p;
            Socket socket = (Socket) qd1Var.o;
            atomicInteger.getClass();
            while (true) {
                int i2 = atomicInteger.get();
                if ((i2 & 2) != 0) {
                    i = 0;
                    break;
                }
                int i3 = i2 | 2;
                if (atomicInteger.compareAndSet(i2, i3)) {
                    i = i3;
                    break;
                }
            }
            if (i != 0) {
                if (i == 3) {
                    socket.close();
                } else {
                    if (socket.isClosed() || socket.isInputShutdown()) {
                        return;
                    }
                    try {
                        socket.shutdownInput();
                    } catch (UnsupportedOperationException unused) {
                        this.n.close();
                    }
                }
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
        lp3 lp3Var = this.o;
        lp3Var.f();
        qg3 qg3VarZ = syVar.Z(1);
        int iMin = (int) Math.min(j, 8192 - qg3VarZ.c);
        try {
            lp3Var.h();
            try {
                int i = this.n.read(qg3VarZ.a, qg3VarZ.c, iMin);
                if (lp3Var.i()) {
                    throw lp3Var.j(null);
                }
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
            } catch (IOException e) {
                if (lp3Var.i()) {
                    throw lp3Var.j(e);
                }
                throw e;
            } finally {
                lp3Var.i();
            }
        } catch (AssertionError e2) {
            if (ei4.a(e2)) {
                throw new IOException(e2);
            }
            throw e2;
        }
    }

    public final String toString() {
        return "source(" + ((Socket) this.p.o) + ')';
    }
}
