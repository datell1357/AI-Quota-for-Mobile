package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d7 implements hd4 {
    public final hd4 a;
    public final es2 b;

    public d7(hd4 hd4Var, es2 es2Var) {
        this.a = hd4Var;
        this.b = es2Var;
    }

    @Override // defpackage.hd4
    public final int a(as0 as0Var) {
        return this.b.a(as0Var) + this.a.a(as0Var);
    }

    @Override // defpackage.hd4
    public final int b(as0 as0Var) {
        return this.b.b(as0Var) + this.a.b(as0Var);
    }

    @Override // defpackage.hd4
    public final int c(as0 as0Var, hy1 hy1Var) {
        return this.b.c(as0Var, hy1Var) + this.a.c(as0Var, hy1Var);
    }

    @Override // defpackage.hd4
    public final int d(as0 as0Var, hy1 hy1Var) {
        return this.b.d(as0Var, hy1Var) + this.a.d(as0Var, hy1Var);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d7)) {
            return false;
        }
        d7 d7Var = (d7) obj;
        return nt1.g(d7Var.a, this.a) && d7Var.b.equals(this.b);
    }

    public final int hashCode() {
        return (this.b.a.hashCode() * 31) + this.a.hashCode();
    }

    public final String toString() {
        return "(" + this.a + " + " + this.b + ")";
    }
}
