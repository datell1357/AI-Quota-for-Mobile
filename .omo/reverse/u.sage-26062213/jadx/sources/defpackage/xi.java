package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xi implements yi {
    public final gs2 a;
    public final xt3 b;

    public xi(gs2 gs2Var, xt3 xt3Var) {
        this.a = gs2Var;
        this.b = xt3Var;
    }

    @Override // defpackage.yi
    public final gs2 a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xi)) {
            return false;
        }
        xi xiVar = (xi) obj;
        return this.a.equals(xiVar.a) && this.b.equals(xiVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Success(painter=" + this.a + ", result=" + this.b + ")";
    }
}
