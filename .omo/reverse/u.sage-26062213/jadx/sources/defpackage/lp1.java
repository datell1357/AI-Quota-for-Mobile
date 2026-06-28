package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class lp1 extends dp1 implements List, RandomAccess {
    public static final hp1 o = new hp1(z43.r, 0);

    public static z43 i(int i, Object[] objArr) {
        return i == 0 ? z43.r : new z43(i, objArr);
    }

    public static lp1 k(Iterable iterable) {
        if (iterable instanceof Collection) {
            return l((Collection) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return z43.r;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            Object[] objArr = {next};
            w80.m(1, objArr);
            return i(1, objArr);
        }
        gp1 gp1Var = new gp1(4);
        gp1Var.a(next);
        while (it.hasNext()) {
            gp1Var.a(it.next());
        }
        return gp1Var.c();
    }

    public static lp1 l(Collection collection) {
        if (!(collection instanceof dp1)) {
            Object[] array = collection.toArray();
            w80.m(array.length, array);
            return i(array.length, array);
        }
        lp1 lp1VarA = ((dp1) collection).a();
        if (!lp1VarA.g()) {
            return lp1VarA;
        }
        Object[] array2 = lp1VarA.toArray(dp1.n);
        return i(array2.length, array2);
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.dp1
    public int c(Object[] objArr) {
        int size = size();
        for (int i = 0; i < size; i++) {
            objArr[i] = get(i);
        }
        return size;
    }

    @Override // defpackage.dp1, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof List) {
                List list = (List) obj;
                int size = size();
                if (size == list.size()) {
                    if (!(list instanceof RandomAccess)) {
                        Iterator it = iterator();
                        Iterator it2 = list.iterator();
                        while (it.hasNext()) {
                            if (it2.hasNext() && ca.o(it.next(), it2.next())) {
                            }
                        }
                        return !it2.hasNext();
                    }
                    for (int i = 0; i < size; i++) {
                        if (ca.o(get(i), list.get(i))) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // defpackage.dp1
    /* JADX INFO: renamed from: h */
    public final y64 iterator() {
        return listIterator(0);
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = ~(~(get(i2).hashCode() + (i * 31)));
        }
        return i;
    }

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

    @Override // defpackage.dp1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return listIterator(0);
    }

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

    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public final hp1 listIterator(int i) {
        n44.Y(i, size());
        return isEmpty() ? o : new hp1(this, i);
    }

    public lp1 n() {
        return size() <= 1 ? this : new ip1(this);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public lp1 subList(int i, int i2) {
        n44.Z(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? z43.r : new jp1(this, i, i3);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.dp1
    public final lp1 a() {
        return this;
    }
}
