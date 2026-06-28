package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pe5 {
    public final aa5 a;
    public final kn4 b;

    public pe5(aa5 aa5Var, kn4 kn4Var) {
        this.a = aa5Var;
        if (kn4Var != null) {
            this.b = kn4Var;
        } else {
            q73.r("Null extensionRegistryLite");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof pe5)) {
            return false;
        }
        pe5 pe5Var = (pe5) obj;
        return this.a.equals(pe5Var.a) && this.b.equals(pe5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        String string = this.a.toString();
        int length = string.length();
        String string2 = this.b.toString();
        StringBuilder sb = new StringBuilder(length + 53 + string2.length() + 1);
        di0.E(sb, "ProtoSerializer{defaultValue=", string, ", extensionRegistryLite=", string2);
        sb.append("}");
        return sb.toString();
    }
}
