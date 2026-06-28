package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gu0 implements Executor {
    public static final gu0 o = new gu0(0);
    public static final /* synthetic */ gu0 p = new gu0(1);
    public final /* synthetic */ int n;

    public /* synthetic */ gu0(int i) {
        this.n = i;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.n) {
            case 0:
                runnable.run();
                break;
            case 1:
                runnable.run();
                break;
            default:
                runnable.run();
                break;
        }
    }
}
