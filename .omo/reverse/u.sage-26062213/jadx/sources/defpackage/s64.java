package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s64 implements hd4 {
    public final hd4 a;
    public final hd4 b;

    public s64(hd4 hd4Var, hd4 hd4Var2) {
        this.a = hd4Var;
        this.b = hd4Var2;
    }

    @Override // defpackage.hd4
    public final int a(as0 as0Var) {
        return Math.max(this.a.a(as0Var), this.b.a(as0Var));
    }

    @Override // defpackage.hd4
    public final int b(as0 as0Var) {
        return Math.max(this.a.b(as0Var), this.b.b(as0Var));
    }

    @Override // defpackage.hd4
    public final int c(as0 as0Var, hy1 hy1Var) {
        return Math.max(this.a.c(as0Var, hy1Var), this.b.c(as0Var, hy1Var));
    }

    @Override // defpackage.hd4
    public final int d(as0 as0Var, hy1 hy1Var) {
        return Math.max(this.a.d(as0Var, hy1Var), this.b.d(as0Var, hy1Var));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s64)) {
            return false;
        }
        s64 s64Var = (s64) obj;
        return nt1.g(s64Var.a, this.a) && nt1.g(s64Var.b, this.b);
    }

    public final int hashCode() {
        return (this.b.hashCode() * 31) + this.a.hashCode();
    }

    public final String toString() {
        return "(" + this.a + " ∪ " + this.b + ")";
    }
}
