package defpackage;

import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jz0 extends ix {
    public final /* synthetic */ ix r;
    public final /* synthetic */ ThreadPoolExecutor s;

    public jz0(ix ixVar, ThreadPoolExecutor threadPoolExecutor) {
        this.r = ixVar;
        this.s = threadPoolExecutor;
    }

    @Override // defpackage.ix
    public final void I(Throwable th) {
        ThreadPoolExecutor threadPoolExecutor = this.s;
        try {
            this.r.I(th);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }

    @Override // defpackage.ix
    public final void J(qd1 qd1Var) {
        ThreadPoolExecutor threadPoolExecutor = this.s;
        try {
            this.r.J(qd1Var);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }
}
