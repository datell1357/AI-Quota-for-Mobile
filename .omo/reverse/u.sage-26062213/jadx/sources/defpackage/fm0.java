package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fm0 {
    public final em0 a;
    public final em0 b;
    public final double c;

    public fm0(em0 em0Var, em0 em0Var2, double d) {
        this.a = em0Var;
        this.b = em0Var2;
        this.c = d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fm0)) {
            return false;
        }
        fm0 fm0Var = (fm0) obj;
        return this.a == fm0Var.a && this.b == fm0Var.b && Double.compare(this.c, fm0Var.c) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.c) + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "DataCollectionStatus(performance=" + this.a + ", crashlytics=" + this.b + ", sessionSamplingRate=" + this.c + ')';
    }
}
