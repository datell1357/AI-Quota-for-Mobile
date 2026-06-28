package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bz1 {
    public final xy1 a;
    public boolean b;
    public boolean c;
    public boolean e;
    public boolean f;
    public boolean g;
    public int h;
    public int i;
    public boolean j;
    public boolean k;
    public int l;
    public boolean m;
    public boolean n;
    public int o;
    public q82 q;
    public ty1 d = ty1.r;
    public final cb2 p = new cb2(this);

    public bz1(xy1 xy1Var) {
        this.a = xy1Var;
    }

    public final mm2 a() {
        return (mm2) this.a.S.e;
    }

    public final void b() {
        ty1 ty1Var = this.a.T.d;
        ty1 ty1Var2 = ty1.p;
        ty1 ty1Var3 = ty1.q;
        if (ty1Var == ty1Var2 || ty1Var == ty1Var3) {
            if (this.p.N) {
                g(true);
            } else {
                f(true);
            }
        }
        if (ty1Var == ty1Var3) {
            q82 q82Var = this.q;
            if (q82Var == null || !q82Var.H) {
                h(true);
            } else {
                i(true);
            }
        }
    }

    public final void c(long j) {
        q82 q82Var = this.q;
        if (q82Var != null) {
            bz1 bz1Var = q82Var.s;
            bz1Var.d = ty1.o;
            xy1 xy1Var = bz1Var.a;
            bz1Var.e = false;
            q82Var.L = j;
            ur2 snapshotObserver = ((q9) az1.a(xy1Var)).getSnapshotObserver();
            p82 p82Var = q82Var.M;
            snapshotObserver.a.c(xy1Var, snapshotObserver.b, p82Var);
            bz1Var.f = true;
            bz1Var.g = true;
            boolean zC = ix.C(xy1Var);
            cb2 cb2Var = bz1Var.p;
            if (zC) {
                cb2Var.I = true;
                cb2Var.J = true;
            } else {
                cb2Var.H = true;
            }
            bz1Var.d = ty1.r;
        }
    }

    public final void d(int i) {
        int i2 = this.l;
        this.l = i;
        if ((i2 == 0) != (i == 0)) {
            xy1 xy1VarU = this.a.u();
            bz1 bz1Var = xy1VarU != null ? xy1VarU.T : null;
            if (bz1Var != null) {
                int i3 = bz1Var.l;
                if (i == 0) {
                    bz1Var.d(i3 - 1);
                } else {
                    bz1Var.d(i3 + 1);
                }
            }
        }
    }

    public final void e(int i) {
        int i2 = this.o;
        this.o = i;
        if ((i2 == 0) != (i == 0)) {
            xy1 xy1VarU = this.a.u();
            bz1 bz1Var = xy1VarU != null ? xy1VarU.T : null;
            if (bz1Var != null) {
                int i3 = bz1Var.o;
                if (i == 0) {
                    bz1Var.e(i3 - 1);
                } else {
                    bz1Var.e(i3 + 1);
                }
            }
        }
    }

    public final void f(boolean z) {
        if (this.k != z) {
            this.k = z;
            if (z && !this.j) {
                d(this.l + 1);
            } else {
                if (z || this.j) {
                    return;
                }
                d(this.l - 1);
            }
        }
    }

    public final void g(boolean z) {
        if (this.j != z) {
            this.j = z;
            if (z && !this.k) {
                d(this.l + 1);
            } else {
                if (z || this.k) {
                    return;
                }
                d(this.l - 1);
            }
        }
    }

    public final void h(boolean z) {
        if (this.n != z) {
            this.n = z;
            if (z && !this.m) {
                e(this.o + 1);
            } else {
                if (z || this.m) {
                    return;
                }
                e(this.o - 1);
            }
        }
    }

    public final void i(boolean z) {
        if (this.m != z) {
            this.m = z;
            if (z && !this.n) {
                e(this.o + 1);
            } else {
                if (z || this.n) {
                    return;
                }
                e(this.o - 1);
            }
        }
    }

    public final void j() {
        cb2 cb2Var = this.p;
        bz1 bz1Var = cb2Var.s;
        Object obj = cb2Var.E;
        xy1 xy1Var = this.a;
        if ((obj != null || bz1Var.a().i() != null) && cb2Var.D) {
            cb2Var.D = false;
            cb2Var.E = bz1Var.a().i();
            xy1 xy1VarU = xy1Var.u();
            if (xy1VarU != null) {
                xy1.X(xy1VarU, false, 7);
            }
        }
        q82 q82Var = this.q;
        if (q82Var != null) {
            bz1 bz1Var2 = q82Var.s;
            if (q82Var.K == null) {
                m82 m82VarM0 = bz1Var2.a().M0();
                m82VarM0.getClass();
                if (m82VarM0.F.i() == null) {
                    return;
                }
            }
            if (q82Var.J) {
                q82Var.J = false;
                m82 m82VarM02 = bz1Var2.a().M0();
                m82VarM02.getClass();
                q82Var.K = m82VarM02.F.i();
                if (ix.C(xy1Var)) {
                    xy1 xy1VarU2 = xy1Var.u();
                    if (xy1VarU2 != null) {
                        xy1.X(xy1VarU2, false, 7);
                        return;
                    }
                    return;
                }
                xy1 xy1VarU3 = xy1Var.u();
                if (xy1VarU3 != null) {
                    xy1.V(xy1VarU3, false, 7);
                }
            }
        }
    }
}
