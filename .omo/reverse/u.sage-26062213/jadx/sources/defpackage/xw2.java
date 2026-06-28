package defpackage;

import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xw2 implements m20 {
    public final /* synthetic */ c0 n;
    public final /* synthetic */ ym1 o;
    public final /* synthetic */ ax2 p;

    public xw2(ax2 ax2Var, c0 c0Var, ym1 ym1Var) {
        this.p = ax2Var;
        this.n = c0Var;
        this.o = ym1Var;
    }

    public final l00 a(long j) throws ExecutionException, ge0 {
        c0 c0Var = this.n;
        ax2 ax2Var = this.p;
        l00 l00VarZ = ax2Var.z(c0Var, j);
        if (l00VarZ.isOpen()) {
            ym1 ym1Var = this.o;
            l00VarZ.n(0);
        }
        return l00VarZ;
    }

    @Override // defpackage.m20
    public final boolean cancel() {
        return this.n.cancel(true);
    }
}
