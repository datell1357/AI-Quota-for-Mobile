package defpackage;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h23 implements Cloneable {
    public boolean A;
    public boolean B;
    public volatile boolean C;
    public volatile mu0 D;
    public final CopyOnWriteArrayList E;
    public final io2 n;
    public final k63 o;
    public final az0 p;
    public final g23 q;
    public final AtomicBoolean r;
    public Object s;
    public z21 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public i23 f117u;
    public boolean v;
    public mu0 w;
    public boolean x;
    public boolean y;
    public boolean z;

    public h23(io2 io2Var, k63 k63Var) {
        this.n = io2Var;
        this.o = k63Var;
        this.p = (az0) io2Var.A.o;
        io2Var.d.getClass();
        g23 g23Var = new g23(this);
        g23Var.g(0L);
        this.q = g23Var;
        this.r = new AtomicBoolean();
        this.B = true;
        this.E = new CopyOnWriteArrayList();
        new AtomicReference(k63Var.e);
    }

    public static final String a(h23 h23Var) {
        StringBuilder sb = new StringBuilder();
        sb.append(h23Var.C ? "canceled " : "");
        sb.append("call");
        sb.append(" to ");
        sb.append(h23Var.o.a.f());
        return sb.toString();
    }

    public final void b(i23 i23Var) {
        i23Var.getClass();
        TimeZone timeZone = hi4.a;
        if (this.f117u != null) {
            k21.n("Check failed.");
        } else {
            this.f117u = i23Var;
            i23Var.p.add(new f23(this, this.s));
        }
    }

    public final IOException c(IOException iOException) {
        IOException interruptedIOException;
        Socket socketI;
        TimeZone timeZone = hi4.a;
        i23 i23Var = this.f117u;
        if (i23Var != null) {
            synchronized (i23Var) {
                socketI = i();
            }
            if (this.f117u == null) {
                if (socketI != null) {
                    hi4.b(socketI);
                }
            } else if (socketI != null) {
                k21.n("Check failed.");
                return null;
            }
        }
        if (!this.v && this.q.i()) {
            interruptedIOException = new InterruptedIOException("timeout");
            if (iOException != null) {
                interruptedIOException.initCause(iOException);
            }
        } else {
            interruptedIOException = iOException;
        }
        if (iOException != null) {
            interruptedIOException.getClass();
        }
        return interruptedIOException;
    }

    public final Object clone() {
        return new h23(this.n, this.o);
    }

    public final void d() {
        if (this.C) {
            return;
        }
        this.C = true;
        mu0 mu0Var = this.D;
        if (mu0Var != null) {
            ((y21) mu0Var.d).cancel();
        }
        Iterator it = this.E.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((wa3) it.next()).cancel();
        }
    }

    public final void e(boolean z) {
        mu0 mu0Var;
        synchronized (this) {
            if (!this.B) {
                throw new IllegalStateException("released");
            }
        }
        if (z && (mu0Var = this.D) != null) {
            ((y21) mu0Var.d).cancel();
            ((h23) mu0Var.b).g(mu0Var, true, true, true, true, null);
        }
        this.w = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.w73 f() {
        /*
            r9 = this;
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            io2 r0 = r9.n
            java.util.List r0 = r0.b
            defpackage.o70.d0(r0, r2)
            vx r0 = new vx
            io2 r1 = r9.n
            r0.<init>(r1)
            r2.add(r0)
            vx r0 = new vx
            io2 r1 = r9.n
            mj1 r1 = r1.j
            r0.<init>(r1)
            r2.add(r0)
            v10 r0 = new v10
            r1 = 2
            r0.<init>(r1)
            r2.add(r0)
            v10 r0 = defpackage.v10.c
            r2.add(r0)
            io2 r0 = r9.n
            java.util.List r0 = r0.c
            defpackage.o70.d0(r0, r2)
            v10 r0 = defpackage.v10.b
            r2.add(r0)
            q23 r0 = new q23
            k63 r5 = r9.o
            io2 r1 = r9.n
            int r6 = r1.v
            int r7 = r1.w
            int r8 = r1.x
            r3 = 0
            r4 = 0
            r1 = r9
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            r9 = 0
            r2 = 0
            w73 r0 = r0.b(r5)     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L69
            boolean r3 = r1.C     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L69
            if (r3 != 0) goto L5c
            r1.h(r9)
            return r0
        L5c:
            defpackage.fi4.a(r0)     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L69
            java.io.IOException r0 = new java.io.IOException     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L69
            java.lang.String r3 = "Canceled"
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L69
            throw r0     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L69
        L67:
            r0 = move-exception
            goto L73
        L69:
            r0 = move-exception
            r2 = 1
            java.io.IOException r0 = r1.h(r0)     // Catch: java.lang.Throwable -> L67
            r0.getClass()     // Catch: java.lang.Throwable -> L67
            throw r0     // Catch: java.lang.Throwable -> L67
        L73:
            if (r2 != 0) goto L78
            r1.h(r9)
        L78:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.h23.f():w73");
    }

    public final IOException g(mu0 mu0Var, boolean z, boolean z2, boolean z3, boolean z4, IOException iOException) {
        boolean z5;
        boolean z6;
        mu0Var.getClass();
        if (mu0Var.equals(this.D)) {
            synchronized (this) {
                z5 = false;
                if (z) {
                    try {
                        if (!this.x) {
                            if ((z2 || !this.y) && ((!z4 || !this.z) && (!z3 || !this.A))) {
                            }
                        }
                        if (z) {
                            this.x = false;
                        }
                        if (z2) {
                            this.y = false;
                        }
                        if (z4) {
                            this.z = false;
                        }
                        if (z3) {
                            this.A = false;
                        }
                        boolean z7 = (this.x || this.y || this.z || this.A) ? false : true;
                        if (z7) {
                            if (!this.B) {
                                z5 = true;
                            }
                        }
                        boolean z8 = z5;
                        z5 = z7;
                        z6 = z8;
                    } catch (Throwable th) {
                        throw th;
                    }
                } else {
                    z6 = z2 ? false : false;
                }
            }
            if (z5) {
                this.D = null;
                i23 i23Var = this.f117u;
                if (i23Var != null) {
                    synchronized (i23Var) {
                        i23Var.m++;
                    }
                }
            }
            if (z6) {
                return c(iOException);
            }
        }
        return iOException;
    }

    public final IOException h(IOException iOException) {
        boolean z;
        synchronized (this) {
            z = false;
            if (this.B) {
                this.B = false;
                if (!this.x && !this.y && !this.z) {
                    if (!this.A) {
                        z = true;
                    }
                }
            }
        }
        return z ? c(iOException) : iOException;
    }

    public final Socket i() {
        i23 i23Var = this.f117u;
        i23Var.getClass();
        TimeZone timeZone = hi4.a;
        ArrayList arrayList = i23Var.p;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i = -1;
                break;
            }
            Object obj = arrayList.get(i2);
            i2++;
            if (nt1.g(((Reference) obj).get(), this)) {
                break;
            }
            i++;
        }
        if (i == -1) {
            k21.n("Check failed.");
            return null;
        }
        arrayList.remove(i);
        this.f117u = null;
        if (!arrayList.isEmpty()) {
            return null;
        }
        i23Var.q = System.nanoTime();
        az0 az0Var = this.p;
        ConcurrentLinkedQueue concurrentLinkedQueue = (ConcurrentLinkedQueue) az0Var.d;
        TimeZone timeZone2 = hi4.a;
        if (!i23Var.j) {
            ((sw3) az0Var.b).c((j23) az0Var.c, 0L);
            return null;
        }
        i23Var.j = true;
        concurrentLinkedQueue.remove(i23Var);
        if (concurrentLinkedQueue.isEmpty()) {
            sw3 sw3Var = (sw3) az0Var.b;
            synchronized (sw3Var.a) {
                if (sw3Var.a()) {
                    sw3Var.a.c(sw3Var);
                }
            }
        }
        return i23Var.e;
    }
}
