package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qo extends il2 {
    public final hl2 a;
    public final gl2 b;

    public qo(hl2 hl2Var, gl2 gl2Var) {
        this.a = hl2Var;
        this.b = gl2Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof il2) {
            il2 il2Var = (il2) obj;
            hl2 hl2Var = this.a;
            if (hl2Var != null ? hl2Var.equals(((qo) il2Var).a) : ((qo) il2Var).a == null) {
                gl2 gl2Var = this.b;
                if (gl2Var != null ? gl2Var.equals(((qo) il2Var).b) : ((qo) il2Var).b == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        hl2 hl2Var = this.a;
        int iHashCode = ((hl2Var == null ? 0 : hl2Var.hashCode()) ^ 1000003) * 1000003;
        gl2 gl2Var = this.b;
        return iHashCode ^ (gl2Var != null ? gl2Var.hashCode() : 0);
    }

    public final String toString() {
        return "NetworkConnectionInfo{networkType=" + this.a + ", mobileSubtype=" + this.b + "}";
    }
}
