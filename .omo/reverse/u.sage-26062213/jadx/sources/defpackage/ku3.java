package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ku3 implements ce0 {
    public final dd1 n;

    public ku3(dd1 dd1Var) {
        this.n = dd1Var;
    }

    @Override // defpackage.ce0
    public final Object G(boolean z, df1 df1Var, fh0 fh0Var) {
        mu3 mu3Var = (mu3) this.n.o;
        mu3Var.getClass();
        return df1Var.f(new ou3(new ju3(mu3Var.f0())), fh0Var);
    }

    @Override // java.lang.AutoCloseable
    public final void close() throws IOException {
        ((mu3) this.n.o).close();
    }
}
