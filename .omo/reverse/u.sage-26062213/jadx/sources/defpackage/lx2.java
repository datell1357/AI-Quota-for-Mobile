package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lx2 extends on4 {
    public final Object d;
    public final long e;

    public lx2(long j, Object obj) {
        this.d = obj;
        this.e = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lx2)) {
            return false;
        }
        lx2 lx2Var = (lx2) obj;
        return this.d.equals(lx2Var.d) && this.e == lx2Var.e;
    }

    public final int hashCode() {
        return Long.hashCode(this.e) + (this.d.hashCode() * 31);
    }

    public final String toString() {
        return "PredictiveBackHandlerInfo(owner=" + this.d + ", compositeKey=" + this.e + ')';
    }
}
