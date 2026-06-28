package defpackage;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u51 extends rd2 {
    public final ju0 b;

    public u51(ju0 ju0Var) {
        this.b = ju0Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        v51 v51Var = new v51();
        v51Var.B = this.b;
        v51Var.C = 1.0f;
        return v51Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof u51) {
            return this.b == ((u51) obj).b;
        }
        return false;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        v51 v51Var = (v51) md2Var;
        v51Var.B = this.b;
        v51Var.C = 1.0f;
    }

    public final int hashCode() {
        return Float.hashCode(1.0f) + (this.b.hashCode() * 31);
    }
}
