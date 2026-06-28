package defpackage;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m0 implements Runnable {
    public final s0 n;
    public final ListenableFuture o;

    public m0(s0 s0Var, ListenableFuture listenableFuture) {
        this.n = s0Var;
        this.o = listenableFuture;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.n.n != this) {
            return;
        }
        Object objJ = s0.j(this.o);
        if (b1.t.k(this.n, this, objJ)) {
            s0.g(this.n, false);
        }
    }
}
