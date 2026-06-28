package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p53 implements qi0, m53 {
    public static final u20 q = new u20(0);
    public final hi0 n;
    public final p53 o = this;
    public volatile hi0 p;

    public p53(hi0 hi0Var) {
        this.n = hi0Var;
    }

    public final void b() {
        synchronized (this.o) {
            try {
                hi0 hi0Var = this.p;
                if (hi0Var == null) {
                    this.p = q;
                } else {
                    n44.S(hi0Var, new xb1(0));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.m53
    public final void c() {
        b();
    }

    @Override // defpackage.qi0
    public final hi0 d() {
        hi0 hi0VarF;
        hi0 hi0Var = this.p;
        if (hi0Var == null || hi0Var == q) {
            cc0 cc0Var = (cc0) this.n.K(cc0.o);
            hi0 o53Var = cc0Var != null ? new o53(cc0Var, this) : d01.n;
            synchronized (this.o) {
                try {
                    hi0 hi0Var2 = this.p;
                    if (hi0Var2 == null) {
                        hi0 hi0Var3 = this.n;
                        hi0VarF = hi0Var3.F(new vu1((tu1) hi0Var3.K(mj1.W))).F(d01.n).F(o53Var);
                    } else if (hi0Var2 == q) {
                        hi0 hi0Var4 = this.n;
                        vu1 vu1Var = new vu1((tu1) hi0Var4.K(mj1.W));
                        vu1Var.t(new xb1(0));
                        hi0VarF = hi0Var4.F(vu1Var).F(d01.n).F(o53Var);
                    } else {
                        hi0VarF = hi0Var2;
                    }
                    this.p = hi0VarF;
                } catch (Throwable th) {
                    throw th;
                }
            }
            hi0Var = hi0VarF;
        }
        hi0Var.getClass();
        return hi0Var;
    }

    @Override // defpackage.m53
    public final void e() {
        b();
    }

    @Override // defpackage.m53
    public final void a() {
    }
}
