package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mh implements Executor {
    public final /* synthetic */ int n;

    public /* synthetic */ mh(int i) {
        this.n = i;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.n) {
            case 0:
                nh.T().P.Q.execute(runnable);
                break;
            default:
                runnable.run();
                break;
        }
    }
}
