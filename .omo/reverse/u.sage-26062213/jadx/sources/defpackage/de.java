package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class de<S> extends rd2 {
    public final j14 b;
    public final pg2 c;
    public final he d;

    public de(j14 j14Var, pg2 pg2Var, he heVar) {
        this.b = j14Var;
        this.c = pg2Var;
        this.d = heVar;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        ge geVar = new ge();
        geVar.B = this.b;
        geVar.C = this.c;
        geVar.D = this.d;
        geVar.E = -9223372034707292160L;
        return geVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof de)) {
            return false;
        }
        de deVar = (de) obj;
        return nt1.g(deVar.b, this.b) && deVar.c.equals(this.c);
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        ge geVar = (ge) md2Var;
        geVar.B = this.b;
        geVar.C = this.c;
        geVar.D = this.d;
    }

    public final int hashCode() {
        int iHashCode = this.d.hashCode() * 31;
        j14 j14Var = this.b;
        return this.c.hashCode() + ((iHashCode + (j14Var != null ? j14Var.hashCode() : 0)) * 31);
    }
}
