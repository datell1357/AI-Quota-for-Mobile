package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a90 {
    public final Object a;
    public final j20 b;
    public final ff1 c;
    public final Object d;
    public final Throwable e;

    public /* synthetic */ a90(Object obj, j20 j20Var, ff1 ff1Var, Throwable th, int i) {
        this(obj, (i & 2) != 0 ? null : j20Var, (i & 4) != 0 ? null : ff1Var, (Object) null, (i & 16) != 0 ? null : th);
    }

    public static a90 a(a90 a90Var, j20 j20Var, Throwable th, int i) {
        Object obj = a90Var.a;
        if ((i & 2) != 0) {
            j20Var = a90Var.b;
        }
        j20 j20Var2 = j20Var;
        ff1 ff1Var = a90Var.c;
        Object obj2 = a90Var.d;
        if ((i & 16) != 0) {
            th = a90Var.e;
        }
        return new a90(obj, j20Var2, ff1Var, obj2, th);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a90)) {
            return false;
        }
        a90 a90Var = (a90) obj;
        return nt1.g(this.a, a90Var.a) && nt1.g(this.b, a90Var.b) && nt1.g(this.c, a90Var.c) && nt1.g(this.d, a90Var.d) && nt1.g(this.e, a90Var.e);
    }

    public final int hashCode() {
        Object obj = this.a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        j20 j20Var = this.b;
        int iHashCode2 = (iHashCode + (j20Var == null ? 0 : j20Var.hashCode())) * 31;
        ff1 ff1Var = this.c;
        int iHashCode3 = (iHashCode2 + (ff1Var == null ? 0 : ff1Var.hashCode())) * 31;
        Object obj2 = this.d;
        int iHashCode4 = (iHashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.e;
        return iHashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.a + ", cancelHandler=" + this.b + ", onCancellation=" + this.c + ", idempotentResume=" + this.d + ", cancelCause=" + this.e + ')';
    }

    public a90(Object obj, j20 j20Var, ff1 ff1Var, Object obj2, Throwable th) {
        this.a = obj;
        this.b = j20Var;
        this.c = ff1Var;
        this.d = obj2;
        this.e = th;
    }
}
