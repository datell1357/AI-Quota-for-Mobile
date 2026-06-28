package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g53 extends pp1 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final g53 f107u;
    public final transient lp1 t;

    static {
        hp1 hp1Var = lp1.o;
        f107u = new g53(z43.r, vh2.o);
    }

    public g53(lp1 lp1Var, Comparator comparator) {
        super(comparator);
        this.t = lp1Var;
    }

    @Override // defpackage.np1, defpackage.dp1
    public final lp1 a() {
        return this.t;
    }

    @Override // defpackage.dp1
    public final int c(Object[] objArr) {
        return this.t.c(objArr);
    }

    @Override // java.util.NavigableSet
    public final Object ceiling(Object obj) {
        int iQ = q(obj, true);
        lp1 lp1Var = this.t;
        if (iQ == lp1Var.size()) {
            return null;
        }
        return lp1Var.get(iQ);
    }

    @Override // defpackage.dp1, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            try {
                if (Collections.binarySearch(this.t, obj, this.q) >= 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        if (collection instanceof hf2) {
            collection = ((hf2) collection).r();
        }
        Comparator comparator = this.q;
        if (!se0.v(comparator, collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        y64 it = iterator();
        Iterator it2 = collection.iterator();
        hp1 hp1Var = (hp1) it;
        if (!hp1Var.hasNext()) {
            return false;
        }
        Object next = it2.next();
        Object next2 = hp1Var.next();
        while (true) {
            try {
                int iCompare = comparator.compare(next2, next);
                if (iCompare < 0) {
                    if (!hp1Var.hasNext()) {
                        return false;
                    }
                    next2 = hp1Var.next();
                } else if (iCompare == 0) {
                    if (!it2.hasNext()) {
                        return true;
                    }
                    next = it2.next();
                } else if (iCompare > 0) {
                    return false;
                }
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }
    }

    @Override // defpackage.dp1
    public final Object[] d() {
        return this.t.d();
    }

    @Override // java.util.NavigableSet
    public final Iterator descendingIterator() {
        return this.t.n().listIterator(0);
    }

    @Override // defpackage.dp1
    public final int e() {
        return this.t.e();
    }

    @Override // defpackage.np1, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        Object next;
        Object next2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (this.t.size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        Comparator comparator = this.q;
        if (!se0.v(comparator, set)) {
            return containsAll(set);
        }
        Iterator it = set.iterator();
        try {
            y64 it2 = iterator();
            do {
                hp1 hp1Var = (hp1) it2;
                if (!hp1Var.hasNext()) {
                    return true;
                }
                next = hp1Var.next();
                next2 = it.next();
                if (next2 == null) {
                    return false;
                }
            } while (comparator.compare(next, next2) == 0);
            return false;
        } catch (ClassCastException | NoSuchElementException unused) {
            return false;
        }
    }

    @Override // defpackage.dp1
    public final int f() {
        return this.t.f();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        if (!isEmpty()) {
            return this.t.get(0);
        }
        p61.v();
        return null;
    }

    @Override // java.util.NavigableSet
    public final Object floor(Object obj) {
        int iP = p(obj, true) - 1;
        if (iP == -1) {
            return null;
        }
        return this.t.get(iP);
    }

    @Override // defpackage.dp1
    public final boolean g() {
        return this.t.g();
    }

    @Override // defpackage.dp1
    /* JADX INFO: renamed from: h */
    public final y64 iterator() {
        return this.t.listIterator(0);
    }

    @Override // java.util.NavigableSet
    public final Object higher(Object obj) {
        int iQ = q(obj, false);
        lp1 lp1Var = this.t;
        if (iQ == lp1Var.size()) {
            return null;
        }
        return lp1Var.get(iQ);
    }

    @Override // java.util.SortedSet
    public final Object last() {
        if (isEmpty()) {
            p61.v();
            return null;
        }
        return this.t.get(r1.size() - 1);
    }

    @Override // java.util.NavigableSet
    public final Object lower(Object obj) {
        int iP = p(obj, false) - 1;
        if (iP == -1) {
            return null;
        }
        return this.t.get(iP);
    }

    public final g53 o(int i, int i2) {
        lp1 lp1Var = this.t;
        if (i == 0 && i2 == lp1Var.size()) {
            return this;
        }
        Comparator comparator = this.q;
        return i < i2 ? new g53(lp1Var.subList(i, i2), comparator) : vh2.o != comparator ? new g53(z43.r, comparator) : f107u;
    }

    public final int p(Object obj, boolean z) {
        obj.getClass();
        int iBinarySearch = Collections.binarySearch(this.t, obj, this.q);
        return iBinarySearch >= 0 ? z ? iBinarySearch + 1 : iBinarySearch : ~iBinarySearch;
    }

    public final int q(Object obj, boolean z) {
        obj.getClass();
        int iBinarySearch = Collections.binarySearch(this.t, obj, this.q);
        return iBinarySearch >= 0 ? z ? iBinarySearch : iBinarySearch + 1 : ~iBinarySearch;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.t.size();
    }
}
