package defpackage;

import java.util.Collections;
import java.util.Comparator;
import java.util.NavigableSet;
import java.util.SortedSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class pp1 extends np1 implements NavigableSet, tp3 {
    public static final /* synthetic */ int s = 0;
    public final transient Comparator q;
    public transient pp1 r;

    public pp1(Comparator comparator) {
        this.q = comparator;
    }

    @Override // java.util.SortedSet, defpackage.tp3
    public final Comparator comparator() {
        return this.q;
    }

    @Override // java.util.NavigableSet
    public final NavigableSet descendingSet() {
        pp1 g53Var = this.r;
        if (g53Var == null) {
            g53 g53Var2 = (g53) this;
            Comparator comparatorReverseOrder = Collections.reverseOrder(g53Var2.q);
            g53Var = g53Var2.isEmpty() ? vh2.o != comparatorReverseOrder ? new g53(z43.r, comparatorReverseOrder) : g53.f107u : new g53(g53Var2.t.n(), comparatorReverseOrder);
            this.r = g53Var;
            g53Var.r = this;
        }
        return g53Var;
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z) {
        obj.getClass();
        g53 g53Var = (g53) this;
        return g53Var.o(0, g53Var.p(obj, z));
    }

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public final g53 subSet(Object obj, boolean z, Object obj2, boolean z2) {
        obj.getClass();
        obj2.getClass();
        n44.U(this.q.compare(obj, obj2) <= 0);
        g53 g53Var = (g53) this;
        g53 g53VarO = g53Var.o(g53Var.q(obj, z), g53Var.t.size());
        return g53VarO.o(0, g53VarO.p(obj2, z2));
    }

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        obj.getClass();
        g53 g53Var = (g53) this;
        return g53Var.o(g53Var.q(obj, true), g53Var.t.size());
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        obj.getClass();
        g53 g53Var = (g53) this;
        return g53Var.o(0, g53Var.p(obj, false));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z) {
        obj.getClass();
        g53 g53Var = (g53) this;
        return g53Var.o(g53Var.q(obj, z), g53Var.t.size());
    }
}
