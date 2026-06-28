package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mc0 implements x94 {
    public final pe1 a;

    public mc0(pe1 pe1Var) {
        this.a = pe1Var;
    }

    @Override // defpackage.x94
    public final Object a(hu2 hu2Var) {
        return this.a.k(hu2Var);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof mc0) && nt1.g(this.a, ((mc0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ComputedValueHolder(compute=" + this.a + ")";
    }
}
