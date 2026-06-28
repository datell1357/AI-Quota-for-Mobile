package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class c7 implements nf1, Serializable {
    public final Object n;
    public final Class o;
    public final String p;
    public final String q;
    public final boolean r = false;
    public final int s;
    public final int t;

    public c7(int i, int i2, Class cls, Object obj, String str, String str2) {
        this.n = obj;
        this.o = cls;
        this.p = str;
        this.q = str2;
        this.s = i;
        this.t = i2 >> 1;
    }

    @Override // defpackage.nf1
    public final int b() {
        return this.s;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c7)) {
            return false;
        }
        c7 c7Var = (c7) obj;
        return this.r == c7Var.r && this.s == c7Var.s && this.t == c7Var.t && nt1.g(this.n, c7Var.n) && this.o.equals(c7Var.o) && this.p.equals(c7Var.p) && this.q.equals(c7Var.q);
    }

    public final int hashCode() {
        Object obj = this.n;
        return ((((xw1.m(xw1.m((this.o.hashCode() + ((obj != null ? obj.hashCode() : 0) * 31)) * 31, this.p, 31), this.q, 31) + (this.r ? 1231 : 1237)) * 31) + this.s) * 31) + this.t;
    }

    public final String toString() {
        y33.a.getClass();
        return z33.a(this);
    }
}
