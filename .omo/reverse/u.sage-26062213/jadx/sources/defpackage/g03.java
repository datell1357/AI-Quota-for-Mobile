package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class g03 implements Serializable, Cloneable {
    public final String n = "HTTP";
    public final int o;
    public final int p;

    public g03(int i, int i2) {
        w80.J(i, "Protocol major version");
        this.o = i;
        w80.J(i2, "Protocol minor version");
        this.p = i2;
    }

    public final boolean a(g03 g03Var) {
        if (g03Var == null) {
            return false;
        }
        String str = g03Var.n;
        String str2 = this.n;
        if (!str2.equals(str)) {
            return false;
        }
        boolean zEquals = str2.equals(str);
        Object[] objArr = {this, g03Var};
        if (!zEquals) {
            throw new IllegalArgumentException(String.format("Versions for different protocols cannot be compared: %s %s", objArr));
        }
        int i = this.o - g03Var.o;
        if (i == 0) {
            i = this.p - g03Var.p;
        }
        return i <= 0;
    }

    public final Object clone() {
        return super.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g03)) {
            return false;
        }
        g03 g03Var = (g03) obj;
        return this.n.equals(g03Var.n) && this.o == g03Var.o && this.p == g03Var.p;
    }

    public final int hashCode() {
        return this.p ^ (this.n.hashCode() ^ (this.o * 100000));
    }

    public final String toString() {
        return this.n + '/' + Integer.toString(this.o) + '.' + Integer.toString(this.p);
    }
}
