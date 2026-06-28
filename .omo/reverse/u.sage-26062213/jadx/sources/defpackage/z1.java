package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z1 extends kt4 {
    @Override // defpackage.kt4
    public final void Y(a2 a2Var, a2 a2Var2) {
        a2Var.b = a2Var2;
    }

    @Override // defpackage.kt4
    public final void Z(a2 a2Var, Thread thread) {
        a2Var.a = thread;
    }

    @Override // defpackage.kt4
    public final boolean q(b2 b2Var, x1 x1Var, x1 x1Var2) {
        synchronized (b2Var) {
            try {
                if (b2Var.o != x1Var) {
                    return false;
                }
                b2Var.o = x1Var2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.kt4
    public final boolean s(b2 b2Var, Object obj, Object obj2) {
        synchronized (b2Var) {
            try {
                if (b2Var.n != obj) {
                    return false;
                }
                b2Var.n = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.kt4
    public final boolean t(b2 b2Var, a2 a2Var, a2 a2Var2) {
        synchronized (b2Var) {
            try {
                if (b2Var.p != a2Var) {
                    return false;
                }
                b2Var.p = a2Var2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
