package defpackage;

import java.util.Objects;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jy3 implements ThreadFactory {
    public final /* synthetic */ ThreadFactory a;
    public final /* synthetic */ Boolean b;

    public jy3(ThreadFactory threadFactory, Boolean bool) {
        this.a = threadFactory;
        this.b = bool;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.a.newThread(runnable);
        Objects.requireNonNull(threadNewThread);
        Boolean bool = this.b;
        if (bool != null) {
            threadNewThread.setDaemon(bool.booleanValue());
        }
        return threadNewThread;
    }
}
