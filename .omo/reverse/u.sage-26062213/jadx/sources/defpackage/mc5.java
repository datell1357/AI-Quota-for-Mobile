package defpackage;

import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mc5 implements oc5 {
    public static boolean d;
    public final cu3 a;
    public final int b;
    public final ky4 c;

    public mc5(cu3 cu3Var) {
        ky4 ky4Var = ky4.G;
        this.a = cu3Var;
        this.b = Math.max(5, 10);
        this.c = ky4Var;
    }

    @Override // defpackage.oc5
    public final void zza() {
        synchronized (mc5.class) {
            try {
                if (!d) {
                    o9 o9Var = new o9(24, this);
                    long j = this.b;
                    TimeUnit timeUnit = TimeUnit.MINUTES;
                    wd2 wd2Var = (wd2) this.a.get();
                    b85 b85Var = new b85(this, o9Var, wd2Var, j);
                    wd2Var.getClass();
                    a34 a34Var = new a34(Executors.callable(b85Var, null));
                    ud2 ud2Var = new ud2(a34Var, wd2Var.o.schedule(a34Var, j, timeUnit));
                    ud2Var.a(new o9(22, ud2Var), fu0.n);
                    d = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
