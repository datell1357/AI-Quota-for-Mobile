package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wq3 implements Iterable {
    public final /* synthetic */ CharSequence n;
    public final /* synthetic */ lq1 o;

    public wq3(lq1 lq1Var, CharSequence charSequence) {
        this.n = charSequence;
        this.o = lq1Var;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        lq1 lq1Var = this.o;
        return ((r6) lq1Var.d).i(lq1Var, this.n);
    }

    public final String toString() {
        ev1 ev1Var = new ev1(", ");
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        ev1Var.a(sb, iterator());
        sb.append(']');
        return sb.toString();
    }
}
