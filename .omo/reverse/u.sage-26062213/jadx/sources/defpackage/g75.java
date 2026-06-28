package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g75 {
    public final Context a;
    public final cu3 b;

    public g75(Context context, cu3 cu3Var) {
        this.a = context;
        this.b = cu3Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g75)) {
            return false;
        }
        g75 g75Var = (g75) obj;
        if (!this.a.equals(g75Var.a)) {
            return false;
        }
        cu3 cu3Var = g75Var.b;
        cu3 cu3Var2 = this.b;
        return cu3Var2 == null ? cu3Var == null : cu3Var2.equals(cu3Var);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() ^ 1000003;
        cu3 cu3Var = this.b;
        return (cu3Var == null ? 0 : cu3Var.hashCode()) ^ (iHashCode * 1000003);
    }

    public final String toString() {
        String string = this.a.toString();
        int length = string.length();
        String strValueOf = String.valueOf(this.b);
        StringBuilder sb = new StringBuilder(length + 45 + strValueOf.length() + 1);
        di0.E(sb, "FlagsContext{context=", string, ", hermeticFileOverrides=", strValueOf);
        sb.append("}");
        return sb.toString();
    }
}
