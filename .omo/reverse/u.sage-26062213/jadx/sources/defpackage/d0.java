package defpackage;

import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class d0 {
    public final ReentrantLock a;
    public final Condition b;
    public final xh1 c;
    public final HashMap d;
    public final HashSet e;
    public final LinkedList f;
    public final LinkedList g;
    public final HashMap h;
    public volatile boolean i;
    public volatile int j;
    public volatile int k;
    public volatile int l;

    public d0(xh1 xh1Var) {
        this.c = xh1Var;
        w80.N(2, "Max per route value");
        this.j = 2;
        w80.N(20, "Max total value");
        this.k = 20;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.a = reentrantLock;
        this.b = reentrantLock.newCondition();
        this.d = new HashMap();
        this.e = new HashSet();
        this.f = new LinkedList();
        this.g = new LinkedList();
        this.h = new HashMap();
    }

    public static mw2 a(d0 d0Var, Object obj, Object obj2, long j, TimeUnit timeUnit, c0 c0Var) {
        Date date;
        mw2 mw2VarB;
        if (j > 0) {
            d0Var.getClass();
            date = new Date(timeUnit.toMillis(j) + System.currentTimeMillis());
        } else {
            date = null;
        }
        d0Var.a.lock();
        while (true) {
            try {
                boolean zAwaitUntil = true;
                mt1.n("Connection pool shut down", !d0Var.i);
                if (c0Var.n.get()) {
                    throw new ExecutionException(new CancellationException("Operation aborted"));
                }
                b0 b0VarB = d0Var.b(obj);
                while (true) {
                    mw2VarB = b0VarB.b(obj2);
                    if (mw2VarB == null) {
                        break;
                    }
                    if (mw2VarB.c(System.currentTimeMillis())) {
                        mw2VarB.a();
                    }
                    if (!mw2VarB.b()) {
                        break;
                    }
                    d0Var.f.remove(mw2VarB);
                    b0VarB.a(mw2VarB, false);
                }
                if (mw2VarB != null) {
                    d0Var.f.remove(mw2VarB);
                    d0Var.e.add(mw2VarB);
                    d0Var.a.unlock();
                    return mw2VarB;
                }
                Integer num = (Integer) d0Var.h.get(obj);
                int iIntValue = num != null ? num.intValue() : d0Var.j;
                int iMax = Math.max(0, ((b0VarB.b.size() + b0VarB.c.size()) + 1) - iIntValue);
                if (iMax > 0) {
                    for (int i = 0; i < iMax; i++) {
                        LinkedList linkedList = b0VarB.c;
                        mw2 mw2Var = linkedList.isEmpty() ? null : (mw2) linkedList.getLast();
                        if (mw2Var == null) {
                            break;
                        }
                        mw2Var.a();
                        d0Var.f.remove(mw2Var);
                        b0VarB.c(mw2Var);
                    }
                }
                if (b0VarB.b.size() + b0VarB.c.size() < iIntValue) {
                    int iMax2 = Math.max(d0Var.k - d0Var.e.size(), 0);
                    if (iMax2 > 0) {
                        if (d0Var.f.size() > iMax2 - 1) {
                            mw2 mw2Var2 = (mw2) d0Var.f.removeLast();
                            mw2Var2.a();
                            d0Var.b(mw2Var2.b).c(mw2Var2);
                        }
                        v72 v72VarJ = d0Var.c.j(obj);
                        j00 j00Var = (j00) b0VarB.f;
                        k00 k00Var = new k00(j00Var.m, Long.toString(j00.p.getAndIncrement()), (ym1) b0VarB.e, v72VarJ, j00Var.n, j00Var.o);
                        b0VarB.b.add(k00Var);
                        d0Var.e.add(k00Var);
                        d0Var.a.unlock();
                        return k00Var;
                    }
                }
                try {
                    b0VarB.d.add(c0Var);
                    d0Var.g.add(c0Var);
                    Condition condition = d0Var.b;
                    if (date != null) {
                        zAwaitUntil = condition.awaitUntil(date);
                    } else {
                        condition.await();
                    }
                    if (c0Var.n.get()) {
                        throw new ExecutionException(new CancellationException("Operation aborted"));
                    }
                    b0VarB.d.remove(c0Var);
                    d0Var.g.remove(c0Var);
                    if (!zAwaitUntil && date != null && date.getTime() <= System.currentTimeMillis()) {
                        throw new TimeoutException("Timeout waiting for connection");
                    }
                } finally {
                    b0VarB.d.remove(c0Var);
                    d0Var.g.remove(c0Var);
                }
            } catch (Throwable th) {
                d0Var.a.unlock();
                throw th;
            }
        }
    }

    public final b0 b(Object obj) {
        HashMap map = this.d;
        b0 b0Var = (b0) map.get(obj);
        if (b0Var != null) {
            return b0Var;
        }
        b0 b0Var2 = new b0(this, obj, obj);
        map.put(obj, b0Var2);
        return b0Var2;
    }

    public final void c(mw2 mw2Var, boolean z) {
        this.a.lock();
        try {
            if (this.e.remove(mw2Var)) {
                b0 b0VarB = b(mw2Var.b);
                b0VarB.a(mw2Var, z);
                if (!z || this.i) {
                    mw2Var.a();
                } else {
                    this.f.addFirst(mw2Var);
                }
                Future future = (Future) b0VarB.d.poll();
                LinkedList linkedList = this.g;
                if (future != null) {
                    linkedList.remove(future);
                } else {
                    future = (Future) linkedList.poll();
                }
                if (future != null) {
                    this.b.signalAll();
                }
            }
            this.a.unlock();
        } catch (Throwable th) {
            this.a.unlock();
            throw th;
        }
    }

    public final void d() {
        if (this.i) {
            return;
        }
        this.i = true;
        this.a.lock();
        try {
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                ((mw2) it.next()).a();
            }
            Iterator it2 = this.e.iterator();
            while (it2.hasNext()) {
                ((mw2) it2.next()).a();
            }
            Iterator it3 = this.d.values().iterator();
            while (it3.hasNext()) {
                ((b0) it3.next()).d();
            }
            this.d.clear();
            this.e.clear();
            this.f.clear();
            this.a.unlock();
        } catch (Throwable th) {
            this.a.unlock();
            throw th;
        }
    }

    public final String toString() {
        ReentrantLock reentrantLock = this.a;
        reentrantLock.lock();
        try {
            return "[leased: " + this.e + "][available: " + this.f + "][pending: " + this.g + "]";
        } finally {
            reentrantLock.unlock();
        }
    }
}
