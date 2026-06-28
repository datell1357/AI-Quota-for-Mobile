package defpackage;

import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fv {
    public final h60 a;
    public final do0 b;
    public volatile ym1 c;
    public volatile Object d;
    public volatile ya3 e;
    public final long f;
    public long g;

    public fv(h60 h60Var, ym1 ym1Var, long j, TimeUnit timeUnit) {
        w80.L(h60Var, "Connection operator");
        this.a = h60Var;
        this.b = new do0();
        this.c = ym1Var;
        this.e = null;
        w80.L(ym1Var, "HTTP route");
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (j > 0) {
            this.f = timeUnit.toMillis(j) + jCurrentTimeMillis;
        } else {
            this.f = Long.MAX_VALUE;
        }
        this.g = this.f;
    }
}
