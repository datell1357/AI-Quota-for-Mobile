package defpackage;

import com.google.android.gms.common.api.Api;
import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vh extends p1 {
    public static final Object[] q = new Object[0];
    public int n;
    public Object[] o;
    public int p;

    public vh(int i) {
        Object[] objArr;
        if (i == 0) {
            objArr = q;
        } else {
            if (i <= 0) {
                k21.f(di0.q(i, "Illegal Capacity: "));
                throw null;
            }
            objArr = new Object[i];
        }
        this.o = objArr;
    }

    @Override // defpackage.p1
    public final int a() {
        return this.p;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int length;
        int i2 = this.p;
        if (i < 0 || i > i2) {
            mk0.h(di0.p(i, i2, "index: ", ", size: "));
            return;
        }
        if (i == i2) {
            addLast(obj);
            return;
        }
        if (i == 0) {
            addFirst(obj);
            return;
        }
        n();
        f(this.p + 1);
        int iM = m(this.n + i);
        int i3 = this.p;
        if (i < ((i3 + 1) >> 1)) {
            if (iM == 0) {
                Object[] objArr = this.o;
                objArr.getClass();
                length = objArr.length - 1;
            } else {
                length = iM - 1;
            }
            int length2 = this.n;
            if (length2 == 0) {
                Object[] objArr2 = this.o;
                objArr2.getClass();
                length2 = objArr2.length;
            }
            int i4 = length2 - 1;
            int i5 = this.n;
            Object[] objArr3 = this.o;
            if (length >= i5) {
                objArr3[i4] = objArr3[i5];
                ji.O(i5, i5 + 1, length + 1, objArr3, objArr3);
            } else {
                ji.O(i5 - 1, i5, objArr3.length, objArr3, objArr3);
                Object[] objArr4 = this.o;
                objArr4[objArr4.length - 1] = objArr4[0];
                ji.O(0, 1, length + 1, objArr4, objArr4);
            }
            this.o[length] = obj;
            this.n = i4;
        } else {
            int iM2 = m(i3 + this.n);
            Object[] objArr5 = this.o;
            if (iM < iM2) {
                ji.O(iM + 1, iM, iM2, objArr5, objArr5);
            } else {
                ji.O(1, 0, iM2, objArr5, objArr5);
                Object[] objArr6 = this.o;
                objArr6[0] = objArr6[objArr6.length - 1];
                ji.O(iM + 1, iM, objArr6.length - 1, objArr6, objArr6);
            }
            this.o[iM] = obj;
        }
        this.p++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        collection.getClass();
        int i2 = this.p;
        if (i < 0 || i > i2) {
            mk0.h(di0.p(i, i2, "index: ", ", size: "));
            return false;
        }
        if (collection.isEmpty()) {
            return false;
        }
        if (i == this.p) {
            return addAll(collection);
        }
        n();
        f(collection.size() + this.p);
        int iM = m(this.p + this.n);
        int iM2 = m(this.n + i);
        int size = collection.size();
        if (i >= ((this.p + 1) >> 1)) {
            int i3 = iM2 + size;
            Object[] objArr = this.o;
            if (iM2 < iM) {
                int i4 = size + iM;
                if (i4 <= objArr.length) {
                    ji.O(i3, iM2, iM, objArr, objArr);
                } else if (i3 >= objArr.length) {
                    ji.O(i3 - objArr.length, iM2, iM, objArr, objArr);
                } else {
                    int length = iM - (i4 - objArr.length);
                    ji.O(0, length, iM, objArr, objArr);
                    Object[] objArr2 = this.o;
                    ji.O(i3, iM2, length, objArr2, objArr2);
                }
            } else {
                ji.O(size, 0, iM, objArr, objArr);
                Object[] objArr3 = this.o;
                if (i3 >= objArr3.length) {
                    ji.O(i3 - objArr3.length, iM2, objArr3.length, objArr3, objArr3);
                } else {
                    ji.O(0, objArr3.length - size, objArr3.length, objArr3, objArr3);
                    Object[] objArr4 = this.o;
                    ji.O(i3, iM2, objArr4.length - size, objArr4, objArr4);
                }
            }
            e(iM2, collection);
            return true;
        }
        int i5 = this.n;
        int length2 = i5 - size;
        Object[] objArr5 = this.o;
        if (iM2 < i5) {
            ji.O(length2, i5, objArr5.length, objArr5, objArr5);
            Object[] objArr6 = this.o;
            if (size >= iM2) {
                ji.O(objArr6.length - size, 0, iM2, objArr6, objArr6);
            } else {
                ji.O(objArr6.length - size, 0, size, objArr6, objArr6);
                Object[] objArr7 = this.o;
                ji.O(0, size, iM2, objArr7, objArr7);
            }
        } else if (length2 >= 0) {
            ji.O(length2, i5, iM2, objArr5, objArr5);
        } else {
            length2 += objArr5.length;
            int i6 = iM2 - i5;
            int length3 = objArr5.length - length2;
            if (length3 >= i6) {
                ji.O(length2, i5, iM2, objArr5, objArr5);
            } else {
                ji.O(length2, i5, i5 + length3, objArr5, objArr5);
                Object[] objArr8 = this.o;
                ji.O(0, this.n + length3, iM2, objArr8, objArr8);
            }
        }
        this.n = length2;
        e(k(iM2 - size), collection);
        return true;
    }

    public final void addFirst(Object obj) {
        n();
        f(this.p + 1);
        int length = this.n;
        if (length == 0) {
            Object[] objArr = this.o;
            objArr.getClass();
            length = objArr.length;
        }
        int i = length - 1;
        this.n = i;
        this.o[i] = obj;
        this.p++;
    }

    public final void addLast(Object obj) {
        n();
        f(a() + 1);
        this.o[m(a() + this.n)] = obj;
        this.p = a() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        if (!isEmpty()) {
            n();
            l(this.n, m(a() + this.n));
        }
        this.n = 0;
        this.p = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // defpackage.p1
    public final Object d(int i) {
        int i2 = this.p;
        if (i < 0 || i >= i2) {
            mk0.h(di0.p(i, i2, "index: ", ", size: "));
            return null;
        }
        if (i == a() - 1) {
            return removeLast();
        }
        if (i == 0) {
            return removeFirst();
        }
        n();
        int iM = m(this.n + i);
        Object[] objArr = this.o;
        Object obj = objArr[iM];
        int i3 = this.p >> 1;
        int i4 = this.n;
        if (i < i3) {
            if (iM >= i4) {
                ji.O(i4 + 1, i4, iM, objArr, objArr);
            } else {
                ji.O(1, 0, iM, objArr, objArr);
                Object[] objArr2 = this.o;
                objArr2[0] = objArr2[objArr2.length - 1];
                int i5 = this.n;
                ji.O(i5 + 1, i5, objArr2.length - 1, objArr2, objArr2);
            }
            Object[] objArr3 = this.o;
            int i6 = this.n;
            objArr3[i6] = null;
            this.n = h(i6);
        } else {
            int iM2 = m((a() - 1) + i4);
            Object[] objArr4 = this.o;
            if (iM <= iM2) {
                ji.O(iM, iM + 1, iM2 + 1, objArr4, objArr4);
            } else {
                ji.O(iM, iM + 1, objArr4.length, objArr4, objArr4);
                Object[] objArr5 = this.o;
                objArr5[objArr5.length - 1] = objArr5[0];
                ji.O(0, 1, iM2 + 1, objArr5, objArr5);
            }
            this.o[iM2] = null;
        }
        this.p--;
        return obj;
    }

    public final void e(int i, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.o.length;
        while (i < length && it.hasNext()) {
            this.o[i] = it.next();
            i++;
        }
        int i2 = this.n;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.o[i3] = it.next();
        }
        this.p = collection.size() + this.p;
    }

    public final void f(int i) {
        if (i < 0) {
            k21.n("Deque is too big.");
            return;
        }
        Object[] objArr = this.o;
        if (i <= objArr.length) {
            return;
        }
        if (objArr == q) {
            if (i < 10) {
                i = 10;
            }
            this.o = new Object[i];
            return;
        }
        int length = objArr.length;
        int i2 = length + (length >> 1);
        if (i2 - i < 0) {
            i2 = i;
        }
        if (i2 - 2147483639 > 0) {
            i2 = i > 2147483639 ? Api.BaseClientBuilder.API_PRIORITY_OTHER : 2147483639;
        }
        Object[] objArr2 = new Object[i2];
        ji.O(0, this.n, objArr.length, objArr, objArr2);
        Object[] objArr3 = this.o;
        int length2 = objArr3.length;
        int i3 = this.n;
        ji.O(length2 - i3, 0, i3, objArr3, objArr2);
        this.n = 0;
        this.o = objArr2;
    }

    public final Object first() {
        if (!isEmpty()) {
            return this.o[this.n];
        }
        q73.l("ArrayDeque is empty.");
        return null;
    }

    public final Object g() {
        if (isEmpty()) {
            return null;
        }
        return this.o[this.n];
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        int iA = a();
        if (i >= 0 && i < iA) {
            return this.o[m(this.n + i)];
        }
        mk0.h(di0.p(i, iA, "index: ", ", size: "));
        return null;
    }

    public final int h(int i) {
        this.o.getClass();
        if (i == r0.length - 1) {
            return 0;
        }
        return i + 1;
    }

    public final Object i() {
        if (isEmpty()) {
            return null;
        }
        return this.o[m((size() - 1) + this.n)];
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i;
        int iM = m(a() + this.n);
        int length = this.n;
        if (length < iM) {
            while (length < iM) {
                if (nt1.g(obj, this.o[length])) {
                    i = this.n;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (isEmpty() || (length = this.n) < iM) {
            return -1;
        }
        int length2 = this.o.length;
        while (true) {
            if (length >= length2) {
                for (int i2 = 0; i2 < iM; i2++) {
                    if (nt1.g(obj, this.o[i2])) {
                        length = i2 + this.o.length;
                        i = this.n;
                    }
                }
                return -1;
            }
            if (nt1.g(obj, this.o[length])) {
                i = this.n;
                break;
            }
            length++;
        }
        return length - i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return a() == 0;
    }

    public final int k(int i) {
        return i < 0 ? i + this.o.length : i;
    }

    public final void l(int i, int i2) {
        Object[] objArr = this.o;
        if (i < i2) {
            ji.U(i, i2, null, objArr);
        } else {
            ji.U(i, objArr.length, null, objArr);
            ji.U(0, i2, null, this.o);
        }
    }

    public final Object last() {
        if (isEmpty()) {
            q73.l("ArrayDeque is empty.");
            return null;
        }
        return this.o[m((size() - 1) + this.n)];
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int length;
        int i;
        int iM = m(this.p + this.n);
        int i2 = this.n;
        if (i2 < iM) {
            length = iM - 1;
            if (i2 <= length) {
                while (!nt1.g(obj, this.o[length])) {
                    if (length != i2) {
                        length--;
                    }
                }
                i = this.n;
                return length - i;
            }
            return -1;
        }
        if (!isEmpty() && this.n >= iM) {
            while (true) {
                iM--;
                Object[] objArr = this.o;
                if (-1 >= iM) {
                    objArr.getClass();
                    length = objArr.length - 1;
                    int i3 = this.n;
                    if (i3 <= length) {
                        while (!nt1.g(obj, this.o[length])) {
                            if (length != i3) {
                                length--;
                            }
                        }
                        i = this.n;
                    }
                } else if (nt1.g(obj, objArr[iM])) {
                    length = iM + this.o.length;
                    i = this.n;
                    break;
                }
            }
            return length - i;
        }
        return -1;
    }

    public final int m(int i) {
        Object[] objArr = this.o;
        return i >= objArr.length ? i - objArr.length : i;
    }

    public final void n() {
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        d(iIndexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        int iM;
        Object[] objArr;
        collection.getClass();
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.o.length != 0) {
            int iM2 = m(a() + this.n);
            int i = this.n;
            if (i < iM2) {
                iM = i;
                while (true) {
                    objArr = this.o;
                    if (i >= iM2) {
                        break;
                    }
                    Object obj = objArr[i];
                    if (collection.contains(obj)) {
                        z = true;
                    } else {
                        this.o[iM] = obj;
                        iM++;
                    }
                    i++;
                }
                ji.U(iM, iM2, null, objArr);
            } else {
                int length = this.o.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr2 = this.o;
                    Object obj2 = objArr2[i];
                    objArr2[i] = null;
                    if (collection.contains(obj2)) {
                        z2 = true;
                    } else {
                        this.o[i2] = obj2;
                        i2++;
                    }
                    i++;
                }
                iM = m(i2);
                for (int i3 = 0; i3 < iM2; i3++) {
                    Object[] objArr3 = this.o;
                    Object obj3 = objArr3[i3];
                    objArr3[i3] = null;
                    if (collection.contains(obj3)) {
                        z2 = true;
                    } else {
                        this.o[iM] = obj3;
                        iM = h(iM);
                    }
                }
                z = z2;
            }
            if (z) {
                n();
                this.p = k(iM - this.n);
            }
        }
        return z;
    }

    public final Object removeFirst() {
        if (isEmpty()) {
            q73.l("ArrayDeque is empty.");
            return null;
        }
        n();
        Object[] objArr = this.o;
        int i = this.n;
        Object obj = objArr[i];
        objArr[i] = null;
        this.n = h(i);
        this.p = a() - 1;
        return obj;
    }

    public final Object removeLast() {
        if (isEmpty()) {
            q73.l("ArrayDeque is empty.");
            return null;
        }
        n();
        int iM = m((size() - 1) + this.n);
        Object[] objArr = this.o;
        Object obj = objArr[iM];
        objArr[iM] = null;
        this.p = a() - 1;
        return obj;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        on4.n(i, i2, this.p);
        int i3 = i2 - i;
        if (i3 == 0) {
            return;
        }
        if (i3 == this.p) {
            clear();
            return;
        }
        if (i3 == 1) {
            d(i);
            return;
        }
        n();
        int i4 = this.p - i2;
        int i5 = this.n;
        if (i < i4) {
            int iM = m((i - 1) + i5);
            int iM2 = m(this.n + (i2 - 1));
            while (i > 0) {
                int i6 = iM + 1;
                int iMin = Math.min(i, Math.min(i6, iM2 + 1));
                Object[] objArr = this.o;
                int i7 = iM2 - iMin;
                int i8 = iM - iMin;
                ji.O(i7 + 1, i8 + 1, i6, objArr, objArr);
                iM = k(i8);
                iM2 = k(i7);
                i -= iMin;
            }
            int iM3 = m(this.n + i3);
            l(this.n, iM3);
            this.n = iM3;
        } else {
            int iM4 = m(i5 + i2);
            int iM5 = m(this.n + i);
            int i9 = this.p;
            while (true) {
                i9 -= i2;
                if (i9 <= 0) {
                    break;
                }
                Object[] objArr2 = this.o;
                i2 = Math.min(i9, Math.min(objArr2.length - iM4, objArr2.length - iM5));
                Object[] objArr3 = this.o;
                int i10 = iM4 + i2;
                ji.O(iM5, iM4, i10, objArr3, objArr3);
                iM4 = m(i10);
                iM5 = m(iM5 + i2);
            }
            int iM6 = m(this.p + this.n);
            l(k(iM6 - i3), iM6);
        }
        this.p -= i3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        int iM;
        Object[] objArr;
        collection.getClass();
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.o.length != 0) {
            int iM2 = m(a() + this.n);
            int i = this.n;
            if (i < iM2) {
                iM = i;
                while (true) {
                    objArr = this.o;
                    if (i >= iM2) {
                        break;
                    }
                    Object obj = objArr[i];
                    if (collection.contains(obj)) {
                        this.o[iM] = obj;
                        iM++;
                    } else {
                        z = true;
                    }
                    i++;
                }
                ji.U(iM, iM2, null, objArr);
            } else {
                int length = this.o.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr2 = this.o;
                    Object obj2 = objArr2[i];
                    objArr2[i] = null;
                    if (collection.contains(obj2)) {
                        this.o[i2] = obj2;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i++;
                }
                iM = m(i2);
                for (int i3 = 0; i3 < iM2; i3++) {
                    Object[] objArr3 = this.o;
                    Object obj3 = objArr3[i3];
                    objArr3[i3] = null;
                    if (collection.contains(obj3)) {
                        this.o[iM] = obj3;
                        iM = h(iM);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                n();
                this.p = k(iM - this.n);
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        int iA = a();
        if (i < 0 || i >= iA) {
            mk0.h(di0.p(i, iA, "index: ", ", size: "));
            return null;
        }
        int iM = m(this.n + i);
        Object[] objArr = this.o;
        Object obj2 = objArr[iM];
        objArr[iM] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int length = objArr.length;
        int i = this.p;
        if (length < i) {
            Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), i);
            objNewInstance.getClass();
            objArr = (Object[]) objNewInstance;
        }
        int iM = m(this.p + this.n);
        int i2 = this.n;
        if (i2 < iM) {
            ji.R(i2, iM, 2, this.o, objArr);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.o;
            ji.O(0, this.n, objArr2.length, objArr2, objArr);
            Object[] objArr3 = this.o;
            ji.O(objArr3.length - this.n, 0, iM, objArr3, objArr);
        }
        int i3 = this.p;
        if (i3 < objArr.length) {
            objArr[i3] = null;
        }
        return objArr;
    }

    public vh() {
        this.o = q;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[a()]);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        collection.getClass();
        if (collection.isEmpty()) {
            return false;
        }
        n();
        f(collection.size() + a());
        e(m(a() + this.n), collection);
        return true;
    }
}
