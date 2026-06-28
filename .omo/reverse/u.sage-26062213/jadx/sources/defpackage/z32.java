package defpackage;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z32 extends p1 implements RandomAccess, Serializable {
    public Object[] n;
    public final int o;
    public int p;
    public final z32 q;
    public final a42 r;

    public z32(Object[] objArr, int i, int i2, z32 z32Var, a42 a42Var) {
        objArr.getClass();
        a42Var.getClass();
        this.n = objArr;
        this.o = i;
        this.p = i2;
        this.q = z32Var;
        this.r = a42Var;
        ((AbstractList) this).modCount = ((AbstractList) a42Var).modCount;
    }

    @Override // defpackage.p1
    public final int a() {
        h();
        return this.p;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        i();
        h();
        int i2 = this.p;
        if (i < 0 || i > i2) {
            mk0.h(di0.p(i, i2, "index: ", ", size: "));
        } else {
            g(this.o + i, obj);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        collection.getClass();
        i();
        h();
        int i2 = this.p;
        if (i < 0 || i > i2) {
            mk0.h(di0.p(i, i2, "index: ", ", size: "));
            return false;
        }
        int size = collection.size();
        f(this.o + i, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        i();
        h();
        l(this.o, this.p);
    }

    @Override // defpackage.p1
    public final Object d(int i) {
        i();
        h();
        int i2 = this.p;
        if (i >= 0 && i < i2) {
            return k(this.o + i);
        }
        mk0.h(di0.p(i, i2, "index: ", ", size: "));
        return null;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        h();
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            Object[] objArr = this.n;
            int i = this.p;
            if (i == list.size()) {
                for (int i2 = 0; i2 < i; i2++) {
                    if (nt1.g(objArr[this.o + i2], list.get(i2))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final void f(int i, Collection collection, int i2) {
        ((AbstractList) this).modCount++;
        a42 a42Var = this.r;
        z32 z32Var = this.q;
        if (z32Var != null) {
            z32Var.f(i, collection, i2);
        } else {
            a42 a42Var2 = a42.q;
            a42Var.f(i, collection, i2);
        }
        this.n = a42Var.n;
        this.p += i2;
    }

    public final void g(int i, Object obj) {
        ((AbstractList) this).modCount++;
        a42 a42Var = this.r;
        z32 z32Var = this.q;
        if (z32Var != null) {
            z32Var.g(i, obj);
        } else {
            a42 a42Var2 = a42.q;
            a42Var.g(i, obj);
        }
        this.n = a42Var.n;
        this.p++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        h();
        int i2 = this.p;
        if (i >= 0 && i < i2) {
            return this.n[this.o + i];
        }
        mk0.h(di0.p(i, i2, "index: ", ", size: "));
        return null;
    }

    public final void h() {
        if (((AbstractList) this.r).modCount != ((AbstractList) this).modCount) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        h();
        Object[] objArr = this.n;
        int i = this.p;
        int iHashCode = 1;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = objArr[this.o + i2];
            iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return iHashCode;
    }

    public final void i() {
        if (this.r.p) {
            p61.b();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        h();
        for (int i = 0; i < this.p; i++) {
            if (nt1.g(this.n[this.o + i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        h();
        return this.p == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final Object k(int i) {
        Object objK;
        ((AbstractList) this).modCount++;
        z32 z32Var = this.q;
        if (z32Var != null) {
            objK = z32Var.k(i);
        } else {
            a42 a42Var = a42.q;
            objK = this.r.k(i);
        }
        this.p--;
        return objK;
    }

    public final void l(int i, int i2) {
        if (i2 > 0) {
            ((AbstractList) this).modCount++;
        }
        z32 z32Var = this.q;
        if (z32Var != null) {
            z32Var.l(i, i2);
        } else {
            a42 a42Var = a42.q;
            this.r.l(i, i2);
        }
        this.p -= i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        h();
        for (int i = this.p - 1; i >= 0; i--) {
            if (nt1.g(this.n[this.o + i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        h();
        int i2 = this.p;
        if (i >= 0 && i <= i2) {
            return new xj1(this, i);
        }
        mk0.h(di0.p(i, i2, "index: ", ", size: "));
        return null;
    }

    public final int m(int i, int i2, Collection collection, boolean z) {
        int iM;
        z32 z32Var = this.q;
        if (z32Var != null) {
            iM = z32Var.m(i, i2, collection, z);
        } else {
            a42 a42Var = a42.q;
            iM = this.r.m(i, i2, collection, z);
        }
        if (iM > 0) {
            ((AbstractList) this).modCount++;
        }
        this.p -= iM;
        return iM;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        i();
        h();
        int iIndexOf = indexOf(obj);
        if (iIndexOf >= 0) {
            d(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        collection.getClass();
        i();
        h();
        return m(this.o, this.p, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        i();
        h();
        return m(this.o, this.p, collection, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        i();
        h();
        int i2 = this.p;
        if (i < 0 || i >= i2) {
            mk0.h(di0.p(i, i2, "index: ", ", size: "));
            return null;
        }
        Object[] objArr = this.n;
        int i3 = this.o;
        Object obj2 = objArr[i3 + i];
        objArr[i3 + i] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i, int i2) {
        on4.n(i, i2, this.p);
        return new z32(this.n, this.o + i, i2 - i, this, this.r);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        h();
        int length = objArr.length;
        int i = this.p;
        Object[] objArr2 = this.n;
        int i2 = this.o;
        if (length < i) {
            Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr2, i2, i + i2, objArr.getClass());
            objArrCopyOfRange.getClass();
            return objArrCopyOfRange;
        }
        ji.O(0, i2, i + i2, objArr2, objArr);
        int i3 = this.p;
        if (i3 < objArr.length) {
            objArr[i3] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        h();
        return k75.e(this.n, this.o, this.p, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        i();
        h();
        g(this.o + this.p, obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        h();
        Object[] objArr = this.n;
        int i = this.p;
        int i2 = this.o;
        return ji.T(objArr, i2, i + i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        collection.getClass();
        i();
        h();
        int size = collection.size();
        f(this.o + this.p, collection, size);
        return size > 0;
    }
}
