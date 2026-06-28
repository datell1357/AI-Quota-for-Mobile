package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class b2 implements ListenableFuture {
    public static final boolean q = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    public static final Logger r = Logger.getLogger(b2.class.getName());
    public static final kt4 s;
    public static final Object t;
    public volatile Object n;
    public volatile x1 o;
    public volatile a2 p;

    static {
        kt4 z1Var;
        try {
            z1Var = new y1(AtomicReferenceFieldUpdater.newUpdater(a2.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(a2.class, a2.class, "b"), AtomicReferenceFieldUpdater.newUpdater(b2.class, a2.class, "p"), AtomicReferenceFieldUpdater.newUpdater(b2.class, x1.class, "o"), AtomicReferenceFieldUpdater.newUpdater(b2.class, Object.class, "n"));
            th = null;
        } catch (Throwable th) {
            th = th;
            z1Var = new z1(6);
        }
        s = z1Var;
        if (th != null) {
            r.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        t = new Object();
    }

    public static void d(b2 b2Var) {
        a2 a2Var;
        x1 x1Var;
        x1 x1Var2;
        x1 x1Var3;
        do {
            a2Var = b2Var.p;
        } while (!s.t(b2Var, a2Var, a2.c));
        while (true) {
            x1Var = null;
            if (a2Var == null) {
                break;
            }
            Thread thread = a2Var.a;
            if (thread != null) {
                a2Var.a = null;
                LockSupport.unpark(thread);
            }
            a2Var = a2Var.b;
        }
        b2Var.c();
        do {
            x1Var2 = b2Var.o;
        } while (!s.q(b2Var, x1Var2, x1.d));
        while (true) {
            x1Var3 = x1Var;
            x1Var = x1Var2;
            if (x1Var == null) {
                break;
            }
            x1Var2 = x1Var.c;
            x1Var.c = x1Var3;
        }
        while (x1Var3 != null) {
            x1 x1Var4 = x1Var3.c;
            e(x1Var3.a, x1Var3.b);
            x1Var3 = x1Var4;
        }
    }

    public static void e(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            r.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    public static Object f(Object obj) throws ExecutionException {
        if (obj instanceof u1) {
            Throwable th = ((u1) obj).b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof w1) {
            throw new ExecutionException(((w1) obj).a);
        }
        if (obj == t) {
            return null;
        }
        return obj;
    }

    public static Object g(Future future) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void a(Runnable runnable, Executor executor) {
        executor.getClass();
        x1 x1Var = this.o;
        x1 x1Var2 = x1.d;
        if (x1Var != x1Var2) {
            x1 x1Var3 = new x1(runnable, executor);
            do {
                x1Var3.c = x1Var;
                if (s.q(this, x1Var, x1Var3)) {
                    return;
                } else {
                    x1Var = this.o;
                }
            } while (x1Var != x1Var2);
        }
        e(runnable, executor);
    }

    public final void b(StringBuilder sb) {
        try {
            Object objG = g(this);
            sb.append("SUCCESS, result=[");
            sb.append(objG == this ? "this future" : String.valueOf(objG));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e2) {
            sb.append("FAILURE, cause=[");
            sb.append(e2.getCause());
            sb.append("]");
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        Object obj = this.n;
        if (obj == null) {
            if (s.s(this, obj, q ? new u1(new CancellationException("Future.cancel() was called."), z) : z ? u1.c : u1.d)) {
                d(this);
                return true;
            }
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        a2 a2Var = a2.c;
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.n;
        if (obj != null) {
            return f(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            a2 a2Var2 = this.p;
            if (a2Var2 != a2Var) {
                a2 a2Var3 = new a2();
                do {
                    kt4 kt4Var = s;
                    kt4Var.Y(a2Var3, a2Var2);
                    if (kt4Var.t(this, a2Var2, a2Var3)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                i(a2Var3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.n;
                            if (obj2 != null) {
                                return f(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        i(a2Var3);
                    } else {
                        a2Var2 = this.p;
                    }
                } while (a2Var2 != a2Var);
            }
            return f(this.n);
        }
        while (nanos > 0) {
            Object obj3 = this.n;
            if (obj3 != null) {
                return f(obj3);
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
        if (nanos + 1000 < 0) {
            String strConcat2 = strConcat.concat(" (plus ");
            long j2 = -nanos;
            long jConvert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
            long nanos2 = j2 - timeUnit.toNanos(jConvert);
            boolean z = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String strConcat3 = strConcat2 + jConvert + " " + lowerCase;
                if (z) {
                    strConcat3 = strConcat3.concat(",");
                }
                strConcat2 = strConcat3.concat(" ");
            }
            if (z) {
                strConcat2 = strConcat2 + nanos2 + " nanoseconds ";
            }
            strConcat = strConcat2.concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(strConcat.concat(" but future completed as timeout expired"));
        }
        throw new TimeoutException(strConcat + " for " + string);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String h() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public final void i(a2 a2Var) {
        a2Var.a = null;
        while (true) {
            a2 a2Var2 = this.p;
            if (a2Var2 == a2.c) {
                return;
            }
            a2 a2Var3 = null;
            while (a2Var2 != null) {
                a2 a2Var4 = a2Var2.b;
                if (a2Var2.a != null) {
                    a2Var3 = a2Var2;
                } else if (a2Var3 != null) {
                    a2Var3.b = a2Var4;
                    if (a2Var3.a == null) {
                        break;
                    }
                } else if (!s.t(this, a2Var2, a2Var4)) {
                    break;
                }
                a2Var2 = a2Var4;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.n instanceof u1;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.n != null;
    }

    public boolean j(Object obj) {
        if (obj == null) {
            obj = t;
        }
        if (!s.s(this, null, obj)) {
            return false;
        }
        d(this);
        return true;
    }

    public boolean k(Throwable th) {
        th.getClass();
        if (!s.s(this, null, new w1(th))) {
            return false;
        }
        d(this);
        return true;
    }

    public final String toString() {
        String strH;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.n instanceof u1) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            b(sb);
        } else {
            try {
                strH = h();
            } catch (RuntimeException e) {
                strH = "Exception thrown from implementation: " + e.getClass();
            }
            if (strH != null && !strH.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(strH);
                sb.append("]");
            } else if (isDone()) {
                b(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public void c() {
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        a2 a2Var = a2.c;
        if (!Thread.interrupted()) {
            Object obj2 = this.n;
            if (obj2 != null) {
                return f(obj2);
            }
            a2 a2Var2 = this.p;
            if (a2Var2 != a2Var) {
                a2 a2Var3 = new a2();
                do {
                    kt4 kt4Var = s;
                    kt4Var.Y(a2Var3, a2Var2);
                    if (kt4Var.t(this, a2Var2, a2Var3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.n;
                            } else {
                                i(a2Var3);
                                throw new InterruptedException();
                            }
                        } while (obj == null);
                        return f(obj);
                    }
                    a2Var2 = this.p;
                } while (a2Var2 != a2Var);
            }
            return f(this.n);
        }
        throw new InterruptedException();
    }
}
