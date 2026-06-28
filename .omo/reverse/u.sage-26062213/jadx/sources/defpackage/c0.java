package defpackage;

import java.io.IOException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c0 implements Future {
    public final AtomicBoolean n = new AtomicBoolean(false);
    public final AtomicBoolean o = new AtomicBoolean(false);
    public final AtomicReference p = new AtomicReference(null);
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ d0 s;

    public c0(d0 d0Var, ym1 ym1Var, Object obj) {
        this.s = d0Var;
        this.q = ym1Var;
        this.r = obj;
    }

    @Override // java.util.concurrent.Future
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final mw2 get(long j, TimeUnit timeUnit) throws Throwable {
        c0 c0Var;
        Throwable th;
        mw2 mw2Var;
        mw2 mw2VarA;
        long j2;
        while (true) {
            synchronized (this) {
                try {
                    mw2Var = (mw2) this.p.get();
                    if (mw2Var != null) {
                        try {
                        } catch (Throwable th2) {
                            th = th2;
                            c0Var = this;
                        }
                    } else {
                        if (this.o.get()) {
                            throw new ExecutionException(new CancellationException("Operation aborted"));
                        }
                        c0Var = this;
                        long j3 = j;
                        TimeUnit timeUnit2 = timeUnit;
                        try {
                            try {
                                mw2VarA = d0.a(this.s, this.q, this.r, j3, timeUnit2, c0Var);
                                if (c0Var.s.l <= 0) {
                                    break;
                                }
                                try {
                                    synchronized (mw2VarA) {
                                        j2 = mw2VarA.e;
                                    }
                                    if (j2 + ((long) c0Var.s.l) > System.currentTimeMillis()) {
                                        break;
                                    }
                                    ((j00) c0Var.s).getClass();
                                    if (!((v92) ((k00) mw2VarA).c).l0()) {
                                        break;
                                    }
                                    mw2VarA.a();
                                    c0Var.s.c(mw2VarA, false);
                                    j = j3;
                                    timeUnit = timeUnit2;
                                    this = c0Var;
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                th = th;
                            }
                        } catch (IOException e) {
                            e = e;
                            IOException iOException = e;
                            c0Var.o.compareAndSet(false, true);
                            throw new ExecutionException(iOException);
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                    c0Var = this;
                } catch (Throwable th5) {
                    th = th5;
                    c0Var = this;
                }
                throw th;
            }
            return mw2Var;
        }
        if (!c0Var.o.compareAndSet(false, true)) {
            c0Var.s.c(mw2VarA, true);
            throw new ExecutionException(new CancellationException("Operation aborted"));
        }
        c0Var.p.set(mw2VarA);
        c0Var.o.set(true);
        c0Var.s.getClass();
        return mw2VarA;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        if (!this.o.compareAndSet(false, true)) {
            return false;
        }
        this.n.set(true);
        d0 d0Var = this.s;
        ReentrantLock reentrantLock = d0Var.a;
        ReentrantLock reentrantLock2 = d0Var.a;
        reentrantLock.lock();
        try {
            d0Var.b.signalAll();
            return true;
        } finally {
            reentrantLock2.unlock();
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws ExecutionException {
        try {
            return get(0L, TimeUnit.MILLISECONDS);
        } catch (TimeoutException e) {
            throw new ExecutionException(e);
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.n.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.o.get();
    }
}
