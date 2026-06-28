package defpackage;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ci implements Collection {
    public final /* synthetic */ di n;

    public ci(di diVar) {
        this.n = diVar;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final void clear() {
        this.n.clear();
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return this.n.a(obj) >= 0;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.n.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new zh(this.n, 1);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        di diVar = this.n;
        int iA = diVar.a(obj);
        if (iA < 0) {
            return false;
        }
        diVar.g(iA);
        return true;
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        di diVar = this.n;
        int i = diVar.p;
        int i2 = 0;
        boolean z = false;
        while (i2 < i) {
            if (collection.contains(diVar.i(i2))) {
                diVar.g(i2);
                i2--;
                i--;
                z = true;
            }
            i2++;
        }
        return z;
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        di diVar = this.n;
        int i = diVar.p;
        int i2 = 0;
        boolean z = false;
        while (i2 < i) {
            if (!collection.contains(diVar.i(i2))) {
                diVar.g(i2);
                i2--;
                i--;
                z = true;
            }
            i2++;
        }
        return z;
    }

    @Override // java.util.Collection
    public final int size() {
        return this.n.p;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        di diVar = this.n;
        int i = diVar.p;
        if (objArr.length < i) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
        }
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = diVar.i(i2);
        }
        if (objArr.length > i) {
            objArr[i] = null;
        }
        return objArr;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        di diVar = this.n;
        int i = diVar.p;
        Object[] objArr = new Object[i];
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = diVar.i(i2);
        }
        return objArr;
    }
}
