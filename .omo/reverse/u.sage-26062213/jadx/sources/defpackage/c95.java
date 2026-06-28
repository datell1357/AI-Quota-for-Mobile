package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c95 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ n05 o;
    public final /* synthetic */ j95 p;

    public /* synthetic */ c95(j95 j95Var, n05 n05Var, int i) {
        this.n = i;
        this.o = n05Var;
        this.p = j95Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.n) {
            case 0:
                j95 j95Var = this.p;
                synchronized (j95Var) {
                    try {
                        j95Var.a = false;
                        o95 o95Var = j95Var.c;
                        if (!o95Var.M()) {
                            a25 a25Var = ((r45) o95Var.a).f;
                            r45.l(a25Var);
                            a25Var.n.a("Connected to service");
                            n05 n05Var = this.o;
                            o95Var.v();
                            Preconditions.checkNotNull(n05Var);
                            o95Var.d = n05Var;
                            o95Var.I();
                            o95Var.K();
                        }
                    } finally {
                    }
                    break;
                }
                return;
            default:
                j95 j95Var2 = this.p;
                synchronized (j95Var2) {
                    try {
                        j95Var2.a = false;
                        o95 o95Var2 = j95Var2.c;
                        if (!o95Var2.M()) {
                            a25 a25Var2 = ((r45) o95Var2.a).f;
                            r45.l(a25Var2);
                            a25Var2.m.a("Connected to remote service");
                            n05 n05Var2 = this.o;
                            o95Var2.v();
                            Preconditions.checkNotNull(n05Var2);
                            o95Var2.d = n05Var2;
                            o95Var2.I();
                            o95Var2.K();
                        }
                    } finally {
                    }
                    break;
                }
                o95 o95Var3 = this.p.c;
                ScheduledExecutorService scheduledExecutorService = o95Var3.g;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                    o95Var3.g = null;
                    return;
                }
                return;
        }
    }
}
