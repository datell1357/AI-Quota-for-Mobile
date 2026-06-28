package defpackage;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ji3 implements Executor {
    public final /* synthetic */ int n;
    public final Executor o;
    public final ArrayDeque p;
    public Runnable q;
    public final Object r;

    public ji3(Executor executor, int i) {
        this.n = i;
        switch (i) {
            case 1:
                executor.getClass();
                this.o = executor;
                this.p = new ArrayDeque();
                this.r = new Object();
                break;
            default:
                this.o = executor;
                this.p = new ArrayDeque();
                this.r = new Object();
                break;
        }
    }

    public final void a() {
        switch (this.n) {
            case 0:
                Runnable runnable = (Runnable) this.p.poll();
                this.q = runnable;
                if (runnable != null) {
                    this.o.execute(runnable);
                    return;
                }
                return;
            default:
                synchronized (this.r) {
                    Object objPoll = this.p.poll();
                    Runnable runnable2 = (Runnable) objPoll;
                    this.q = runnable2;
                    if (objPoll != null) {
                        this.o.execute(runnable2);
                    }
                    break;
                }
                return;
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.n) {
            case 0:
                synchronized (this.r) {
                    try {
                        this.p.add(new rf1(13, this, runnable));
                        if (this.q == null) {
                            a();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
            default:
                runnable.getClass();
                synchronized (this.r) {
                    this.p.offer(new h7(19, runnable, this));
                    if (this.q == null) {
                        a();
                    }
                    break;
                }
                return;
        }
    }
}
