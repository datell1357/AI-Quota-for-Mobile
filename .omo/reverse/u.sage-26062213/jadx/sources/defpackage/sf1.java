package defpackage;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sf1 extends r0 implements Runnable {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ListenableFuture f316u;

    @Override // defpackage.s0
    public final void e() {
        this.f316u = null;
    }

    @Override // defpackage.s0
    public final String l() {
        ListenableFuture listenableFuture = this.f316u;
        if (listenableFuture == null) {
            return null;
        }
        return "delegate=[" + listenableFuture + "]";
    }

    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture listenableFuture = this.f316u;
        if (listenableFuture != null) {
            o(listenableFuture);
        }
    }
}
