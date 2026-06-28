package defpackage;

import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b85 implements Runnable {
    public final /* synthetic */ int n = 0;
    public final /* synthetic */ long o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public b85(f85 f85Var, w75 w75Var, long j) {
        this.p = w75Var;
        this.o = j;
        Objects.requireNonNull(f85Var);
        this.q = f85Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        Object obj = this.q;
        long j = this.o;
        Object obj2 = this.p;
        switch (i) {
            case 0:
                f85 f85Var = (f85) obj;
                f85Var.E((w75) obj2, false, j);
                f85Var.e = null;
                o95 o95VarO = ((r45) f85Var.a).o();
                o95VarO.v();
                o95VarO.w();
                o95VarO.J(new w85(o95VarO, null));
                break;
            default:
                ((o9) obj2).run();
                wd2 wd2Var = (wd2) obj;
                wd2Var.getClass();
                a34 a34Var = new a34(Executors.callable(this, null));
                ud2 ud2Var = new ud2(a34Var, wd2Var.o.schedule(a34Var, j, TimeUnit.MINUTES));
                ud2Var.a(new o9(22, ud2Var), fu0.n);
                break;
        }
    }

    public b85(mc5 mc5Var, o9 o9Var, wd2 wd2Var, long j) {
        this.p = o9Var;
        this.q = wd2Var;
        this.o = j;
    }
}
