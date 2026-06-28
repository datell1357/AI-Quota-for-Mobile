package defpackage;

import java.net.InetAddress;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ya3 implements ua3, Cloneable {
    public final em1 n;
    public final InetAddress o;
    public boolean p;
    public em1[] q;
    public ta3 r;
    public sa3 s;
    public boolean t;

    public ya3(ym1 ym1Var) {
        em1 em1Var = ym1Var.n;
        InetAddress inetAddress = ym1Var.o;
        w80.L(em1Var, "Target host");
        this.n = em1Var;
        this.o = inetAddress;
        this.r = ta3.n;
        this.s = sa3.n;
    }

    @Override // defpackage.ua3
    public final boolean a() {
        return this.t;
    }

    @Override // defpackage.ua3
    public final int b() {
        if (!this.p) {
            return 0;
        }
        em1[] em1VarArr = this.q;
        if (em1VarArr == null) {
            return 1;
        }
        return em1VarArr.length + 1;
    }

    @Override // defpackage.ua3
    public final boolean c() {
        return this.r == ta3.o;
    }

    public final Object clone() {
        return super.clone();
    }

    @Override // defpackage.ua3
    public final em1 d() {
        return this.n;
    }

    @Override // defpackage.ua3
    public final em1 e() {
        em1[] em1VarArr = this.q;
        if (em1VarArr == null) {
            return null;
        }
        return em1VarArr[0];
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ya3)) {
            return false;
        }
        ya3 ya3Var = (ya3) obj;
        return this.p == ya3Var.p && this.t == ya3Var.t && this.r == ya3Var.r && this.s == ya3Var.s && c75.A(this.n, ya3Var.n) && c75.A(this.o, ya3Var.o) && c75.B(this.q, ya3Var.q);
    }

    public final boolean f() {
        return this.s == sa3.o;
    }

    public final void g() {
        this.p = false;
        this.q = null;
        this.r = ta3.n;
        this.s = sa3.n;
        this.t = false;
    }

    public final ym1 h() {
        if (!this.p) {
            return null;
        }
        em1[] em1VarArr = this.q;
        boolean z = this.t;
        ta3 ta3Var = this.r;
        sa3 sa3Var = this.s;
        return new ym1(this.n, this.o, em1VarArr != null ? Arrays.asList(em1VarArr) : null, z, ta3Var, sa3Var);
    }

    public final int hashCode() {
        int I = c75.I(c75.I(17, this.n), this.o);
        em1[] em1VarArr = this.q;
        if (em1VarArr != null) {
            for (em1 em1Var : em1VarArr) {
                I = c75.I(I, em1Var);
            }
        }
        return c75.I(c75.I(c75.H(c75.H(I, this.p ? 1 : 0), this.t ? 1 : 0), this.r), this.s);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((b() * 30) + 50);
        sb.append("RouteTracker[");
        InetAddress inetAddress = this.o;
        if (inetAddress != null) {
            sb.append(inetAddress);
            sb.append("->");
        }
        sb.append('{');
        if (this.p) {
            sb.append('c');
        }
        if (this.r == ta3.o) {
            sb.append('t');
        }
        if (this.s == sa3.o) {
            sb.append('l');
        }
        if (this.t) {
            sb.append('s');
        }
        sb.append("}->");
        em1[] em1VarArr = this.q;
        if (em1VarArr != null) {
            for (em1 em1Var : em1VarArr) {
                sb.append(em1Var);
                sb.append("->");
            }
        }
        sb.append(this.n);
        sb.append(']');
        return sb.toString();
    }
}
