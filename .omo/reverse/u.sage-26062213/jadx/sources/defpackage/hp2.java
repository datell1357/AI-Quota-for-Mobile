package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class hp2 extends rd2 {
    public final pe1 b;

    public hp2(pe1 pe1Var) {
        this.b = pe1Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        ip2 ip2Var = new ip2();
        ip2Var.B = this.b;
        ip2Var.C = -9223372034707292160L;
        return ip2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof hp2) {
            return this.b == ((hp2) obj).b;
        }
        return false;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        ip2 ip2Var = (ip2) md2Var;
        ip2Var.B = this.b;
        ip2Var.C = -9223372034707292160L;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
