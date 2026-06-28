package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ns3 implements Runnable {
    public final ez2 n;
    public final nr3 o;
    public final boolean p;
    public final int q;

    public ns3(ez2 ez2Var, nr3 nr3Var, boolean z, int i) {
        ez2Var.getClass();
        nr3Var.getClass();
        this.n = ez2Var;
        this.o = nr3Var;
        this.p = z;
        this.q = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zD;
        hh4 hh4VarB;
        boolean z = this.p;
        ez2 ez2Var = this.n;
        nr3 nr3Var = this.o;
        if (z) {
            int i = this.q;
            ez2Var.getClass();
            String str = nr3Var.a.a;
            synchronized (ez2Var.k) {
                hh4VarB = ez2Var.b(str);
            }
            zD = ez2.d(str, hh4VarB, i);
        } else {
            int i2 = this.q;
            ez2Var.getClass();
            String str2 = nr3Var.a.a;
            synchronized (ez2Var.k) {
                try {
                    if (ez2Var.f.get(str2) != null) {
                        t72.g().c(ez2.l, "Ignored stopWork. WorkerWrapper " + str2 + " is in foreground");
                    } else {
                        Set set = (Set) ez2Var.h.get(str2);
                        if (set != null && set.contains(nr3Var)) {
                            zD = ez2.d(str2, ez2Var.b(str2), i2);
                        }
                    }
                    zD = false;
                } finally {
                }
            }
        }
        t72.g().c(t72.i("StopWorkRunnable"), "StopWorkRunnable for " + this.o.a.a + "; Processor.stopWork = " + zD);
    }
}
