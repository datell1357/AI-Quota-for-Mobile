package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sg2 implements List, gx1 {
    public final List n;
    public final int o;
    public int p;

    public sg2(List list, int i, int i2) {
        this.n = list;
        this.o = i;
        this.p = i2;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        this.n.add(i + this.o, obj);
        this.p++;
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        this.n.addAll(i + this.o, collection);
        int size = collection.size();
        this.p += size;
        return size > 0;
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        int i = this.p - 1;
        int i2 = this.o;
        if (i2 <= i) {
            while (true) {
                this.n.remove(i);
                if (i == i2) {
                    break;
                } else {
                    i--;
                }
            }
        }
        this.p = i2;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        int i = this.p;
        for (int i2 = this.o; i2 < i; i2++) {
            if (nt1.g(this.n.get(i2), obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        vg2.a(i, this);
        return this.n.get(i + this.o);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        int i = this.p;
        int i2 = this.o;
        for (int i3 = i2; i3 < i; i3++) {
            if (nt1.g(this.n.get(i3), obj)) {
                return i3 - i2;
            }
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return this.p == this.o;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new tg2(0, this);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        int i = this.p - 1;
        int i2 = this.o;
        if (i2 > i) {
            return -1;
        }
        while (!nt1.g(this.n.get(i), obj)) {
            if (i == i2) {
                return -1;
            }
            i--;
        }
        return i - i2;
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return new tg2(0, this);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        int i = this.p;
        for (int i2 = this.o; i2 < i; i2++) {
            List list = this.n;
            if (nt1.g(list.get(i2), obj)) {
                list.remove(i2);
                this.p--;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection collection) {
        int i = this.p;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
        return i != this.p;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection collection) {
        int i = this.p;
        int i2 = i - 1;
        int i3 = this.o;
        if (i3 <= i2) {
            while (true) {
                List list = this.n;
                if (!collection.contains(list.get(i2))) {
                    list.remove(i2);
                    this.p--;
                }
                if (i2 == i3) {
                    break;
                }
                i2--;
            }
        }
        return i != this.p;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        vg2.a(i, this);
        return this.n.set(i + this.o, obj);
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return this.p - this.o;
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
    public final ListIterator listIterator(int i) {
        return new tg2(i, this);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean add(Object obj) {
        int i = this.p;
        this.p = i + 1;
        this.n.add(i, obj);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection collection) {
        this.n.addAll(this.p, collection);
        int size = collection.size();
        this.p += size;
        return size > 0;
    }

    @Override // java.util.List
    public final Object remove(int i) {
        vg2.a(i, this);
        this.p--;
        return this.n.remove(i + this.o);
    }
}
