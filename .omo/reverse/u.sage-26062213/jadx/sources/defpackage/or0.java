package defpackage;

import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class or0 implements rr0 {
    public final /* synthetic */ int n;
    public final /* synthetic */ qr0 o;
    public final /* synthetic */ Runnable p;
    public final /* synthetic */ long q;
    public final /* synthetic */ long r;
    public final /* synthetic */ TimeUnit s;

    public /* synthetic */ or0(qr0 qr0Var, Runnable runnable, long j, long j2, TimeUnit timeUnit, int i) {
        this.n = i;
        this.o = qr0Var;
        this.p = runnable;
        this.q = j;
        this.r = j2;
        this.s = timeUnit;
    }

    @Override // defpackage.rr0
    public final ScheduledFuture a(wu4 wu4Var) {
        int i = this.n;
        Runnable runnable = this.p;
        qr0 qr0Var = this.o;
        switch (i) {
            case 0:
                return qr0Var.o.scheduleAtFixedRate(new pr0(qr0Var, runnable, wu4Var, 0), this.q, this.r, this.s);
            default:
                return qr0Var.o.scheduleWithFixedDelay(new pr0(qr0Var, runnable, wu4Var, 2), this.q, this.r, this.s);
        }
    }
}
