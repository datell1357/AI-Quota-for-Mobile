package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class va3 {
    public final wa3 a;
    public final wa3 b;
    public final Throwable c;

    public va3(wa3 wa3Var, vd0 vd0Var, Throwable th) {
        this.a = wa3Var;
        this.b = vd0Var;
        this.c = th;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof va3)) {
            return false;
        }
        va3 va3Var = (va3) obj;
        return nt1.g(this.a, va3Var.a) && nt1.g(this.b, va3Var.b) && nt1.g(this.c, va3Var.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        wa3 wa3Var = this.b;
        int iHashCode2 = (iHashCode + (wa3Var == null ? 0 : wa3Var.hashCode())) * 31;
        Throwable th = this.c;
        return iHashCode2 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "ConnectResult(plan=" + this.a + ", nextPlan=" + this.b + ", throwable=" + this.c + ')';
    }

    public /* synthetic */ va3(wa3 wa3Var, Throwable th, int i) {
        this(wa3Var, (vd0) null, (i & 4) != 0 ? null : th);
    }
}
