package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rg2 implements List, gx1 {
    public final ug2 n;

    public rg2(ug2 ug2Var) {
        this.n = ug2Var;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean add(Object obj) {
        this.n.c(obj);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection collection) {
        ug2 ug2Var = this.n;
        return ug2Var.f(ug2Var.p, collection);
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        this.n.h();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        return this.n.i(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!this.n.i(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        vg2.a(i, this);
        return this.n.n[i];
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        return this.n.j(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return this.n.p == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new tg2(0, this);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        ug2 ug2Var = this.n;
        Object[] objArr = ug2Var.n;
        for (int i = ug2Var.p - 1; i >= 0; i--) {
            if (nt1.g(obj, objArr[i])) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return new tg2(0, this);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        vg2.a(i, this);
        return this.n.l(i);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        ug2 ug2Var = this.n;
        int i = ug2Var.p;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            ug2Var.k(it.next());
        }
        return i != ug2Var.p;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection collection) {
        ug2 ug2Var = this.n;
        int i = ug2Var.p;
        for (int i2 = i - 1; -1 < i2; i2--) {
            if (!collection.contains(ug2Var.n[i2])) {
                ug2Var.l(i2);
            }
        }
        return i != ug2Var.p;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        vg2.a(i, this);
        Object[] objArr = this.n.n;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        return obj2;
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return this.n.p;
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        vg2.b(this, i, i2);
        return new sg2(this, i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        return k30.D(this);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return k30.E(this, objArr);
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        this.n.a(i, obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        return new tg2(i, this);
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        return this.n.f(i, collection);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        return this.n.k(obj);
    }
}
