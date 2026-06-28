package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class s0 extends b1 {
    public static void g(s0 s0Var, boolean z) {
        p0 p0Var = null;
        while (true) {
            for (a1 a1VarY = b1.t.y(s0Var); a1VarY != null; a1VarY = a1VarY.b) {
                Thread thread = a1VarY.a;
                if (thread != null) {
                    a1VarY.a = null;
                    LockSupport.unpark(thread);
                }
            }
            if (z) {
                s0Var.k();
                z = false;
            }
            s0Var.e();
            p0 p0Var2 = p0Var;
            p0 p0VarX = b1.t.x(s0Var);
            p0 p0Var3 = p0Var2;
            while (p0VarX != null) {
                p0 p0Var4 = p0VarX.c;
                p0VarX.c = p0Var3;
                p0Var3 = p0VarX;
                p0VarX = p0Var4;
            }
            while (p0Var3 != null) {
                p0Var = p0Var3.c;
                Runnable runnable = p0Var3.a;
                Objects.requireNonNull(runnable);
                if (runnable instanceof m0) {
                    m0 m0Var = (m0) runnable;
                    s0Var = m0Var.n;
                    if (s0Var.n == m0Var) {
                        if (b1.t.k(s0Var, m0Var, j(m0Var.o))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = p0Var3.b;
                    Objects.requireNonNull(executor);
                    h(runnable, executor);
                }
                p0Var3 = p0Var;
            }
            return;
        }
    }

    public static void h(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            b1.r.a().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    public static Object i(Object obj) throws ExecutionException {
        if (obj instanceof l0) {
            Throwable th = ((l0) obj).b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof o0) {
            throw new ExecutionException(((o0) obj).a);
        }
        if (obj == b1.q) {
            return null;
        }
        return obj;
    }

    public static Object j(ListenableFuture listenableFuture) {
        Object obj;
        Throwable thC;
        if (listenableFuture instanceof q0) {
            Object l0Var = ((s0) listenableFuture).n;
            if (l0Var instanceof l0) {
                l0 l0Var2 = (l0) l0Var;
                if (l0Var2.a) {
                    l0Var = l0Var2.b != null ? new l0(l0Var2.b, false) : l0.d;
                }
            }
            Objects.requireNonNull(l0Var);
            return l0Var;
        }
        if ((listenableFuture instanceof b1) && (thC = ((b1) listenableFuture).c()) != null) {
            return new o0(thC);
        }
        boolean zIsCancelled = listenableFuture.isCancelled();
        boolean z = true;
        if ((!b1.s) && zIsCancelled) {
            l0 l0Var3 = l0.d;
            Objects.requireNonNull(l0Var3);
            return l0Var3;
        }
        boolean z2 = false;
        while (true) {
            try {
                try {
                    try {
                        obj = listenableFuture.get();
                        break;
                    } catch (Error e) {
                        e = e;
                        return new o0(e);
                    }
                } catch (InterruptedException unused) {
                    z2 = z;
                } catch (Throwable th) {
                    if (z2) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (Error | Exception e2) {
                e = e2;
                return new o0(e);
            } catch (CancellationException e3) {
                if (zIsCancelled) {
                    return new l0(e3, false);
                }
                return new o0(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + listenableFuture, e3));
            } catch (ExecutionException e4) {
                if (!zIsCancelled) {
                    return new o0(e4.getCause());
                }
                return new l0(new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + listenableFuture, e4), false);
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        if (!zIsCancelled) {
            return obj == null ? b1.q : obj;
        }
        return new l0(new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + listenableFuture), false);
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void a(Runnable runnable, Executor executor) {
        p0 p0Var;
        p0 p0Var2 = p0.d;
        n44.X(executor, "Executor was null.");
        if (!isDone() && (p0Var = this.o) != p0Var2) {
            p0 p0Var3 = new p0(runnable, executor);
            do {
                p0Var3.c = p0Var;
                if (b1.t.j(this, p0Var, p0Var3)) {
                    return;
                } else {
                    p0Var = this.o;
                }
            } while (p0Var != p0Var2);
        }
        h(runnable, executor);
    }

    @Override // defpackage.b1
    public final Throwable c() {
        if (!(this instanceof q0)) {
            return null;
        }
        Object obj = this.n;
        if (obj instanceof o0) {
            return ((o0) obj).a;
        }
        return null;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        l0 l0Var;
        Object obj = this.n;
        if (!(obj == null) && !(obj instanceof m0)) {
            return false;
        }
        if (b1.s) {
            l0Var = new l0(new CancellationException("Future.cancel() was called."), z);
        } else {
            l0Var = z ? l0.c : l0.d;
            Objects.requireNonNull(l0Var);
        }
        boolean z2 = false;
        while (true) {
            if (b1.t.k(this, obj, l0Var)) {
                g(this, z);
                if (!(obj instanceof m0)) {
                    break;
                }
                ListenableFuture listenableFuture = ((m0) obj).o;
                if (!(listenableFuture instanceof q0)) {
                    listenableFuture.cancel(z);
                    break;
                }
                this = (s0) listenableFuture;
                obj = this.n;
                if (!(obj == null) && !(obj instanceof m0)) {
                    break;
                }
                z2 = true;
            } else {
                obj = this.n;
                if (!(obj instanceof m0)) {
                    return z2;
                }
            }
        }
        return true;
    }

    public final void d(StringBuilder sb) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                try {
                    obj = get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (CancellationException unused2) {
                sb.append("CANCELLED");
                return;
            } catch (ExecutionException e) {
                sb.append("FAILURE, cause=[");
                sb.append(e.getCause());
                sb.append("]");
                return;
            } catch (Exception e2) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e2.getClass());
                sb.append(" thrown from get()]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        f(sb, obj);
        sb.append("]");
    }

    public final void f(StringBuilder sb, Object obj) {
        if (obj == null) {
            sb.append("null");
        } else {
            if (obj == this) {
                sb.append("this future");
                return;
            }
            sb.append(obj.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }

    @Override // java.util.concurrent.Future
    public Object get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        boolean z;
        long j2;
        a1 a1Var = a1.c;
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.n;
        if ((obj != null) && (!(obj instanceof m0))) {
            return i(obj);
        }
        long j3 = 0;
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            a1 a1Var2 = this.p;
            if (a1Var2 != a1Var) {
                a1 a1Var3 = new a1();
                z = true;
                while (true) {
                    gg4 gg4Var = b1.t;
                    gg4Var.P(a1Var3, a1Var2);
                    if (gg4Var.l(this, a1Var2, a1Var3)) {
                        j2 = j3;
                        do {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                b(a1Var3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.n;
                            if ((obj2 != null) && (!(obj2 instanceof m0))) {
                                return i(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        b(a1Var3);
                    } else {
                        long j4 = j3;
                        a1Var2 = this.p;
                        if (a1Var2 == a1Var) {
                            break;
                        }
                        j3 = j4;
                    }
                }
            }
            Object obj3 = this.n;
            Objects.requireNonNull(obj3);
            return i(obj3);
        }
        z = true;
        j2 = 0;
        while (nanos > j2) {
            Object obj4 = this.n;
            if ((obj4 != null ? z : false) && (!(obj4 instanceof m0))) {
                return i(obj4);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String strConcat = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < j2) {
            String strConcat2 = strConcat.concat(" (plus ");
            long j5 = -nanos;
            long jConvert = timeUnit.convert(j5, TimeUnit.NANOSECONDS);
            long nanos2 = j5 - timeUnit.toNanos(jConvert);
            boolean z2 = (jConvert == j2 || nanos2 > 1000) ? z : false;
            if (jConvert > j2) {
                String strConcat3 = strConcat2 + jConvert + " " + lowerCase;
                if (z2) {
                    strConcat3 = strConcat3.concat(",");
                }
                strConcat2 = strConcat3.concat(" ");
            }
            if (z2) {
                strConcat2 = strConcat2 + nanos2 + " nanoseconds ";
            }
            strConcat = strConcat2.concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(strConcat.concat(" but future completed as timeout expired"));
        }
        throw new TimeoutException(strConcat + " for " + string);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.n instanceof l0;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return (!(r2 instanceof m0)) & (this.n != null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String l() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public boolean m(Object obj) {
        if (obj == null) {
            obj = b1.q;
        }
        if (!b1.t.k(this, null, obj)) {
            return false;
        }
        g(this, false);
        return true;
    }

    public boolean n(Throwable th) {
        th.getClass();
        if (!b1.t.k(this, null, new o0(th))) {
            return false;
        }
        g(this, false);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean o(com.google.common.util.concurrent.ListenableFuture r6) {
        /*
            r5 = this;
            r6.getClass()
            java.lang.Object r0 = r5.n
            r1 = 0
            if (r0 != 0) goto L44
            boolean r0 = r6.isDone()
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L20
            java.lang.Object r6 = j(r6)
            gg4 r0 = defpackage.b1.t
            boolean r6 = r0.k(r5, r3, r6)
            if (r6 == 0) goto L4f
            g(r5, r1)
            return r2
        L20:
            m0 r0 = new m0
            r0.<init>(r5, r6)
            gg4 r4 = defpackage.b1.t
            boolean r3 = r4.k(r5, r3, r0)
            if (r3 == 0) goto L42
            fu0 r1 = defpackage.fu0.n     // Catch: java.lang.Throwable -> L33
            r6.a(r0, r1)     // Catch: java.lang.Throwable -> L33
            return r2
        L33:
            r6 = move-exception
            o0 r1 = new o0     // Catch: java.lang.Throwable -> L3a
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L3a
            goto L3c
        L3a:
            o0 r1 = defpackage.o0.b
        L3c:
            gg4 r6 = defpackage.b1.t
            r6.k(r5, r0, r1)
            return r2
        L42:
            java.lang.Object r0 = r5.n
        L44:
            boolean r5 = r0 instanceof defpackage.l0
            if (r5 == 0) goto L4f
            l0 r0 = (defpackage.l0) r0
            boolean r5 = r0.a
            r6.cancel(r5)
        L4f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.s0.o(com.google.common.util.concurrent.ListenableFuture):boolean");
    }

    public final boolean p() {
        Object obj = this.n;
        return (obj instanceof l0) && ((l0) obj).a;
    }

    public String toString() {
        String strL;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            d(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.n;
            if (obj instanceof m0) {
                sb.append(", setFuture=[");
                ListenableFuture listenableFuture = ((m0) obj).o;
                try {
                    if (listenableFuture == this) {
                        sb.append("this future");
                    } else {
                        sb.append(listenableFuture);
                    }
                } catch (Throwable th) {
                    if ((th instanceof Error) && !(th instanceof StackOverflowError)) {
                        throw th;
                    }
                    sb.append("Exception thrown from implementation: ");
                    sb.append(th.getClass());
                }
                sb.append("]");
            } else {
                try {
                    strL = l();
                    if (zf5.V(strL)) {
                        strL = null;
                    }
                } catch (Throwable th2) {
                    if ((th2 instanceof Error) && !(th2 instanceof StackOverflowError)) {
                        throw th2;
                    }
                    strL = "Exception thrown from implementation: " + th2.getClass();
                }
                if (strL != null) {
                    sb.append(", info=[");
                    sb.append(strL);
                    sb.append("]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                d(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public void e() {
    }

    public void k() {
    }

    @Override // java.util.concurrent.Future
    public Object get() throws InterruptedException {
        Object obj;
        a1 a1Var = a1.c;
        if (!Thread.interrupted()) {
            Object obj2 = this.n;
            if ((obj2 != null) & (!(obj2 instanceof m0))) {
                return i(obj2);
            }
            a1 a1Var2 = this.p;
            if (a1Var2 != a1Var) {
                a1 a1Var3 = new a1();
                do {
                    gg4 gg4Var = b1.t;
                    gg4Var.P(a1Var3, a1Var2);
                    if (gg4Var.l(this, a1Var2, a1Var3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.n;
                            } else {
                                b(a1Var3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof m0))));
                        return i(obj);
                    }
                    a1Var2 = this.p;
                } while (a1Var2 != a1Var);
            }
            Object obj3 = this.n;
            Objects.requireNonNull(obj3);
            return i(obj3);
        }
        throw new InterruptedException();
    }
}
