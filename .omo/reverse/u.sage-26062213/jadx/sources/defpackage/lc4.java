package defpackage;

import java.util.Date;
import java.util.concurrent.locks.Condition;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lc4 {
    public final Condition a;
    public Thread b;
    public boolean c;

    public lc4(Condition condition) {
        w80.L(condition, "Condition");
        this.a = condition;
    }

    public final boolean a(Date date) throws InterruptedException {
        boolean zAwaitUntil;
        if (this.b != null) {
            StringBuilder sb = new StringBuilder("A thread is already waiting on this object.\ncaller: ");
            sb.append(Thread.currentThread());
            Thread thread = this.b;
            sb.append("\nwaiter: ");
            sb.append(thread);
            throw new IllegalStateException(sb.toString());
        }
        if (this.c) {
            throw new InterruptedException("Operation interrupted");
        }
        this.b = Thread.currentThread();
        Condition condition = this.a;
        try {
            if (date != null) {
                zAwaitUntil = condition.awaitUntil(date);
            } else {
                condition.await();
                zAwaitUntil = true;
            }
            if (this.c) {
                throw new InterruptedException("Operation interrupted");
            }
            this.b = null;
            return zAwaitUntil;
        } catch (Throwable th) {
            this.b = null;
            throw th;
        }
    }
}
