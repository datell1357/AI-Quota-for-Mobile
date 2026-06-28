package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a34 extends n91 implements RunnableFuture {
    public volatile ht1 v;

    public a34(Callable callable) {
        this.v = new z24(this, callable);
    }

    @Override // defpackage.s0
    public final void e() {
        ht1 ht1Var;
        if (p() && (ht1Var = this.v) != null) {
            ht1Var.c();
        }
        this.v = null;
    }

    @Override // defpackage.s0
    public final String l() {
        ht1 ht1Var = this.v;
        if (ht1Var == null) {
            return super.l();
        }
        return "task=[" + ht1Var + "]";
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        ht1 ht1Var = this.v;
        if (ht1Var != null) {
            ht1Var.run();
        }
        this.v = null;
    }
}
