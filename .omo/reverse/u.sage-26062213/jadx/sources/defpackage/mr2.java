package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mr2 extends fl4 {
    public final ka3 x;
    public final sb y;

    public mr2(ka3 ka3Var) {
        sb sbVarA;
        this.x = ka3Var;
        if (k30.z(ka3Var)) {
            sbVarA = null;
        } else {
            sbVarA = ub.a();
            sb.b(sbVarA, ka3Var);
        }
        this.y = sbVarA;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof mr2) {
            return this.x.equals(((mr2) obj).x);
        }
        return false;
    }

    public final int hashCode() {
        return this.x.hashCode();
    }

    @Override // defpackage.fl4
    public final l33 o() {
        ka3 ka3Var = this.x;
        return new l33(ka3Var.a, ka3Var.b, ka3Var.c, ka3Var.d);
    }
}
