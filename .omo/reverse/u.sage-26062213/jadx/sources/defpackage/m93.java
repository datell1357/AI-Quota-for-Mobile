package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m93 {
    public final kt4 a;
    public final on4 b;
    public final ht4 c;
    public final fl4 d;

    public m93(kt4 kt4Var, on4 on4Var, ht4 ht4Var, fl4 fl4Var) {
        this.a = kt4Var;
        this.b = on4Var;
        this.c = ht4Var;
        this.d = fl4Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m93)) {
            return false;
        }
        m93 m93Var = (m93) obj;
        return this.a.equals(m93Var.a) && this.b.equals(m93Var.b) && this.c.equals(m93Var.c) && this.d.equals(m93Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31);
    }
}
