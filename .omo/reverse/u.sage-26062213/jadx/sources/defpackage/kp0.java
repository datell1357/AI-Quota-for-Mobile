package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kp0 implements ya2 {
    public final /* synthetic */ int n;
    public final ya2 o;
    public final Enum p;
    public final Enum q;

    public /* synthetic */ kp0(ya2 ya2Var, Enum r2, Enum r3, int i) {
        this.n = i;
        this.o = ya2Var;
        this.p = r2;
        this.q = r3;
    }

    @Override // defpackage.ya2
    public final int K(int i) {
        switch (this.n) {
        }
        return this.o.K(i);
    }

    @Override // defpackage.ya2
    public final int R(int i) {
        switch (this.n) {
        }
        return this.o.R(i);
    }

    @Override // defpackage.ya2
    public final int T(int i) {
        switch (this.n) {
        }
        return this.o.T(i);
    }

    @Override // defpackage.ya2
    public final dv2 e(long j) {
        int i = this.n;
        Enum r1 = this.p;
        Enum r2 = this.q;
        ya2 ya2Var = this.o;
        switch (i) {
            case 0:
                lt1 lt1Var = (lt1) r2;
                kt1 kt1Var = (kt1) r1;
                kt1 kt1Var2 = kt1.o;
                if (lt1Var == lt1.n) {
                    return new m71(kt1Var == kt1Var2 ? ya2Var.R(mf0.g(j)) : ya2Var.K(mf0.g(j)), mf0.c(j) ? mf0.g(j) : 32767, 0);
                }
                return new m71(mf0.d(j) ? mf0.h(j) : 32767, kt1Var == kt1Var2 ? ya2Var.g(mf0.h(j)) : ya2Var.T(mf0.h(j)), 0);
            case 1:
                ob2 ob2Var = (ob2) r2;
                nb2 nb2Var = (nb2) r1;
                nb2 nb2Var2 = nb2.o;
                if (ob2Var == ob2.n) {
                    return new m71(nb2Var == nb2Var2 ? ya2Var.R(mf0.g(j)) : ya2Var.K(mf0.g(j)), mf0.c(j) ? mf0.g(j) : 32767, 1);
                }
                return new m71(mf0.d(j) ? mf0.h(j) : 32767, nb2Var == nb2Var2 ? ya2Var.g(mf0.h(j)) : ya2Var.T(mf0.h(j)), 1);
            default:
                qm2 qm2Var = (qm2) r2;
                pm2 pm2Var = (pm2) r1;
                pm2 pm2Var2 = pm2.o;
                if (qm2Var == qm2.n) {
                    return new m71(pm2Var == pm2Var2 ? ya2Var.R(mf0.g(j)) : ya2Var.K(mf0.g(j)), mf0.c(j) ? mf0.g(j) : 32767, 2);
                }
                return new m71(mf0.d(j) ? mf0.h(j) : 32767, pm2Var == pm2Var2 ? ya2Var.g(mf0.h(j)) : ya2Var.T(mf0.h(j)), 2);
        }
    }

    @Override // defpackage.ya2
    public final int g(int i) {
        switch (this.n) {
        }
        return this.o.g(i);
    }

    @Override // defpackage.ya2
    public final Object i() {
        switch (this.n) {
        }
        return this.o.i();
    }
}
