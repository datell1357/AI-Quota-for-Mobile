package defpackage;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b73 implements ThreadFactory {
    public static final /* synthetic */ b73 b = new b73(1);
    public final /* synthetic */ int a;

    public /* synthetic */ b73(int i) {
        this.a = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.a) {
            case 0:
                return new a73(runnable);
            default:
                Object obj = o75.j;
                return new Thread(runnable, "ProcessStablePhenotypeFlag");
        }
    }
}
