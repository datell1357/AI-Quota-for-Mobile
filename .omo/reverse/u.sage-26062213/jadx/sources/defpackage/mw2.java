package defpackage;

import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class mw2 {
    public final String a;
    public final Object b;
    public final Object c;
    public final long d;
    public long e;
    public long f;
    public volatile Object g;

    public mw2(String str, ym1 ym1Var, Object obj, long j, TimeUnit timeUnit) {
        w80.L(ym1Var, "Route");
        w80.L(timeUnit, "Time unit");
        this.a = str;
        this.b = ym1Var;
        this.c = obj;
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.e = jCurrentTimeMillis;
        if (j > 0) {
            long millis = timeUnit.toMillis(j) + jCurrentTimeMillis;
            this.d = millis > 0 ? millis : Long.MAX_VALUE;
        } else {
            this.d = Long.MAX_VALUE;
        }
        this.f = this.d;
    }

    public abstract void a();

    public abstract boolean b();

    public abstract boolean c(long j);

    public final synchronized void d(long j, TimeUnit timeUnit) {
        try {
            w80.L(timeUnit, "Time unit");
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.e = jCurrentTimeMillis;
            this.f = Math.min(j > 0 ? jCurrentTimeMillis + timeUnit.toMillis(j) : Long.MAX_VALUE, this.d);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final String toString() {
        return "[id:" + this.a + "][route:" + this.b + "][state:" + this.g + "]";
    }
}
