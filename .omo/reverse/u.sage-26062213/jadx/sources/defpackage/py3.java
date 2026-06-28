package defpackage;

import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class py3 implements i60 {
    public final /* synthetic */ qd1 n;
    public final /* synthetic */ ym1 o;
    public final /* synthetic */ qy3 p;

    public py3(qy3 qy3Var, qd1 qd1Var, ym1 ym1Var) {
        this.p = qy3Var;
        this.n = qd1Var;
        this.o = ym1Var;
    }

    @Override // defpackage.i60
    public final t92 c(long j) {
        w80.L(this.o, "Route");
        if (this.p.n.isDebugEnabled()) {
            this.p.n.debug("Get connection: " + this.o + ", timeout = " + j);
        }
        qd1 qd1Var = this.n;
        fv fvVarE = ((sd0) qd1Var.r).e((ym1) qd1Var.p, qd1Var.q, j, (sb0) qd1Var.o);
        gv gvVar = new gv(this.p, fvVarE.b);
        gvVar.s = fvVarE;
        gvVar.p = true;
        return gvVar;
    }

    @Override // defpackage.i60
    public final void d() {
        qd1 qd1Var = this.n;
        ReentrantLock reentrantLock = ((sd0) qd1Var.r).b;
        reentrantLock.lock();
        try {
            sb0 sb0Var = (sb0) qd1Var.o;
            sb0Var.n = true;
            lc4 lc4Var = (lc4) sb0Var.o;
            if (lc4Var != null) {
                lc4Var.c = true;
                lc4Var.a.signalAll();
            }
        } finally {
            reentrantLock.unlock();
        }
    }
}
