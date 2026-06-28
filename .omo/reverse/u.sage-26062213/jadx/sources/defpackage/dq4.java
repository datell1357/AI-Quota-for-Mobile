package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class dq4 extends pm4 implements List, RandomAccess {
    public static final un4 o = new un4(sr4.r, 0);

    public static dq4 i(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return k((Collection) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return sr4.r;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            Object[] objArr = {next};
            yq4.b(1, objArr);
            return l(1, objArr);
        }
        fn4 fn4Var = new fn4();
        fn4Var.a = new Object[4];
        fn4Var.b = 0;
        fn4Var.a(next);
        while (it.hasNext()) {
            fn4Var.a(it.next());
        }
        fn4Var.c = true;
        return l(fn4Var.b, fn4Var.a);
    }

    public static dq4 k(Collection collection) {
        if (!(collection instanceof pm4)) {
            Object[] array = collection.toArray();
            int length = array.length;
            yq4.b(length, array);
            return l(length, array);
        }
        dq4 dq4Var = (dq4) ((pm4) collection);
        if (!dq4Var.e()) {
            return dq4Var;
        }
        Object[] array2 = dq4Var.toArray(pm4.n);
        return l(array2.length, array2);
    }

    public static sr4 l(int i, Object[] objArr) {
        return i == 0 ? sr4.r : new sr4(i, objArr);
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i = 0; i < size; i++) {
                        if (Objects.equals(get(i), list.get(i))) {
                        }
                    }
                    return true;
                }
                un4 un4VarListIterator = listIterator(0);
                Iterator it = list.iterator();
                while (true) {
                    if (un4VarListIterator.hasNext()) {
                        if (!it.hasNext() || !Objects.equals(un4VarListIterator.next(), it.next())) {
                            break;
                        }
                    } else if (!it.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // defpackage.pm4
    public int f(Object[] objArr) {
        int size = size();
        for (int i = 0; i < size; i++) {
            objArr[i] = get(i);
        }
        return size;
    }

    public dq4 g() {
        return size() <= 1 ? this : new no4(this);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: h */
    public dq4 subList(int i, int i2) {
        rp4.c(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? sr4.r : new ip4(this, i, i3);
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i = 0; i < size; i++) {
            iHashCode = (iHashCode * 31) + get(i).hashCode();
        }
        return iHashCode;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public final un4 listIterator(int i) {
        rp4.b(i, size());
        return isEmpty() ? o : new un4(this, i);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }
}
