package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p0 {
    public static final p0 d = new p0();
    public final Runnable a;
    public final Executor b;
    public p0 c;

    public p0() {
        this.a = null;
        this.b = null;
    }

    public p0(Runnable runnable, Executor executor) {
        this.a = runnable;
        this.b = executor;
    }
}
