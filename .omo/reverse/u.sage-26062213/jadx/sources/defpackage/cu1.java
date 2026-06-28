package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cu1 extends wu1 {
    public static final /* synthetic */ AtomicIntegerFieldUpdater v = AtomicIntegerFieldUpdater.newUpdater(cu1.class, "_invoked$volatile");
    private volatile /* synthetic */ int _invoked$volatile;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final o f56u;

    public cu1(o oVar) {
        this.f56u = oVar;
    }

    @Override // defpackage.wu1
    public final boolean r() {
        return true;
    }

    @Override // defpackage.wu1
    public final void s(Throwable th) {
        if (v.compareAndSet(this, 0, 1)) {
            this.f56u.k(th);
        }
    }
}
