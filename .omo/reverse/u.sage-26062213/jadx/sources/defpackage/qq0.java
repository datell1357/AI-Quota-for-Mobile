package defpackage;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qq0 implements ThreadFactory {
    public final /* synthetic */ int a;
    public final Object b;

    public qq0() {
        this.a = 0;
        this.b = new AtomicInteger(0);
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                Thread thread = new Thread(runnable);
                thread.setName("arch_disk_io_" + ((AtomicInteger) obj).getAndIncrement());
                return thread;
            case 1:
                Thread threadNewThread = Executors.defaultThreadFactory().newThread(new l31(0, runnable));
                threadNewThread.setName("awaitEvenIfOnMainThread task continuation executor" + ((AtomicLong) obj).getAndIncrement());
                return threadNewThread;
            default:
                Thread threadNewThread2 = ((ThreadFactory) obj).newThread(runnable);
                threadNewThread2.setName("ScionFrontendApi");
                return threadNewThread2;
        }
    }

    public qq0(uy4 uy4Var) {
        this.a = 2;
        this.b = Executors.defaultThreadFactory();
    }

    public qq0(AtomicLong atomicLong) {
        this.a = 1;
        this.b = atomicLong;
    }
}
