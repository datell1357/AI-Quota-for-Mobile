package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a31 implements hd4 {
    public final hd4 a;
    public final hd4 b;

    public a31(hd4 hd4Var, hd4 hd4Var2) {
        this.a = hd4Var;
        this.b = hd4Var2;
    }

    @Override // defpackage.hd4
    public final int a(as0 as0Var) {
        int iA = this.a.a(as0Var) - this.b.a(as0Var);
        if (iA < 0) {
            return 0;
        }
        return iA;
    }

    @Override // defpackage.hd4
    public final int b(as0 as0Var) {
        int iB = this.a.b(as0Var) - this.b.b(as0Var);
        if (iB < 0) {
            return 0;
        }
        return iB;
    }

    @Override // defpackage.hd4
    public final int c(as0 as0Var, hy1 hy1Var) {
        int iC = this.a.c(as0Var, hy1Var) - this.b.c(as0Var, hy1Var);
        if (iC < 0) {
            return 0;
        }
        return iC;
    }

    @Override // defpackage.hd4
    public final int d(as0 as0Var, hy1 hy1Var) {
        int iD = this.a.d(as0Var, hy1Var) - this.b.d(as0Var, hy1Var);
        if (iD < 0) {
            return 0;
        }
        return iD;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a31)) {
            return false;
        }
        a31 a31Var = (a31) obj;
        return nt1.g(a31Var.a, this.a) && nt1.g(a31Var.b, this.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "(" + this.a + " - " + this.b + ")";
    }
}
