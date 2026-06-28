package defpackage;

import com.google.android.gms.common.api.Api;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a42 extends p1 implements RandomAccess, Serializable {
    public static final a42 q;
    public Object[] n;
    public int o;
    public boolean p;

    static {
        a42 a42Var = new a42(0);
        a42Var.p = true;
        q = a42Var;
    }

    public a42(int i) {
        if (i >= 0) {
            this.n = new Object[i];
        } else {
            k21.f("capacity must be non-negative.");
            throw null;
        }
    }

    @Override // defpackage.p1
    public final int a() {
        return this.o;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        h();
        int i2 = this.o;
        if (i < 0 || i > i2) {
            mk0.h(di0.p(i, i2, "index: ", ", size: "));
            return;
        }
        ((AbstractList) this).modCount++;
        i(i, 1);
        this.n[i] = obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        collection.getClass();
        h();
        int i2 = this.o;
        if (i < 0 || i > i2) {
            mk0.h(di0.p(i, i2, "index: ", ", size: "));
            return false;
        }
        int size = collection.size();
        f(i, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        h();
        l(0, this.o);
    }

    @Override // defpackage.p1
    public final Object d(int i) {
        h();
        int i2 = this.o;
        if (i >= 0 && i < i2) {
            return k(i);
        }
        mk0.h(di0.p(i, i2, "index: ", ", size: "));
        return null;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            Object[] objArr = this.n;
            int i = this.o;
            if (i == list.size()) {
                for (int i2 = 0; i2 < i; i2++) {
                    if (nt1.g(objArr[i2], list.get(i2))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final void f(int i, Collection collection, int i2) {
        ((AbstractList) this).modCount++;
        i(i, i2);
        Iterator it = collection.iterator();
        for (int i3 = 0; i3 < i2; i3++) {
            this.n[i + i3] = it.next();
        }
    }

    public final void g(int i, Object obj) {
        ((AbstractList) this).modCount++;
        i(i, 1);
        this.n[i] = obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        int i2 = this.o;
        if (i >= 0 && i < i2) {
            return this.n[i];
        }
        mk0.h(di0.p(i, i2, "index: ", ", size: "));
        return null;
    }

    public final void h() {
        if (this.p) {
            p61.b();
        }
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        Object[] objArr = this.n;
        int i = this.o;
        int iHashCode = 1;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = objArr[i2];
            iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return iHashCode;
    }

    public final void i(int i, int i2) {
        int i3 = this.o + i2;
        if (i3 < 0) {
            throw new OutOfMemoryError();
        }
        Object[] objArr = this.n;
        if (i3 > objArr.length) {
            int length = objArr.length;
            int i4 = length + (length >> 1);
            if (i4 - i3 < 0) {
                i4 = i3;
            }
            if (i4 - 2147483639 > 0) {
                i4 = i3 > 2147483639 ? Api.BaseClientBuilder.API_PRIORITY_OTHER : 2147483639;
            }
            this.n = Arrays.copyOf(objArr, i4);
        }
        Object[] objArr2 = this.n;
        ji.O(i + i2, i, this.o, objArr2, objArr2);
        this.o += i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        for (int i = 0; i < this.o; i++) {
            if (nt1.g(this.n[i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.o == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final Object k(int i) {
        ((AbstractList) this).modCount++;
        Object[] objArr = this.n;
        Object obj = objArr[i];
        ji.O(i, i + 1, this.o, objArr, objArr);
        Object[] objArr2 = this.n;
        int i2 = this.o - 1;
        objArr2.getClass();
        objArr2[i2] = null;
        this.o--;
        return obj;
    }

    public final void l(int i, int i2) {
        if (i2 > 0) {
            ((AbstractList) this).modCount++;
        }
        Object[] objArr = this.n;
        ji.O(i, i + i2, this.o, objArr, objArr);
        Object[] objArr2 = this.n;
        int i3 = this.o;
        k75.K(objArr2, i3 - i2, i3);
        this.o -= i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        for (int i = this.o - 1; i >= 0; i--) {
            if (nt1.g(this.n[i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        int i2 = this.o;
        if (i >= 0 && i <= i2) {
            return new xj1(this, i);
        }
        mk0.h(di0.p(i, i2, "index: ", ", size: "));
        return null;
    }

    public final int m(int i, int i2, Collection collection, boolean z) {
        Object[] objArr;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            objArr = this.n;
            if (i3 >= i2) {
                break;
            }
            int i5 = i + i3;
            if (collection.contains(objArr[i5]) == z) {
                Object[] objArr2 = this.n;
                i3++;
                objArr2[i4 + i] = objArr2[i5];
                i4++;
            } else {
                i3++;
            }
        }
        int i6 = i2 - i4;
        ji.O(i + i4, i2 + i, this.o, objArr, objArr);
        Object[] objArr3 = this.n;
        int i7 = this.o;
        k75.K(objArr3, i7 - i6, i7);
        if (i6 > 0) {
            ((AbstractList) this).modCount++;
        }
        this.o -= i6;
        return i6;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
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
        h();
        return m(0, this.o, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        h();
        return m(0, this.o, collection, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        h();
        int i2 = this.o;
        if (i < 0 || i >= i2) {
            mk0.h(di0.p(i, i2, "index: ", ", size: "));
            return null;
        }
        Object[] objArr = this.n;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i, int i2) {
        on4.n(i, i2, this.o);
        return new z32(this.n, i, i2 - i, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int length = objArr.length;
        int i = this.o;
        Object[] objArr2 = this.n;
        if (length < i) {
            Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr2, 0, i, objArr.getClass());
            objArrCopyOfRange.getClass();
            return objArrCopyOfRange;
        }
        ji.O(0, 0, i, objArr2, objArr);
        int i2 = this.o;
        if (i2 < objArr.length) {
            objArr[i2] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return k75.e(this.n, 0, this.o, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        h();
        int i = this.o;
        ((AbstractList) this).modCount++;
        i(i, 1);
        this.n[i] = obj;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return ji.T(this.n, 0, this.o);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        collection.getClass();
        h();
        int size = collection.size();
        f(this.o, collection, size);
        return size > 0;
    }
}
