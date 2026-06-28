package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fj0 implements Callable {
    public final /* synthetic */ ij0 a;
    public final /* synthetic */ long b;
    public final /* synthetic */ String c;

    public /* synthetic */ fj0(ij0 ij0Var, long j, String str) {
        this.a = ij0Var;
        this.b = j;
        this.c = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        final ij0 ij0Var = this.a;
        qk0 qk0Var = (qk0) ij0Var.o.p;
        final long j = this.b;
        final String str = this.c;
        return qk0Var.a(new Runnable() { // from class: gj0
            @Override // java.lang.Runnable
            public final void run() {
                dj0 dj0Var = ij0Var.g;
                pk0 pk0Var = dj0Var.n;
                if (pk0Var == null || !pk0Var.e.get()) {
                    ((h51) dj0Var.i.p).o(j, str);
                }
            }
        });
    }
}
