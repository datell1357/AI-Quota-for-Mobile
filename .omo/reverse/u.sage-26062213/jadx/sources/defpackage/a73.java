package defpackage;

import android.os.Process;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a73 extends Thread {
    public final int n;

    public a73(Runnable runnable) {
        super(runnable, "fonts-androidx");
        this.n = 10;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.n);
        super.run();
    }
}
