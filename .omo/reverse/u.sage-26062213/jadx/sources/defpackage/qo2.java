package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qo2 extends on4 {
    public final up d;
    public final p22 e;

    public qo2(up upVar, p22 p22Var) {
        upVar.getClass();
        this.d = upVar;
        this.e = p22Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qo2)) {
            return false;
        }
        qo2 qo2Var = (qo2) obj;
        return nt1.g(this.d, qo2Var.d) && nt1.g(this.e, qo2Var.e);
    }

    public final int hashCode() {
        int iHashCode = this.d.hashCode() * 31;
        p22 p22Var = this.e;
        return iHashCode + (p22Var == null ? 0 : p22Var.hashCode());
    }

    public final String toString() {
        return "OnBackPressedCallbackInfo(callback=" + this.d + ", owner=" + this.e + ')';
    }
}
