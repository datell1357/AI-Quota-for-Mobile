package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class nk1 implements yp3 {
    public final cn1 n;
    public final cc1 o;
    public boolean p;
    public final /* synthetic */ sk1 q;

    public nk1(sk1 sk1Var, cn1 cn1Var) {
        cn1Var.getClass();
        this.q = sk1Var;
        this.n = cn1Var;
        this.o = new cc1(((d23) sk1Var.c.p).n.g());
    }

    public final void b(kj1 kj1Var) {
        io2 io2Var;
        mj1 mj1Var;
        kj1Var.getClass();
        sk1 sk1Var = this.q;
        int i = sk1Var.d;
        if (i == 6) {
            return;
        }
        if (i != 5) {
            p61.d(sk1Var.d, "state: ");
            return;
        }
        cc1 cc1Var = this.o;
        mz3 mz3Var = cc1Var.e;
        cc1Var.e = mz3.d;
        mz3Var.a();
        mz3Var.b();
        sk1Var.d = 6;
        if (kj1Var.size() <= 0 || (io2Var = sk1Var.a) == null || (mj1Var = io2Var.j) == null) {
            return;
        }
        dm1.b(mj1Var, this.n, kj1Var);
    }

    @Override // defpackage.yp3
    public final mz3 g() {
        return this.o;
    }

    @Override // defpackage.yp3
    public long l(long j, sy syVar) throws IOException {
        sk1 sk1Var = this.q;
        syVar.getClass();
        try {
            return ((d23) sk1Var.c.p).l(j, syVar);
        } catch (IOException e) {
            sk1Var.b.k();
            this.b(sk1.f);
            throw e;
        }
    }
}
