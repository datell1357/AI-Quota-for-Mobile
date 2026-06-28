package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yn3 extends s1 {
    public static final yn3 o = new yn3(new Object[0]);
    public final Object[] n;

    public yn3(Object[] objArr) {
        this.n = objArr;
    }

    @Override // defpackage.w
    public final int a() {
        return this.n.length;
    }

    @Override // defpackage.s1
    public final s1 d(int i, Object obj) {
        Object[] objArr = this.n;
        zf5.q(i, objArr.length);
        if (i == objArr.length) {
            return e(obj);
        }
        if (objArr.length < 32) {
            Object[] objArr2 = new Object[objArr.length + 1];
            ji.R(0, i, 6, objArr, objArr2);
            ji.O(i + 1, i, objArr.length, objArr, objArr2);
            objArr2[i] = obj;
            return new yn3(objArr2);
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        ji.O(i + 1, i, objArr.length - 1, objArr, objArrCopyOf);
        objArrCopyOf[i] = obj;
        Object[] objArr3 = new Object[32];
        objArr3[0] = objArr[31];
        return new uu2(objArrCopyOf, objArr3, objArr.length + 1, 0);
    }

    @Override // defpackage.s1
    public final s1 e(Object obj) {
        Object[] objArr = this.n;
        if (objArr.length < 32) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length + 1);
            objArrCopyOf[objArr.length] = obj;
            return new yn3(objArrCopyOf);
        }
        Object[] objArr2 = new Object[32];
        objArr2[0] = obj;
        return new uu2(objArr, objArr2, objArr.length + 1, 0);
    }

    @Override // defpackage.s1
    public final s1 f(Collection collection) {
        Object[] objArr = this.n;
        if (collection.size() + objArr.length > 32) {
            vu2 vu2VarG = g();
            vu2VarG.addAll(collection);
            return vu2VarG.e();
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, collection.size() + objArr.length);
        int length = objArr.length;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            objArrCopyOf[length] = it.next();
            length++;
        }
        return new yn3(objArrCopyOf);
    }

    @Override // defpackage.s1
    public final vu2 g() {
        return new vu2(this, null, this.n, 0);
    }

    @Override // java.util.List
    public final Object get(int i) {
        Object[] objArr = this.n;
        zf5.o(i, objArr.length);
        return objArr[i];
    }

    @Override // defpackage.s1
    public final s1 h(r1 r1Var) {
        Object[] objArr = this.n;
        int length = objArr.length;
        int length2 = objArr.length;
        Object[] objArrCopyOf = objArr;
        boolean z = false;
        for (int i = 0; i < length2; i++) {
            Object obj = objArr[i];
            if (((Boolean) r1Var.k(obj)).booleanValue()) {
                if (!z) {
                    objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
                    z = true;
                    length = i;
                }
            } else if (z) {
                objArrCopyOf[length] = obj;
                length++;
            }
        }
        return length == objArr.length ? this : length == 0 ? o : new yn3(ji.T(objArrCopyOf, 0, length));
    }

    @Override // defpackage.s1
    public final s1 i(int i) {
        Object[] objArr = this.n;
        zf5.o(i, objArr.length);
        if (objArr.length == 1) {
            return o;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length - 1);
        ji.O(i, i + 1, objArr.length, objArr, objArrCopyOf);
        return new yn3(objArrCopyOf);
    }

    @Override // defpackage.j1, java.util.List
    public final int indexOf(Object obj) {
        return ji.a0(this.n, obj);
    }

    @Override // defpackage.s1
    public final s1 k(int i, Object obj) {
        Object[] objArr = this.n;
        zf5.o(i, objArr.length);
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        objArrCopyOf[i] = obj;
        return new yn3(objArrCopyOf);
    }

    @Override // defpackage.j1, java.util.List
    public final int lastIndexOf(Object obj) {
        Object[] objArr = this.n;
        if (obj == null) {
            int length = objArr.length - 1;
            if (length >= 0) {
                while (true) {
                    int i = length - 1;
                    if (objArr[length] == null) {
                        return length;
                    }
                    if (i < 0) {
                        break;
                    }
                    length = i;
                }
            }
        } else {
            int length2 = objArr.length - 1;
            if (length2 >= 0) {
                while (true) {
                    int i2 = length2 - 1;
                    if (obj.equals(objArr[length2])) {
                        return length2;
                    }
                    if (i2 < 0) {
                        break;
                    }
                    length2 = i2;
                }
            }
        }
        return -1;
    }

    @Override // defpackage.j1, java.util.List
    public final ListIterator listIterator(int i) {
        Object[] objArr = this.n;
        zf5.q(i, objArr.length);
        return new uy(objArr, i, objArr.length);
    }
}
