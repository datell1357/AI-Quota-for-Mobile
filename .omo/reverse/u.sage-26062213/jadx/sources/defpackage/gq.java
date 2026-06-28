package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class gq extends rd2 {
    public final long b;
    public final float c = 1.0f;
    public final jl3 d;

    public gq(long j, jl3 jl3Var) {
        this.b = j;
        this.d = jl3Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        hq hqVar = new hq();
        hqVar.B = this.b;
        hqVar.C = this.d;
        hqVar.D = 9205357640488583168L;
        return hqVar;
    }

    public final boolean equals(Object obj) {
        gq gqVar = obj instanceof gq ? (gq) obj : null;
        return gqVar != null && t70.c(this.b, gqVar.b) && this.c == gqVar.c && nt1.g(this.d, gqVar.d);
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        hq hqVar = (hq) md2Var;
        hqVar.B = this.b;
        jl3 jl3Var = hqVar.C;
        jl3 jl3Var2 = this.d;
        if (!nt1.g(jl3Var, jl3Var2)) {
            hqVar.C = jl3Var2;
            w80.A(hqVar);
        }
        kt4.Q(hqVar);
    }

    public final int hashCode() {
        int i = t70.g;
        return this.d.hashCode() + di0.l(this.c, Long.hashCode(this.b) * 961, 31);
    }
}
