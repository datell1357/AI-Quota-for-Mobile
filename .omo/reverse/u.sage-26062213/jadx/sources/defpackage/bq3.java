package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bq3 implements bc0, Iterable, fx1 {
    public final un3 n;
    public final int o;
    public final h53 p;

    public bq3(un3 un3Var, int i, cg1 cg1Var, h53 h53Var) {
        this.n = un3Var;
        this.o = i;
        this.p = h53Var;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof bq3)) {
            return false;
        }
        bq3 bq3Var = (bq3) obj;
        return bq3Var.o == this.o && bq3Var.n == this.n && bq3Var.p.equals(this.p);
    }

    public final int hashCode() {
        return this.p.hashCode() + ((this.n.hashCode() + (this.o * 31)) * 31);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new xr0(this.n, this.o, null, this.p);
    }
}
