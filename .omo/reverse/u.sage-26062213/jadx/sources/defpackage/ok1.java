package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ok1 implements kn3 {
    public final cc1 n;
    public boolean o;
    public final /* synthetic */ sk1 p;

    public ok1(sk1 sk1Var) {
        this.p = sk1Var;
        this.n = new cc1(((c23) sk1Var.c.q).n.g());
    }

    @Override // defpackage.kn3
    public final void J(long j, sy syVar) {
        if (this.o) {
            k21.n("closed");
            return;
        }
        if (j == 0) {
            return;
        }
        c23 c23Var = (c23) this.p.c.q;
        if (c23Var.p) {
            k21.n("closed");
            return;
        }
        c23Var.o.q0(j);
        c23Var.b();
        c23Var.e0("\r\n");
        c23Var.J(j, syVar);
        c23Var.e0("\r\n");
    }

    @Override // defpackage.kn3, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final synchronized void close() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((c23) this.p.c.q).e0("0\r\n\r\n");
        cc1 cc1Var = this.n;
        mz3 mz3Var = cc1Var.e;
        cc1Var.e = mz3.d;
        mz3Var.a();
        mz3Var.b();
        this.p.d = 3;
    }

    @Override // defpackage.kn3, java.io.Flushable
    public final synchronized void flush() {
        if (this.o) {
            return;
        }
        ((c23) this.p.c.q).flush();
    }

    @Override // defpackage.kn3
    public final mz3 g() {
        return this.n;
    }
}
