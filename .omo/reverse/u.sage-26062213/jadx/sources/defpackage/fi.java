package defpackage;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fi implements Collection, Set, gx1, ix1 {
    public int[] n;
    public Object[] o;
    public int p;

    public fi(int i) {
        this.n = is0.h;
        this.o = is0.j;
        if (i > 0) {
            this.n = new int[i];
            this.o = new Object[i];
        }
    }

    public final Object a(int i) {
        int i2 = this.p;
        Object[] objArr = this.o;
        Object obj = objArr[i];
        if (i2 <= 1) {
            clear();
            return obj;
        }
        int i3 = i2 - 1;
        int[] iArr = this.n;
        if (iArr.length <= 8 || i2 >= iArr.length / 3) {
            if (i < i3) {
                int i4 = i + 1;
                ji.N(i, i4, i2, iArr, iArr);
                Object[] objArr2 = this.o;
                ji.O(i, i4, i2, objArr2, objArr2);
            }
            this.o[i3] = null;
        } else {
            int i5 = i2 > 8 ? i2 + (i2 >> 1) : 8;
            int[] iArr2 = new int[i5];
            this.n = iArr2;
            this.o = new Object[i5];
            if (i > 0) {
                ji.Q(0, i, 6, iArr, iArr2);
                ji.R(0, i, 6, objArr, this.o);
            }
            if (i < i3) {
                int i6 = i + 1;
                ji.N(i, i6, i2, iArr, this.n);
                ji.O(i, i6, i2, objArr, this.o);
            }
        }
        if (i2 != this.p) {
            throw new ConcurrentModificationException();
        }
        this.p = i3;
        return obj;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i;
        int iA;
        int i2 = this.p;
        if (obj == null) {
            iA = ix.A(this, null, 0);
            i = 0;
        } else {
            int iHashCode = obj.hashCode();
            i = iHashCode;
            iA = ix.A(this, obj, iHashCode);
        }
        if (iA >= 0) {
            return false;
        }
        int i3 = ~iA;
        int[] iArr = this.n;
        if (i2 >= iArr.length) {
            int i4 = 8;
            if (i2 >= 8) {
                i4 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i4 = 4;
            }
            Object[] objArr = this.o;
            int[] iArr2 = new int[i4];
            this.n = iArr2;
            this.o = new Object[i4];
            if (i2 != this.p) {
                throw new ConcurrentModificationException();
            }
            if (iArr2.length != 0) {
                ji.Q(0, iArr.length, 6, iArr, iArr2);
                ji.R(0, objArr.length, 6, objArr, this.o);
            }
        }
        if (i3 < i2) {
            int[] iArr3 = this.n;
            int i5 = i3 + 1;
            ji.N(i5, i3, i2, iArr3, iArr3);
            Object[] objArr2 = this.o;
            ji.O(i5, i3, i2, objArr2, objArr2);
        }
        int i6 = this.p;
        if (i2 == i6) {
            int[] iArr4 = this.n;
            if (i3 < iArr4.length) {
                iArr4[i3] = i;
                this.o[i3] = obj;
                this.p = i6 + 1;
                return true;
            }
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        collection.getClass();
        int size = collection.size() + this.p;
        int i = this.p;
        int[] iArr = this.n;
        boolean zAdd = false;
        if (iArr.length < size) {
            Object[] objArr = this.o;
            int[] iArr2 = new int[size];
            this.n = iArr2;
            this.o = new Object[size];
            if (i > 0) {
                ji.Q(0, i, 6, iArr, iArr2);
                ji.R(0, this.p, 6, objArr, this.o);
            }
        }
        if (this.p != i) {
            throw new ConcurrentModificationException();
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        if (this.p != 0) {
            this.n = is0.h;
            this.o = is0.j;
            this.p = 0;
        }
        if (this.p != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return (obj == null ? ix.A(this, null, 0) : ix.A(this, obj, obj.hashCode())) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        collection.getClass();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set) || this.p != ((Set) obj).size()) {
            return false;
        }
        try {
            int i = this.p;
            for (int i2 = 0; i2 < i; i2++) {
                if (!((Set) obj).contains(this.o[i2])) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.n;
        int i = this.p;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.p <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zh(this);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int iA = obj == null ? ix.A(this, null, 0) : ix.A(this, obj, obj.hashCode());
        if (iA < 0) {
            return false;
        }
        a(iA);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        collection.getClass();
        Iterator it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        boolean z = false;
        for (int i = this.p - 1; -1 < i; i--) {
            if (!o70.e0(collection, this.o[i])) {
                a(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.p;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int i = this.p;
        if (objArr.length < i) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
        } else if (objArr.length > i) {
            objArr[i] = null;
        }
        ji.O(0, 0, this.p, this.o, objArr);
        return objArr;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.p * 14);
        sb.append('{');
        int i = this.p;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object obj = this.o[i2];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return ji.T(this.o, 0, this.p);
    }
}
