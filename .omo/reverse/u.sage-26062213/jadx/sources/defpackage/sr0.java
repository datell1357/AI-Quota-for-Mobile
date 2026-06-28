package defpackage;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sr0 extends b2 implements ScheduledFuture {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ScheduledFuture f321u;

    public sr0(rr0 rr0Var) {
        this.f321u = rr0Var.a(new wu4(22, this));
    }

    @Override // defpackage.b2
    public final void c() {
        ScheduledFuture scheduledFuture = this.f321u;
        Object obj = this.n;
        scheduledFuture.cancel((obj instanceof u1) && ((u1) obj).a);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Delayed delayed) {
        return this.f321u.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f321u.getDelay(timeUnit);
    }
}
