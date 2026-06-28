package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vi implements yi {
    public final gs2 a;
    public final f21 b;

    public vi(gs2 gs2Var, f21 f21Var) {
        this.a = gs2Var;
        this.b = f21Var;
    }

    @Override // defpackage.yi
    public final gs2 a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vi)) {
            return false;
        }
        vi viVar = (vi) obj;
        return nt1.g(this.a, viVar.a) && this.b.equals(viVar.b);
    }

    public final int hashCode() {
        gs2 gs2Var = this.a;
        return this.b.hashCode() + ((gs2Var == null ? 0 : gs2Var.hashCode()) * 31);
    }

    public final String toString() {
        return "Error(painter=" + this.a + ", result=" + this.b + ")";
    }
}
