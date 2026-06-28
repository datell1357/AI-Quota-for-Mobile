package defpackage;

import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i23 extends zk1 implements x21 {
    public final tw3 b;
    public final qa3 c;
    public final Socket d;
    public final Socket e;
    public final aj1 f;
    public final d03 g;
    public final eh h;
    public cl1 i;
    public boolean j;
    public boolean k;
    public int l;
    public int m;
    public int n;
    public int o;
    public final ArrayList p;
    public long q;

    public i23(tw3 tw3Var, az0 az0Var, qa3 qa3Var, Socket socket, Socket socket2, aj1 aj1Var, d03 d03Var, eh ehVar) {
        tw3Var.getClass();
        az0Var.getClass();
        qa3Var.getClass();
        socket.getClass();
        socket2.getClass();
        d03Var.getClass();
        ehVar.getClass();
        this.b = tw3Var;
        this.c = qa3Var;
        this.d = socket;
        this.e = socket2;
        this.f = aj1Var;
        this.g = d03Var;
        this.h = ehVar;
        this.o = 1;
        this.p = new ArrayList();
        this.q = Long.MAX_VALUE;
    }

    public static void c(io2 io2Var, qa3 qa3Var, IOException iOException) {
        qa3Var.getClass();
        iOException.getClass();
        if (qa3Var.b.type() != Proxy.Type.DIRECT) {
            e7 e7Var = qa3Var.a;
            e7Var.g.connectFailed(e7Var.h.g(), qa3Var.b.address(), iOException);
        }
        ra3 ra3Var = io2Var.y;
        synchronized (ra3Var) {
            ((LinkedHashSet) ra3Var.o).add(qa3Var);
        }
    }

    @Override // defpackage.zk1
    public final void a(cl1 cl1Var, lk3 lk3Var) {
        lk3Var.getClass();
        synchronized (this) {
            this.o = (lk3Var.a & 8) != 0 ? lk3Var.b[3] : Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
    }

    @Override // defpackage.zk1
    public final void b(jl1 jl1Var) {
        jl1Var.c(d21.t, null);
    }

    @Override // defpackage.x21
    public final void cancel() {
        hi4.b(this.d);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(defpackage.e7 r9, java.util.List r10) {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i23.d(e7, java.util.List):boolean");
    }

    public final boolean e(boolean z) {
        long j;
        TimeZone timeZone = hi4.a;
        long jNanoTime = System.nanoTime();
        if (this.d.isClosed() || this.e.isClosed() || this.e.isInputShutdown() || this.e.isOutputShutdown()) {
            return false;
        }
        cl1 cl1Var = this.i;
        if (cl1Var != null) {
            synchronized (cl1Var) {
                if (cl1Var.s) {
                    return false;
                }
                if (cl1Var.A < cl1Var.z) {
                    if (jNanoTime >= cl1Var.B) {
                        return false;
                    }
                }
                return true;
            }
        }
        synchronized (this) {
            j = jNanoTime - this.q;
        }
        if (j < 10000000000L || !z) {
            return true;
        }
        Socket socket = this.e;
        d23 d23Var = (d23) this.h.p;
        socket.getClass();
        d23Var.getClass();
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                return !d23Var.b();
            } finally {
                socket.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public final void f() throws SocketException {
        this.q = System.nanoTime();
        d03 d03Var = this.g;
        if (d03Var == d03.HTTP_2 || d03Var == d03.H2_PRIOR_KNOWLEDGE) {
            this.e.setSoTimeout(0);
            w13 w13Var = w13.r;
            c81 c81Var = c81.a;
            rp rpVar = new rp(this.b);
            eh ehVar = this.h;
            String str = this.c.a.h.d;
            ehVar.getClass();
            str.getClass();
            rpVar.c = ehVar;
            rpVar.d = hi4.b + ' ' + str;
            rpVar.e = this;
            rpVar.f = c81Var;
            cl1 cl1Var = new cl1(rpVar);
            this.i = cl1Var;
            lk3 lk3Var = cl1.M;
            this.o = (lk3Var.a & 8) != 0 ? lk3Var.b[3] : Api.BaseClientBuilder.API_PRIORITY_OTHER;
            kl1 kl1Var = cl1Var.J;
            synchronized (kl1Var) {
                try {
                    if (kl1Var.q) {
                        throw new IOException("closed");
                    }
                    Logger logger = kl1.s;
                    if (logger.isLoggable(Level.FINE)) {
                        logger.fine(hi4.c(">> CONNECTION " + tk1.a.d(), new Object[0]));
                    }
                    kl1Var.n.m(tk1.a);
                    kl1Var.n.flush();
                } catch (Throwable th) {
                    throw th;
                }
            }
            kl1 kl1Var2 = cl1Var.J;
            lk3 lk3Var2 = cl1Var.D;
            kl1Var2.getClass();
            lk3Var2.getClass();
            synchronized (kl1Var2) {
                try {
                    if (kl1Var2.q) {
                        throw new IOException("closed");
                    }
                    kl1Var2.r(0, Integer.bitCount(lk3Var2.a) * 6, 4, 0);
                    for (int i = 0; i < 10; i++) {
                        boolean z = true;
                        if (((1 << i) & lk3Var2.a) == 0) {
                            z = false;
                        }
                        if (z) {
                            kl1Var2.n.writeShort(i);
                            kl1Var2.n.writeInt(lk3Var2.b[i]);
                        }
                    }
                    kl1Var2.n.flush();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (cl1Var.D.a() != 65535) {
                cl1Var.J.K(0, r7 - 65535);
            }
            sw3.b(cl1Var.t.d(), cl1Var.p, cl1Var.K);
        }
    }

    @Override // defpackage.x21
    public final qa3 i() {
        return this.c;
    }

    @Override // defpackage.x21
    public final void j(h23 h23Var, IOException iOException) {
        synchronized (this) {
            try {
                if (!(iOException instanceof ss3)) {
                    if (!(this.i != null) || (iOException instanceof ke0)) {
                        this.j = true;
                        if (this.m == 0) {
                            if (iOException != null) {
                                c(h23Var.n, this.c, iOException);
                            }
                            this.l++;
                        }
                    }
                } else if (((ss3) iOException).n == d21.t) {
                    int i = this.n + 1;
                    this.n = i;
                    if (i > 1) {
                        this.j = true;
                        this.l++;
                    }
                } else if (((ss3) iOException).n != d21.f62u || !h23Var.C) {
                    this.j = true;
                    this.l++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.x21
    public final void k() {
        synchronized (this) {
            this.j = true;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Connection{");
        qa3 qa3Var = this.c;
        sb.append(qa3Var.a.h.d);
        sb.append(':');
        sb.append(qa3Var.a.h.e);
        sb.append(", proxy=");
        sb.append(qa3Var.b);
        sb.append(" hostAddress=");
        sb.append(qa3Var.c);
        sb.append(" cipherSuite=");
        aj1 aj1Var = this.f;
        sb.append(aj1Var != null ? aj1Var.b : "none");
        sb.append(" protocol=");
        sb.append(this.g);
        sb.append('}');
        return sb.toString();
    }
}
