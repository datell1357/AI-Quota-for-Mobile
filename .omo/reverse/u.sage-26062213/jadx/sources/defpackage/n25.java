package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n25 implements fc5, jp2, bp2, wo2 {
    public final /* synthetic */ int n;
    public final Executor o;
    public final Object p;
    public final Object q;

    public n25(Executor executor, wo2 wo2Var) {
        this.n = 0;
        this.p = new Object();
        this.o = executor;
        this.q = wo2Var;
    }

    @Override // defpackage.wo2
    public void a() {
        ((ef5) this.q).q();
    }

    @Override // defpackage.fc5
    public final void b(ow3 ow3Var) {
        boolean z = false;
        switch (this.n) {
            case 0:
                if (((ef5) ow3Var).d) {
                    synchronized (this.p) {
                        try {
                            if (((wo2) this.q) != null) {
                                this.o.execute(new o9(15, this));
                            }
                        } finally {
                        }
                    }
                    return;
                }
                return;
            case 1:
                synchronized (this.p) {
                    break;
                }
                this.o.execute(new rf1(19, this, ow3Var, z));
                return;
            case 2:
                if (ow3Var.j() || ((ef5) ow3Var).d) {
                    return;
                }
                synchronized (this.p) {
                    try {
                        if (((bp2) this.q) != null) {
                            this.o.execute(new rf1(22, this, ow3Var, z));
                        }
                    } finally {
                    }
                }
                return;
            case 3:
                if (ow3Var.j()) {
                    synchronized (this.p) {
                        try {
                            if (((jp2) this.q) != null) {
                                this.o.execute(new rf1(29, this, ow3Var, z));
                            }
                        } finally {
                        }
                    }
                    return;
                }
                return;
            default:
                this.o.execute(new w85(5, this, ow3Var));
                return;
        }
    }

    @Override // defpackage.bp2
    public void c(Exception exc) {
        ((ef5) this.q).p(exc);
    }

    @Override // defpackage.jp2
    public void h(Object obj) {
        ((ef5) this.q).n(obj);
    }

    public n25(Executor executor, xo2 xo2Var) {
        this.n = 1;
        this.p = new Object();
        this.o = executor;
        this.q = xo2Var;
    }

    public n25(Executor executor, bp2 bp2Var) {
        this.n = 2;
        this.p = new Object();
        this.o = executor;
        this.q = bp2Var;
    }

    public n25(Executor executor, jp2 jp2Var) {
        this.n = 3;
        this.p = new Object();
        this.o = executor;
        this.q = jp2Var;
    }

    public n25(Executor executor, wt3 wt3Var, ef5 ef5Var) {
        this.n = 4;
        this.o = executor;
        this.p = wt3Var;
        this.q = ef5Var;
    }
}
