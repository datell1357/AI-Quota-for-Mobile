package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hh5 implements Iterator {
    public final og5 n;
    public int o;
    public int p;
    public final /* synthetic */ ih5 q;

    public /* synthetic */ hh5(ih5 ih5Var, og5 og5Var, int i) {
        this.q = ih5Var;
        this.n = og5Var;
        int i2 = i & 31;
        this.o = i2;
        this.p = i >>> (i2 + 5);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.o >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.o;
        ih5 ih5Var = this.q;
        ye4 ye4Var = ih5Var.b;
        int iB = ye4Var.b();
        Object objCast = this.n.b.cast(i >= iB ? ih5Var.c.d(i - iB) : ye4Var.d(i));
        int i2 = this.p;
        if (i2 == 0) {
            this.o = -1;
            return objCast;
        }
        int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i2) + 1;
        this.p >>>= iNumberOfTrailingZeros;
        this.o += iNumberOfTrailingZeros;
        return objCast;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
