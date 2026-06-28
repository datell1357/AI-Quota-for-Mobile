package defpackage;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lg1 implements Serializable {
    public final Comparator n;
    public final boolean o;
    public final Object p;
    public final int q;
    public final boolean r;
    public final Object s;
    public final int t;

    public lg1(Comparator comparator, boolean z, Object obj, int i, boolean z2, Object obj2, int i2) {
        comparator.getClass();
        this.n = comparator;
        this.o = z;
        this.r = z2;
        this.p = obj;
        if (i == 0) {
            throw null;
        }
        this.q = i;
        this.s = obj2;
        if (i2 == 0) {
            throw null;
        }
        this.t = i2;
        if (z) {
            comparator.compare(obj, obj);
        }
        if (z2) {
            comparator.compare(obj2, obj2);
        }
        if (z && z2) {
            int iCompare = comparator.compare(obj, obj2);
            if (!(iCompare <= 0)) {
                k21.f(ht4.w("lowerEndpoint (%s) > upperEndpoint (%s)", obj, obj2));
                throw null;
            }
            if (iCompare == 0) {
                n44.U((i == 1 && i2 == 1) ? false : true);
            }
        }
    }

    public final boolean a(Object obj) {
        return (d(obj) || c(obj)) ? false : true;
    }

    public final lg1 b(lg1 lg1Var) {
        boolean z;
        int iCompare;
        boolean z2;
        Object obj;
        int iCompare2;
        int i;
        Object obj2;
        int iCompare3;
        int i2 = lg1Var.t;
        Object obj3 = lg1Var.s;
        int i3 = lg1Var.q;
        Object obj4 = lg1Var.p;
        Comparator comparator = lg1Var.n;
        Comparator comparator2 = this.n;
        n44.U(comparator2.equals(comparator));
        boolean z3 = lg1Var.o;
        boolean z4 = this.o;
        if (z4) {
            Object obj5 = this.p;
            if (!z3 || ((iCompare = comparator2.compare(obj5, obj4)) >= 0 && !(iCompare == 0 && i3 == 1))) {
                i3 = this.q;
                z = z4;
                obj4 = obj5;
            } else {
                z = z4;
            }
        } else {
            z = z3;
        }
        boolean z5 = lg1Var.r;
        boolean z6 = this.r;
        if (z6) {
            Object obj6 = this.s;
            if (!z5 || ((iCompare2 = comparator2.compare(obj6, obj3)) <= 0 && !(iCompare2 == 0 && i2 == 1))) {
                i2 = this.t;
                z2 = z6;
                obj = obj6;
            } else {
                obj = obj3;
                z2 = z6;
            }
        } else {
            z2 = z5;
            obj = obj3;
        }
        if (z && z2 && ((iCompare3 = comparator2.compare(obj4, obj)) > 0 || (iCompare3 == 0 && i3 == 1 && i2 == 1))) {
            i2 = 2;
            i = 1;
            obj2 = obj;
        } else {
            i = i3;
            obj2 = obj4;
        }
        return new lg1(this.n, z, obj2, i, z2, obj, i2);
    }

    public final boolean c(Object obj) {
        if (!this.r) {
            return false;
        }
        int iCompare = this.n.compare(obj, this.s);
        return ((iCompare == 0) & (this.t == 1)) | (iCompare > 0);
    }

    public final boolean d(Object obj) {
        if (!this.o) {
            return false;
        }
        int iCompare = this.n.compare(obj, this.p);
        return ((iCompare == 0) & (this.q == 1)) | (iCompare < 0);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof lg1)) {
            return false;
        }
        lg1 lg1Var = (lg1) obj;
        return this.n.equals(lg1Var.n) && this.o == lg1Var.o && this.r == lg1Var.r && di0.i(this.q, lg1Var.q) && di0.i(this.t, lg1Var.t) && ca.o(this.p, lg1Var.p) && ca.o(this.s, lg1Var.s);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.n, this.p, di0.f(this.q), this.s, di0.f(this.t)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.n);
        sb.append(":");
        sb.append(this.q == 2 ? '[' : '(');
        sb.append(this.o ? this.p : "-∞");
        sb.append(',');
        sb.append(this.r ? this.s : "∞");
        sb.append(this.t == 2 ? ']' : ')');
        return sb.toString();
    }
}
