package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class o21 implements Runnable, Comparable, jv0 {
    private volatile Object _heap;
    public long n;
    public int o = -1;

    public o21(long j) {
        this.n = j;
    }

    @Override // defpackage.jv0
    public final void a() {
        synchronized (this) {
            try {
                Object obj = this._heap;
                sg0 sg0Var = r21.a;
                if (obj == sg0Var) {
                    return;
                }
                p21 p21Var = obj instanceof p21 ? (p21) obj : null;
                if (p21Var != null) {
                    synchronized (p21Var) {
                        Object obj2 = this._heap;
                        if ((obj2 instanceof ry3 ? (ry3) obj2 : null) != null) {
                            p21Var.b(this.o);
                        }
                    }
                }
                this._heap = sg0Var;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int b(long j, p21 p21Var, q21 q21Var) {
        synchronized (this) {
            if (this._heap == r21.a) {
                return 2;
            }
            synchronized (p21Var) {
                try {
                    o21[] o21VarArr = p21Var.a;
                    o21 o21Var = o21VarArr != null ? o21VarArr[0] : null;
                    if (q21.v.get(q21Var) == 1) {
                        return 1;
                    }
                    if (o21Var == null) {
                        p21Var.c = j;
                    } else {
                        long j2 = o21Var.n;
                        if (j2 - j < 0) {
                            j = j2;
                        }
                        if (j - p21Var.c > 0) {
                            p21Var.c = j;
                        }
                    }
                    long j3 = this.n;
                    long j4 = p21Var.c;
                    if (j3 - j4 < 0) {
                        this.n = j4;
                    }
                    p21Var.a(this);
                    return 0;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        long j = this.n - ((o21) obj).n;
        if (j > 0) {
            return 1;
        }
        return j < 0 ? -1 : 0;
    }

    public final void d(p21 p21Var) {
        if (this._heap != r21.a) {
            this._heap = p21Var;
        } else {
            k21.f("Failed requirement.");
        }
    }

    public String toString() {
        return "Delayed[nanos=" + this.n + ']';
    }
}
