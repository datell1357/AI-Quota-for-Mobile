package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f21 implements oo1 {
    public final ao1 a;
    public final jo1 b;
    public final Throwable c;

    public f21(ao1 ao1Var, jo1 jo1Var, Throwable th) {
        this.a = ao1Var;
        this.b = jo1Var;
        this.c = th;
    }

    @Override // defpackage.oo1
    public final jo1 a() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f21)) {
            return false;
        }
        f21 f21Var = (f21) obj;
        return nt1.g(this.a, f21Var.a) && nt1.g(this.b, f21Var.b) && this.c.equals(f21Var.c);
    }

    public final int hashCode() {
        ao1 ao1Var = this.a;
        int iHashCode = ao1Var == null ? 0 : ao1Var.hashCode();
        return this.c.hashCode() + ((this.b.hashCode() + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        return "ErrorResult(image=" + this.a + ", request=" + this.b + ", throwable=" + this.c + ")";
    }
}
