package defpackage;

import java.util.Arrays;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uu2 extends s1 {
    public final Object[] n;
    public final Object[] o;
    public final int p;
    public final int q;

    public uu2(Object[] objArr, Object[] objArr2, int i, int i2) {
        this.n = objArr;
        this.o = objArr2;
        this.p = i;
        this.q = i2;
        if (!(a() > 32)) {
            ix2.a("Trie-based persistent vector should have at least 33 elements, got " + a());
        }
        int length = objArr2.length;
    }

    public static Object[] l(Object[] objArr, int i, int i2, Object obj, dd1 dd1Var) {
        int iX = qn0.x(i2, i);
        if (i == 0) {
            Object[] objArrCopyOf = iX == 0 ? new Object[32] : Arrays.copyOf(objArr, 32);
            ji.O(iX + 1, iX, 31, objArr, objArrCopyOf);
            dd1Var.o = objArr[31];
            objArrCopyOf[iX] = obj;
            return objArrCopyOf;
        }
        Object[] objArrCopyOf2 = Arrays.copyOf(objArr, 32);
        int i3 = i - 5;
        Object obj2 = objArr[iX];
        obj2.getClass();
        objArrCopyOf2[iX] = l((Object[]) obj2, i3, i2, obj, dd1Var);
        while (true) {
            iX++;
            if (iX >= 32 || objArrCopyOf2[iX] == null) {
                break;
            }
            Object obj3 = objArr[iX];
            obj3.getClass();
            objArrCopyOf2[iX] = l((Object[]) obj3, i3, 0, dd1Var.o, dd1Var);
        }
        return objArrCopyOf2;
    }

    public static Object[] n(Object[] objArr, int i, int i2, dd1 dd1Var) {
        Object[] objArrN;
        int iX = qn0.x(i2, i);
        if (i == 5) {
            dd1Var.o = objArr[iX];
            objArrN = null;
        } else {
            Object obj = objArr[iX];
            obj.getClass();
            objArrN = n((Object[]) obj, i - 5, i2, dd1Var);
        }
        if (objArrN == null && iX == 0) {
            return null;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, 32);
        objArrCopyOf[iX] = objArrN;
        return objArrCopyOf;
    }

    public static Object[] u(int i, int i2, Object obj, Object[] objArr) {
        int iX = qn0.x(i2, i);
        Object[] objArrCopyOf = Arrays.copyOf(objArr, 32);
        if (i == 0) {
            objArrCopyOf[iX] = obj;
            return objArrCopyOf;
        }
        Object obj2 = objArrCopyOf[iX];
        obj2.getClass();
        objArrCopyOf[iX] = u(i - 5, i2, obj, (Object[]) obj2);
        return objArrCopyOf;
    }

    @Override // defpackage.w
    public final int a() {
        return this.p;
    }

    @Override // defpackage.s1
    public final s1 d(int i, Object obj) {
        int i2 = this.p;
        zf5.q(i, i2);
        if (i == i2) {
            return e(obj);
        }
        int iT = t();
        Object[] objArr = this.n;
        if (i >= iT) {
            return m(i - iT, obj, objArr);
        }
        dd1 dd1Var = new dd1(8, (Object) null);
        return m(0, dd1Var.o, l(objArr, this.q, i, obj, dd1Var));
    }

    @Override // defpackage.s1
    public final s1 e(Object obj) {
        int iT = t();
        int i = this.p;
        int i2 = i - iT;
        Object[] objArr = this.n;
        Object[] objArr2 = this.o;
        if (i2 < 32) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr2, 32);
            objArrCopyOf[i2] = obj;
            return new uu2(objArr, objArrCopyOf, i + 1, this.q);
        }
        Object[] objArr3 = new Object[32];
        objArr3[0] = obj;
        return o(objArr, objArr2, objArr3);
    }

    @Override // defpackage.s1
    public final vu2 g() {
        return new vu2(this, this.n, this.o, this.q);
    }

    @Override // java.util.List
    public final Object get(int i) {
        Object[] objArr;
        zf5.o(i, a());
        if (t() <= i) {
            objArr = this.o;
        } else {
            Object[] objArr2 = this.n;
            for (int i2 = this.q; i2 > 0; i2 -= 5) {
                Object[] objArr3 = objArr2[qn0.x(i, i2)];
                objArr3.getClass();
                objArr2 = objArr3;
            }
            objArr = objArr2;
        }
        return objArr[i & 31];
    }

    @Override // defpackage.s1
    public final s1 h(r1 r1Var) {
        vu2 vu2Var = new vu2(this, this.n, this.o, this.q);
        vu2Var.G(r1Var);
        return vu2Var.e();
    }

    @Override // defpackage.s1
    public final s1 i(int i) {
        zf5.o(i, a());
        int iT = t();
        int i2 = this.q;
        Object[] objArr = this.n;
        if (i >= iT) {
            return s(objArr, iT, i2, i - iT);
        }
        return s(q(objArr, i2, i, new dd1(8, this.o[0])), iT, i2, 0);
    }

    @Override // defpackage.s1
    public final s1 k(int i, Object obj) {
        int i2 = this.p;
        zf5.o(i, i2);
        int iT = t();
        Object[] objArr = this.n;
        Object[] objArr2 = this.o;
        int i3 = this.q;
        if (iT > i) {
            return new uu2(u(i3, i, obj, objArr), objArr2, i2, i3);
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr2, 32);
        objArrCopyOf[i & 31] = obj;
        return new uu2(objArr, objArrCopyOf, i2, i3);
    }

    @Override // defpackage.j1, java.util.List
    public final ListIterator listIterator(int i) {
        zf5.q(i, this.p);
        return new wu2(i, this.p, (this.q / 5) + 1, this.n, this.o);
    }

    public final uu2 m(int i, Object obj, Object[] objArr) {
        int iT = t();
        int i2 = this.p;
        int i3 = i2 - iT;
        Object[] objArr2 = this.o;
        Object[] objArrCopyOf = Arrays.copyOf(objArr2, 32);
        if (i3 < 32) {
            ji.O(i + 1, i, i3, objArr2, objArrCopyOf);
            objArrCopyOf[i] = obj;
            return new uu2(objArr, objArrCopyOf, i2 + 1, this.q);
        }
        Object obj2 = objArr2[31];
        ji.O(i + 1, i, i3 - 1, objArr2, objArrCopyOf);
        objArrCopyOf[i] = obj;
        Object[] objArr3 = new Object[32];
        objArr3[0] = obj2;
        return o(objArr, objArrCopyOf, objArr3);
    }

    public final uu2 o(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int i = this.p;
        int i2 = i >> 5;
        int i3 = this.q;
        if (i2 <= (1 << i3)) {
            return new uu2(p(i3, objArr, objArr2), objArr3, i + 1, i3);
        }
        Object[] objArr4 = new Object[32];
        objArr4[0] = objArr;
        int i4 = i3 + 5;
        return new uu2(p(i4, objArr4, objArr2), objArr3, i + 1, i4);
    }

    public final Object[] p(int i, Object[] objArr, Object[] objArr2) {
        int iX = qn0.x(a() - 1, i);
        Object[] objArrCopyOf = objArr != null ? Arrays.copyOf(objArr, 32) : new Object[32];
        if (i == 5) {
            objArrCopyOf[iX] = objArr2;
            return objArrCopyOf;
        }
        objArrCopyOf[iX] = p(i - 5, (Object[]) objArrCopyOf[iX], objArr2);
        return objArrCopyOf;
    }

    public final Object[] q(Object[] objArr, int i, int i2, dd1 dd1Var) {
        int iX = qn0.x(i2, i);
        if (i == 0) {
            Object[] objArrCopyOf = iX == 0 ? new Object[32] : Arrays.copyOf(objArr, 32);
            ji.O(iX, iX + 1, 32, objArr, objArrCopyOf);
            objArrCopyOf[31] = dd1Var.o;
            dd1Var.o = objArr[iX];
            return objArrCopyOf;
        }
        int iX2 = objArr[31] == null ? qn0.x(t() - 1, i) : 31;
        Object[] objArrCopyOf2 = Arrays.copyOf(objArr, 32);
        int i3 = i - 5;
        int i4 = iX + 1;
        if (i4 <= iX2) {
            while (true) {
                Object obj = objArrCopyOf2[iX2];
                obj.getClass();
                objArrCopyOf2[iX2] = q((Object[]) obj, i3, 0, dd1Var);
                if (iX2 == i4) {
                    break;
                }
                iX2--;
            }
        }
        Object obj2 = objArrCopyOf2[iX];
        obj2.getClass();
        objArrCopyOf2[iX] = q((Object[]) obj2, i3, i2, dd1Var);
        return objArrCopyOf2;
    }

    public final s1 s(Object[] objArr, int i, int i2, int i3) {
        int i4 = this.p - i;
        Object obj = null;
        if (i4 != 1) {
            Object[] objArr2 = this.o;
            Object[] objArrCopyOf = Arrays.copyOf(objArr2, 32);
            int i5 = i4 - 1;
            if (i3 < i5) {
                ji.O(i3, i3 + 1, i4, objArr2, objArrCopyOf);
            }
            objArrCopyOf[i5] = null;
            return new uu2(objArr, objArrCopyOf, (i + i4) - 1, i2);
        }
        if (i2 == 0) {
            if (objArr.length == 33) {
                objArr = Arrays.copyOf(objArr, 32);
            }
            return new yn3(objArr);
        }
        dd1 dd1Var = new dd1(8, obj);
        Object[] objArrN = n(objArr, i2, i - 1, dd1Var);
        objArrN.getClass();
        Object obj2 = dd1Var.o;
        obj2.getClass();
        Object[] objArr3 = (Object[]) obj2;
        if (objArrN[1] != null) {
            return new uu2(objArrN, objArr3, i, i2);
        }
        Object obj3 = objArrN[0];
        obj3.getClass();
        return new uu2((Object[]) obj3, objArr3, i, i2 - 5);
    }

    public final int t() {
        return (this.p - 1) & (-32);
    }
}
