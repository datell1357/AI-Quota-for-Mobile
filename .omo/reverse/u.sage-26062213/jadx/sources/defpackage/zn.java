package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zn extends q01 {
    public final boolean a;
    public final ks3 b;

    public zn(boolean z, ks3 ks3Var) {
        this.a = z;
        this.b = ks3Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q01)) {
            return false;
        }
        zn znVar = (zn) ((q01) obj);
        if (this.a != znVar.a) {
            return false;
        }
        ks3 ks3Var = znVar.b;
        ks3 ks3Var2 = this.b;
        return ks3Var2 == null ? ks3Var == null : ks3Var2.equals(ks3Var);
    }

    public final int hashCode() {
        int i = ((this.a ? 1231 : 1237) ^ 1000003) * 1000003;
        ks3 ks3Var = this.b;
        return (ks3Var == null ? 0 : ks3Var.hashCode()) ^ i;
    }

    public final String toString() {
        return "EndSpanOptions{sampleToLocalSpanStore=" + this.a + ", status=" + this.b + "}";
    }
}
