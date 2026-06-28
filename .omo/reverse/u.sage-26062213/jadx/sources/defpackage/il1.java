package defpackage;

import java.io.IOException;
import java.net.SocketTimeoutException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class il1 extends hj {
    public final /* synthetic */ jl1 n;

    public il1(jl1 jl1Var) {
        this.n = jl1Var;
    }

    @Override // defpackage.hj
    public final IOException j(IOException iOException) {
        return new SocketTimeoutException("timeout");
    }

    @Override // defpackage.hj
    public final void k() {
        this.n.e(d21.f62u);
        cl1 cl1Var = this.n.o;
        synchronized (cl1Var) {
            long j = cl1Var.A;
            long j2 = cl1Var.z;
            if (j < j2) {
                return;
            }
            cl1Var.z = j2 + 1;
            cl1Var.B = System.nanoTime() + 1000000000;
            sw3.b(cl1Var.f53u, xw1.s(new StringBuilder(), cl1Var.p, " ping"), new cc(12, cl1Var));
        }
    }

    public final void l() {
        if (i()) {
            throw j(null);
        }
    }
}
