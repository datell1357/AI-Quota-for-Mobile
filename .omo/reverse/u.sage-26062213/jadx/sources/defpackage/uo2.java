package defpackage;

import android.window.OnBackInvokedDispatcher;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uo2 {
    public final Runnable a;
    public final nv3 b = new nv3(new cc(23, this));

    public uo2(Runnable runnable) {
        this.a = runnable;
    }

    public final void a(up upVar, p22 p22Var) {
        upVar.getClass();
        final h22 lifecycle = p22Var.getLifecycle();
        if (((r22) lifecycle).d == g22.n) {
            return;
        }
        po2 po2Var = new po2(upVar, new qo2(upVar, p22Var));
        upVar.a.add(po2Var);
        po2Var.h(false);
        ck2.a(b().c, po2Var);
        final qp0 qp0Var = new qp0(po2Var, this, lifecycle);
        lifecycle.a(qp0Var);
        upVar.c.add(new AutoCloseable() { // from class: ro2
            @Override // java.lang.AutoCloseable
            public final void close() {
                lifecycle.b(qp0Var);
            }
        });
    }

    public final so2 b() {
        return (so2) this.b.getValue();
    }

    public final void c(OnBackInvokedDispatcher onBackInvokedDispatcher) {
        b().c.c(new mo2(onBackInvokedDispatcher, 0), 1);
        b().c.c(new mo2(onBackInvokedDispatcher, 1000000), 0);
    }
}
