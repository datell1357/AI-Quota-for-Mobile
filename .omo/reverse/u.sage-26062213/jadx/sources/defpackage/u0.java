package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u0 extends gg4 {
    @Override // defpackage.gg4
    public final void P(a1 a1Var, a1 a1Var2) {
        a1Var.b = a1Var2;
    }

    @Override // defpackage.gg4
    public final void Q(a1 a1Var, Thread thread) {
        a1Var.a = thread;
    }

    @Override // defpackage.gg4
    public final boolean j(s0 s0Var, p0 p0Var, p0 p0Var2) {
        synchronized (s0Var) {
            try {
                if (s0Var.o != p0Var) {
                    return false;
                }
                s0Var.o = p0Var2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.gg4
    public final boolean k(b1 b1Var, Object obj, Object obj2) {
        synchronized (b1Var) {
            try {
                if (b1Var.n != obj) {
                    return false;
                }
                b1Var.n = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.gg4
    public final boolean l(b1 b1Var, a1 a1Var, a1 a1Var2) {
        synchronized (b1Var) {
            try {
                if (b1Var.p != a1Var) {
                    return false;
                }
                b1Var.p = a1Var2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.gg4
    public final p0 x(s0 s0Var) {
        p0 p0Var;
        p0 p0Var2 = p0.d;
        synchronized (s0Var) {
            try {
                p0Var = s0Var.o;
                if (p0Var != p0Var2) {
                    s0Var.o = p0Var2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return p0Var;
    }

    @Override // defpackage.gg4
    public final a1 y(s0 s0Var) {
        a1 a1Var;
        a1 a1Var2 = a1.c;
        synchronized (s0Var) {
            try {
                a1Var = s0Var.p;
                if (a1Var != a1Var2) {
                    s0Var.p = a1Var2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return a1Var;
    }
}
