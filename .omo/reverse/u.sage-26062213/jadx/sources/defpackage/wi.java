package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wi implements yi {
    public final gs2 a;

    public wi(gs2 gs2Var) {
        this.a = gs2Var;
    }

    @Override // defpackage.yi
    public final gs2 a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof wi) && nt1.g(this.a, ((wi) obj).a);
    }

    public final int hashCode() {
        gs2 gs2Var = this.a;
        if (gs2Var == null) {
            return 0;
        }
        return gs2Var.hashCode();
    }

    public final String toString() {
        return "Loading(painter=" + this.a + ")";
    }
}
