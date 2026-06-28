package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oq1 implements ve {
    public final dy0 a;
    public final d63 b;

    public oq1(dy0 dy0Var, d63 d63Var) {
        this.a = dy0Var;
        this.b = d63Var;
        if (dy0Var instanceof d34) {
            d34 d34Var = (d34) dy0Var;
            if (d34Var.a != 0 || d34Var.b != 0) {
                return;
            }
        } else if (!(dy0Var instanceof oo3)) {
            return;
        }
        k21.f("Animation to be infinitely repeated cannot have a 0-duration");
        throw null;
    }

    @Override // defpackage.ve
    public final ia4 a(e34 e34Var) {
        return new x23(this.a.a(e34Var), this.b);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof oq1)) {
            return false;
        }
        oq1 oq1Var = (oq1) obj;
        return oq1Var.a.equals(this.a) && oq1Var.b == this.b;
    }

    public final int hashCode() {
        return Long.hashCode(0L) + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }
}
