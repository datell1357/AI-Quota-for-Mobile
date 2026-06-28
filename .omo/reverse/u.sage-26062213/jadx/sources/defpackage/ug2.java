package defpackage;

import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ug2 implements RandomAccess {
    public Object[] n;
    public rg2 o;
    public int p = 0;

    public ug2(Object[] objArr) {
        this.n = objArr;
    }

    public final void a(int i, Object obj) {
        int i2 = this.p + 1;
        if (this.n.length < i2) {
            n(i2);
        }
        Object[] objArr = this.n;
        int i3 = this.p;
        if (i != i3) {
            System.arraycopy(objArr, i, objArr, i + 1, i3 - i);
        }
        objArr[i] = obj;
        this.p++;
    }

    public final void c(Object obj) {
        int i = this.p + 1;
        if (this.n.length < i) {
            n(i);
        }
        Object[] objArr = this.n;
        int i2 = this.p;
        objArr[i2] = obj;
        this.p = i2 + 1;
    }

    public final void d(int i, ug2 ug2Var) {
        int i2 = ug2Var.p;
        if (i2 == 0) {
            return;
        }
        int i3 = this.p + i2;
        if (this.n.length < i3) {
            n(i3);
        }
        Object[] objArr = this.n;
        int i4 = this.p;
        if (i != i4) {
            System.arraycopy(objArr, i, objArr, i + i2, i4 - i);
        }
        System.arraycopy(ug2Var.n, 0, objArr, i, i2);
        this.p += i2;
    }

    public final void e(int i, List list) {
        if (list.isEmpty()) {
            return;
        }
        int size = list.size();
        int i2 = this.p + size;
        if (this.n.length < i2) {
            n(i2);
        }
        Object[] objArr = this.n;
        int i3 = this.p;
        if (i != i3) {
            System.arraycopy(objArr, i, objArr, i + size, i3 - i);
        }
        int size2 = list.size();
        for (int i4 = 0; i4 < size2; i4++) {
            objArr[i + i4] = list.get(i4);
        }
        this.p += size;
    }

    public final boolean f(int i, Collection collection) {
        int i2 = 0;
        if (collection.isEmpty()) {
            return false;
        }
        int size = collection.size();
        int i3 = this.p + size;
        if (this.n.length < i3) {
            n(i3);
        }
        Object[] objArr = this.n;
        int i4 = this.p;
        if (i != i4) {
            System.arraycopy(objArr, i, objArr, i + size, i4 - i);
        }
        for (Object obj : collection) {
            int i5 = i2 + 1;
            if (i2 < 0) {
                tv4.S();
                throw null;
            }
            objArr[i2 + i] = obj;
            i2 = i5;
        }
        this.p += size;
        return true;
    }

    public final List g() {
        rg2 rg2Var = this.o;
        if (rg2Var != null) {
            return rg2Var;
        }
        rg2 rg2Var2 = new rg2(this);
        this.o = rg2Var2;
        return rg2Var2;
    }

    public final void h() {
        Object[] objArr = this.n;
        int i = this.p;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.p = 0;
    }

    public final boolean i(Object obj) {
        int i = this.p - 1;
        if (i >= 0) {
            for (int i2 = 0; !nt1.g(this.n[i2], obj); i2++) {
                if (i2 != i) {
                }
            }
            return true;
        }
        return false;
    }

    public final int j(Object obj) {
        Object[] objArr = this.n;
        int i = this.p;
        for (int i2 = 0; i2 < i; i2++) {
            if (nt1.g(obj, objArr[i2])) {
                return i2;
            }
        }
        return -1;
    }

    public final boolean k(Object obj) {
        int iJ = j(obj);
        if (iJ < 0) {
            return false;
        }
        l(iJ);
        return true;
    }

    public final Object l(int i) {
        Object[] objArr = this.n;
        Object obj = objArr[i];
        int i2 = this.p;
        if (i != i2 - 1) {
            int i3 = i + 1;
            System.arraycopy(objArr, i3, objArr, i, i2 - i3);
        }
        int i4 = this.p - 1;
        this.p = i4;
        objArr[i4] = null;
        return obj;
    }

    public final void m(int i, int i2) {
        if (i2 > i) {
            int i3 = this.p;
            if (i2 < i3) {
                Object[] objArr = this.n;
                System.arraycopy(objArr, i2, objArr, i, i3 - i2);
            }
            int i4 = this.p;
            int i5 = i4 - (i2 - i);
            int i6 = i4 - 1;
            if (i5 <= i6) {
                int i7 = i5;
                while (true) {
                    this.n[i7] = null;
                    if (i7 == i6) {
                        break;
                    } else {
                        i7++;
                    }
                }
            }
            this.p = i5;
        }
    }

    public final void n(int i) {
        Object[] objArr = this.n;
        int length = objArr.length;
        Object[] objArr2 = new Object[Math.max(i, length * 2)];
        System.arraycopy(objArr, 0, objArr2, 0, length);
        this.n = objArr2;
    }
}
