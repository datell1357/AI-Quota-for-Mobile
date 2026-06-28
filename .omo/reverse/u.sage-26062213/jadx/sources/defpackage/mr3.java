package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mr3 implements ia4 {
    public final ia4 n;
    public final long o;

    public mr3(ia4 ia4Var, long j) {
        this.n = ia4Var;
        this.o = j;
    }

    @Override // defpackage.ia4
    public final boolean a() {
        return this.n.a();
    }

    @Override // defpackage.ia4
    public final long c(bf bfVar, bf bfVar2, bf bfVar3) {
        return this.n.c(bfVar, bfVar2, bfVar3) + this.o;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof mr3)) {
            return false;
        }
        mr3 mr3Var = (mr3) obj;
        return mr3Var.o == this.o && nt1.g(mr3Var.n, this.n);
    }

    public final int hashCode() {
        return Long.hashCode(this.o) + (this.n.hashCode() * 31);
    }

    @Override // defpackage.ia4
    public final bf m(long j, bf bfVar, bf bfVar2, bf bfVar3) {
        long j2 = this.o;
        return j < j2 ? bfVar3 : this.n.m(j - j2, bfVar, bfVar2, bfVar3);
    }

    @Override // defpackage.ia4
    public final bf p(long j, bf bfVar, bf bfVar2, bf bfVar3) {
        long j2 = this.o;
        return j < j2 ? bfVar : this.n.p(j - j2, bfVar, bfVar2, bfVar3);
    }
}
