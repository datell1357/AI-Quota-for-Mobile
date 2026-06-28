package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ru implements Cloneable {
    public final String n;
    public final String o;
    public final sh2[] p;

    public ru(String str, String str2, sh2[] sh2VarArr) {
        w80.L(str, "Name");
        this.n = str;
        this.o = str2;
        if (sh2VarArr != null) {
            this.p = sh2VarArr;
        } else {
            this.p = new sh2[0];
        }
    }

    public final sh2 a(String str) {
        for (sh2 sh2Var : this.p) {
            if (sh2Var.getName().equalsIgnoreCase(str)) {
                return sh2Var;
            }
        }
        return null;
    }

    public final Object clone() {
        return super.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ru) {
            ru ruVar = (ru) obj;
            if (this.n.equals(ruVar.n) && c75.A(this.o, ruVar.o) && c75.B(this.p, ruVar.p)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int I = c75.I(c75.I(17, this.n), this.o);
        for (sh2 sh2Var : this.p) {
            I = c75.I(I, sh2Var);
        }
        return I;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.n);
        String str = this.o;
        if (str != null) {
            sb.append("=");
            sb.append(str);
        }
        for (sh2 sh2Var : this.p) {
            sb.append("; ");
            sb.append(sh2Var);
        }
        return sb.toString();
    }
}
