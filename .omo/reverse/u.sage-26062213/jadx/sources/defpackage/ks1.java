package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ks1 implements Iterable, fx1 {
    public final int n;
    public final int o;
    public final int p;

    public ks1(int i, int i2, int i3) {
        if (i3 == 0) {
            k21.f("Step must be non-zero.");
            throw null;
        }
        if (i3 == Integer.MIN_VALUE) {
            k21.f("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
            throw null;
        }
        this.n = i;
        this.o = zf5.J(i, i2, i3);
        this.p = i3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ks1)) {
            return false;
        }
        if (isEmpty() && ((ks1) obj).isEmpty()) {
            return true;
        }
        ks1 ks1Var = (ks1) obj;
        return this.n == ks1Var.n && this.o == ks1Var.o && this.p == ks1Var.p;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.n * 31) + this.o) * 31) + this.p;
    }

    public boolean isEmpty() {
        int i = this.o;
        int i2 = this.p;
        int i3 = this.n;
        return i2 > 0 ? i3 > i : i3 < i;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new ls1(this.n, this.o, this.p);
    }

    public String toString() {
        StringBuilder sb;
        int i = this.o;
        int i2 = this.p;
        int i3 = this.n;
        if (i2 > 0) {
            sb = new StringBuilder();
            sb.append(i3);
            sb.append("..");
            sb.append(i);
            sb.append(" step ");
            sb.append(i2);
        } else {
            sb = new StringBuilder();
            sb.append(i3);
            sb.append(" downTo ");
            sb.append(i);
            sb.append(" step ");
            sb.append(-i2);
        }
        return sb.toString();
    }
}
