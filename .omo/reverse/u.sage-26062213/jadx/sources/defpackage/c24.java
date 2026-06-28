package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class c24 extends rd2 {
    public final n02 b;

    public c24(n02 n02Var) {
        this.b = n02Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        d24 d24Var = new d24();
        d24Var.B = this.b;
        return d24Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c24) && nt1.g(this.b, ((c24) obj).b);
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        ((d24) md2Var).B = this.b;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "TraversablePrefetchStateModifierElement(prefetchState=" + this.b + ")";
    }
}
