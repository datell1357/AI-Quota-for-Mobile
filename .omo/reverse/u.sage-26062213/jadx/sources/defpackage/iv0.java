package defpackage;

import java.util.concurrent.ScheduledFuture;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class iv0 implements jv0 {
    public final ScheduledFuture n;

    public iv0(ScheduledFuture scheduledFuture) {
        this.n = scheduledFuture;
    }

    @Override // defpackage.jv0
    public final void a() {
        this.n.cancel(false);
    }

    public final String toString() {
        return "DisposableFutureHandle[" + this.n + ']';
    }
}
