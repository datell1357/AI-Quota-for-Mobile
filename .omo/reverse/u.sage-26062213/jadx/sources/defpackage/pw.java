package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class pw extends rd2 {
    public final pe1 b;

    public pw(pe1 pe1Var) {
        this.b = pe1Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        qw qwVar = new qw();
        qwVar.B = this.b;
        return qwVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof pw) {
            return this.b == ((pw) obj).b;
        }
        return false;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        mm2 mm2Var;
        qw qwVar = (qw) md2Var;
        pe1 pe1Var = this.b;
        qwVar.B = pe1Var;
        if (qwVar.n.A && (mm2Var = w80.P(qwVar, 2).G) != null) {
            mm2Var.k1(pe1Var, true);
        }
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
