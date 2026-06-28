package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ca5 implements Runnable {
    public final long n;
    public final long o;
    public final /* synthetic */ pc4 p;

    public ca5(pc4 pc4Var, long j, long j2) {
        Objects.requireNonNull(pc4Var);
        this.p = pc4Var;
        this.n = j;
        this.o = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        j45 j45Var = ((r45) ((ia5) this.p.p).a).g;
        r45.l(j45Var);
        j45Var.E(new o9(19, this));
    }
}
