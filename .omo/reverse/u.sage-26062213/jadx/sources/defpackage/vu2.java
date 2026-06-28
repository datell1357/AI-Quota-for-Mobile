package defpackage;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vu2 extends p1 implements Collection, gx1 {
    public s1 n;
    public Object[] o;
    public Object[] p;
    public int q;
    public qz0 r = new qz0(14);
    public Object[] s;
    public Object[] t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f385u;

    public vu2(s1 s1Var, Object[] objArr, Object[] objArr2, int i) {
        this.n = s1Var;
        this.o = objArr;
        this.p = objArr2;
        this.q = i;
        this.s = objArr;
        this.t = objArr2;
        this.f385u = s1Var.a();
    }

    public static void f(Object[] objArr, int i, Iterator it) {
        while (i < 32 && it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
    }

    public final int C(pe1 pe1Var, Object[] objArr, int i, int i2, dd1 dd1Var, ArrayList arrayList, ArrayList arrayList2) {
        if (l(objArr)) {
            arrayList.add(objArr);
        }
        Object obj = dd1Var.o;
        obj.getClass();
        Object[] objArr2 = (Object[]) obj;
        Object[] objArrP = objArr2;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj2 = objArr[i3];
            if (!((Boolean) pe1Var.k(obj2)).booleanValue()) {
                if (i2 == 32) {
                    objArrP = !arrayList.isEmpty() ? (Object[]) arrayList.remove(arrayList.size() - 1) : p();
                    i2 = 0;
                }
                objArrP[i2] = obj2;
                i2++;
            }
        }
        dd1Var.o = objArrP;
        if (objArr2 != objArrP) {
            arrayList2.add(objArr2);
        }
        return i2;
    }

    public final int D(pe1 pe1Var, Object[] objArr, int i, dd1 dd1Var) {
        Object[] objArrN = objArr;
        int i2 = i;
        boolean z = false;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (((Boolean) pe1Var.k(obj)).booleanValue()) {
                if (!z) {
                    objArrN = n(objArr);
                    z = true;
                    i2 = i3;
                }
            } else if (z) {
                objArrN[i2] = obj;
                i2++;
            }
        }
        dd1Var.o = objArrN;
        return i2;
    }

    public final int E(pe1 pe1Var, int i, dd1 dd1Var) {
        int iD = D(pe1Var, this.t, i, dd1Var);
        Object obj = dd1Var.o;
        if (iD == i) {
            return i;
        }
        obj.getClass();
        Object[] objArr = (Object[]) obj;
        Arrays.fill(objArr, iD, i, (Object) null);
        this.t = objArr;
        this.f385u -= i - iD;
        return iD;
    }

    public final boolean G(pe1 pe1Var) {
        int i;
        pe1 pe1Var2 = pe1Var;
        int iP = P();
        Object[] objArrS = null;
        dd1 dd1Var = new dd1(8, objArrS);
        boolean z = false;
        if (this.s != null) {
            k1 k1VarM = m(0);
            int iD = 32;
            while (iD == 32 && k1VarM.hasNext()) {
                iD = D(pe1Var2, (Object[]) k1VarM.next(), 32, dd1Var);
            }
            if (iD == 32) {
                int iE = E(pe1Var2, iP, dd1Var);
                if (iE == 0) {
                    u(this.s, this.f385u, this.q);
                }
                if (iE != iP) {
                }
            } else {
                int i2 = (k1VarM.n - 1) << 5;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                int iC = iD;
                while (k1VarM.hasNext()) {
                    iC = C(pe1Var2, (Object[]) k1VarM.next(), 32, iC, dd1Var, arrayList2, arrayList);
                    pe1Var2 = pe1Var;
                }
                int iC2 = C(pe1Var, this.t, iP, iC, dd1Var, arrayList2, arrayList);
                Object obj = dd1Var.o;
                obj.getClass();
                Object[] objArr = (Object[]) obj;
                Arrays.fill(objArr, iC2, 32, (Object) null);
                boolean zIsEmpty = arrayList.isEmpty();
                Object[] objArrV = this.s;
                if (zIsEmpty) {
                    objArrV.getClass();
                } else {
                    objArrV = v(objArrV, i2, this.q, arrayList.iterator());
                }
                int size = i2 + (arrayList.size() << 5);
                if ((size & 31) != 0) {
                    ix2.a("invalid size");
                }
                if (size == 0) {
                    this.q = 0;
                } else {
                    int i3 = size - 1;
                    while (true) {
                        i = this.q;
                        if ((i3 >> i) != 0) {
                            break;
                        }
                        this.q = i - 5;
                        Object[] objArr2 = objArrV[0];
                        objArr2.getClass();
                        objArrV = objArr2;
                    }
                    objArrS = s(objArrV, i3, i);
                }
                this.s = objArrS;
                this.t = objArr;
                this.f385u = size + iC2;
            }
            z = true;
        } else if (E(pe1Var2, iP, dd1Var) != iP) {
            z = true;
        }
        if (z) {
            ((AbstractList) this).modCount++;
        }
        return z;
    }

    public final Object[] H(Object[] objArr, int i, int i2, dd1 dd1Var) {
        int iX = qn0.x(i2, i);
        if (i == 0) {
            Object obj = objArr[iX];
            Object[] objArrN = n(objArr);
            ji.O(iX, iX + 1, 32, objArr, objArrN);
            objArrN[31] = dd1Var.o;
            dd1Var.o = obj;
            return objArrN;
        }
        int iX2 = objArr[31] == null ? qn0.x(J() - 1, i) : 31;
        Object[] objArrN2 = n(objArr);
        int i3 = i - 5;
        int i4 = iX + 1;
        if (i4 <= iX2) {
            while (true) {
                Object obj2 = objArrN2[iX2];
                obj2.getClass();
                objArrN2[iX2] = H((Object[]) obj2, i3, 0, dd1Var);
                if (iX2 == i4) {
                    break;
                }
                iX2--;
            }
        }
        Object obj3 = objArrN2[iX];
        obj3.getClass();
        objArrN2[iX] = H((Object[]) obj3, i3, i2, dd1Var);
        return objArrN2;
    }

    public final Object I(Object[] objArr, int i, int i2, int i3) {
        int i4 = this.f385u - i;
        Object[] objArr2 = this.t;
        if (i4 == 1) {
            Object obj = objArr2[0];
            u(objArr, i, i2);
            return obj;
        }
        Object obj2 = objArr2[i3];
        Object[] objArrN = n(objArr2);
        ji.O(i3, i3 + 1, i4, objArr2, objArrN);
        objArrN[i4 - 1] = null;
        this.s = objArr;
        this.t = objArrN;
        this.f385u = (i + i4) - 1;
        this.q = i2;
        return obj2;
    }

    public final int J() {
        int i = this.f385u;
        if (i <= 32) {
            return 0;
        }
        return (i - 1) & (-32);
    }

    public final Object[] M(Object[] objArr, int i, int i2, Object obj, dd1 dd1Var) {
        int iX = qn0.x(i2, i);
        Object[] objArrN = n(objArr);
        if (i != 0) {
            Object obj2 = objArrN[iX];
            obj2.getClass();
            objArrN[iX] = M((Object[]) obj2, i - 5, i2, obj, dd1Var);
            return objArrN;
        }
        if (objArrN != objArr) {
            ((AbstractList) this).modCount++;
        }
        dd1Var.o = objArrN[iX];
        objArrN[iX] = obj;
        return objArrN;
    }

    public final void O(Collection collection, int i, Object[] objArr, int i2, Object[][] objArr2, int i3, Object[] objArr3) {
        Object[] objArrP;
        if (i3 < 1) {
            ix2.a("requires at least one nullBuffer");
        }
        Object[] objArrN = n(objArr);
        objArr2[0] = objArrN;
        int i4 = i & 31;
        int size = ((collection.size() + i) - 1) & 31;
        int i5 = (i2 - i4) + size;
        if (i5 < 32) {
            ji.O(size + 1, i4, i2, objArrN, objArr3);
        } else {
            int i6 = i5 - 31;
            if (i3 == 1) {
                objArrP = objArrN;
            } else {
                objArrP = p();
                i3--;
                objArr2[i3] = objArrP;
            }
            int i7 = i2 - i6;
            ji.O(0, i7, i2, objArrN, objArr3);
            ji.O(size + 1, i4, i7, objArrN, objArrP);
            objArr3 = objArrP;
        }
        Iterator it = collection.iterator();
        f(objArrN, i4, it);
        for (int i8 = 1; i8 < i3; i8++) {
            Object[] objArrP2 = p();
            f(objArrP2, 0, it);
            objArr2[i8] = objArrP2;
        }
        f(objArr3, 0, it);
    }

    public final int P() {
        int i = this.f385u;
        return i <= 32 ? i : i - ((i - 1) & (-32));
    }

    @Override // defpackage.p1
    public final int a() {
        return this.f385u;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        zf5.q(i, a());
        if (i == a()) {
            add(obj);
            return;
        }
        ((AbstractList) this).modCount++;
        int iJ = J();
        if (i >= iJ) {
            k(i - iJ, obj, this.s);
            return;
        }
        dd1 dd1Var = new dd1(8, (Object) null);
        Object[] objArr = this.s;
        objArr.getClass();
        k(0, dd1Var.o, i(objArr, this.q, i, obj, dd1Var));
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        Collection collection2;
        Object[] objArrP;
        zf5.q(i, this.f385u);
        if (i == this.f385u) {
            return addAll(collection);
        }
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int i2 = (i >> 5) << 5;
        int size = ((collection.size() + (this.f385u - i2)) - 1) / 32;
        if (size == 0) {
            int i3 = i & 31;
            int size2 = ((collection.size() + i) - 1) & 31;
            Object[] objArr = this.t;
            Object[] objArrN = n(objArr);
            ji.O(size2 + 1, i3, P(), objArr, objArrN);
            f(objArrN, i3, collection.iterator());
            this.t = objArrN;
            this.f385u = collection.size() + this.f385u;
            return true;
        }
        Object[][] objArr2 = new Object[size][];
        int iP = P();
        int size3 = collection.size() + this.f385u;
        if (size3 > 32) {
            size3 -= (size3 - 1) & (-32);
        }
        if (i >= J()) {
            objArrP = p();
            collection2 = collection;
            O(collection2, i, this.t, iP, objArr2, size, objArrP);
            objArr2 = objArr2;
        } else {
            collection2 = collection;
            Object[] objArr3 = this.t;
            if (size3 > iP) {
                int i4 = size3 - iP;
                Object[] objArrO = o(i4, objArr3);
                h(collection2, i, i4, objArr2, size, objArrO);
                objArr2 = objArr2;
                objArrP = objArrO;
            } else {
                objArrP = p();
                int i5 = iP - size3;
                ji.O(0, i5, iP, objArr3, objArrP);
                int i6 = 32 - i5;
                Object[] objArrO2 = o(i6, this.t);
                int i7 = size - 1;
                objArr2[i7] = objArrO2;
                h(collection2, i, i6, objArr2, i7, objArrO2);
                collection2 = collection2;
            }
        }
        this.s = w(this.s, i2, objArr2);
        this.t = objArrP;
        this.f385u = collection2.size() + this.f385u;
        return true;
    }

    @Override // defpackage.p1
    public final Object d(int i) {
        zf5.o(i, a());
        ((AbstractList) this).modCount++;
        int iJ = J();
        if (i >= iJ) {
            return I(this.s, iJ, this.q, i - iJ);
        }
        dd1 dd1Var = new dd1(8, this.t[0]);
        Object[] objArr = this.s;
        objArr.getClass();
        I(H(objArr, this.q, i, dd1Var), iJ, this.q, 0);
        return dd1Var.o;
    }

    public final s1 e() {
        s1 yn3Var;
        Object[] objArr = this.s;
        if (objArr == this.o && this.t == this.p) {
            yn3Var = this.n;
        } else {
            this.r = new qz0(14);
            this.o = objArr;
            Object[] objArr2 = this.t;
            this.p = objArr2;
            yn3Var = objArr == null ? objArr2.length == 0 ? yn3.o : new yn3(Arrays.copyOf(objArr2, this.f385u)) : new uu2(objArr, objArr2, this.f385u, this.q);
        }
        this.n = yn3Var;
        return yn3Var;
    }

    public final int g() {
        return ((AbstractList) this).modCount;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        Object[] objArr;
        zf5.o(i, a());
        if (J() <= i) {
            objArr = this.t;
        } else {
            Object[] objArr2 = this.s;
            objArr2.getClass();
            for (int i2 = this.q; i2 > 0; i2 -= 5) {
                Object[] objArr3 = objArr2[qn0.x(i, i2)];
                objArr3.getClass();
                objArr2 = objArr3;
            }
            objArr = objArr2;
        }
        return objArr[i & 31];
    }

    public final void h(Collection collection, int i, int i2, Object[][] objArr, int i3, Object[] objArr2) {
        if (this.s == null) {
            k21.n("root is null");
            return;
        }
        int i4 = i >> 5;
        k1 k1VarM = m(J() >> 5);
        int i5 = i3;
        Object[] objArrO = objArr2;
        while (k1VarM.n - 1 != i4) {
            Object[] objArr3 = (Object[]) k1VarM.previous();
            ji.O(0, 32 - i2, 32, objArr3, objArrO);
            objArrO = o(i2, objArr3);
            i5--;
            objArr[i5] = objArrO;
        }
        Object[] objArr4 = (Object[]) k1VarM.previous();
        int iJ = i3 - (((J() >> 5) - 1) - i4);
        if (iJ < i3) {
            objArr2 = objArr[iJ];
            objArr2.getClass();
        }
        O(collection, i, objArr4, 32, objArr, iJ, objArr2);
    }

    public final Object[] i(Object[] objArr, int i, int i2, Object obj, dd1 dd1Var) {
        Object obj2;
        int iX = qn0.x(i2, i);
        if (i == 0) {
            dd1Var.o = objArr[31];
            Object[] objArrN = n(objArr);
            ji.O(iX + 1, iX, 31, objArr, objArrN);
            objArrN[iX] = obj;
            return objArrN;
        }
        Object[] objArrN2 = n(objArr);
        int i3 = i - 5;
        Object obj3 = objArrN2[iX];
        obj3.getClass();
        objArrN2[iX] = i((Object[]) obj3, i3, i2, obj, dd1Var);
        while (true) {
            iX++;
            if (iX >= 32 || (obj2 = objArrN2[iX]) == null) {
                break;
            }
            objArrN2[iX] = i((Object[]) obj2, i3, 0, dd1Var.o, dd1Var);
        }
        return objArrN2;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final void k(int i, Object obj, Object[] objArr) {
        int iP = P();
        Object[] objArrN = n(this.t);
        Object[] objArr2 = this.t;
        if (iP >= 32) {
            Object obj2 = objArr2[31];
            ji.O(i + 1, i, 31, objArr2, objArrN);
            objArrN[i] = obj;
            x(objArr, objArrN, q(obj2));
            return;
        }
        ji.O(i + 1, i, iP, objArr2, objArrN);
        objArrN[i] = obj;
        this.s = objArr;
        this.t = objArrN;
        this.f385u++;
    }

    public final boolean l(Object[] objArr) {
        return objArr.length == 33 && objArr[32] == this.r;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        zf5.q(i, this.f385u);
        return new xu2(this, i);
    }

    public final k1 m(int i) {
        Object[] objArr = this.s;
        if (objArr == null) {
            k21.n("Invalid root");
            return null;
        }
        int iJ = J() >> 5;
        zf5.q(i, iJ);
        int i2 = this.q;
        return i2 == 0 ? new uy(i, objArr) : new i24(objArr, i, iJ, i2 / 5);
    }

    public final Object[] n(Object[] objArr) {
        if (objArr == null) {
            return p();
        }
        if (l(objArr)) {
            return objArr;
        }
        Object[] objArrP = p();
        int length = objArr.length;
        if (length > 32) {
            length = 32;
        }
        ji.R(0, length, 6, objArr, objArrP);
        return objArrP;
    }

    public final Object[] o(int i, Object[] objArr) {
        if (l(objArr)) {
            ji.O(i, 0, 32 - i, objArr, objArr);
            return objArr;
        }
        Object[] objArrP = p();
        ji.O(i, 0, 32 - i, objArr, objArrP);
        return objArrP;
    }

    public final Object[] p() {
        Object[] objArr = new Object[33];
        objArr[32] = this.r;
        return objArr;
    }

    public final Object[] q(Object obj) {
        Object[] objArr = new Object[33];
        objArr[0] = obj;
        objArr[32] = this.r;
        return objArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        return G(new r1(1, collection));
    }

    public final Object[] s(Object[] objArr, int i, int i2) {
        if (i2 < 0) {
            ix2.a("shift should be positive");
        }
        if (i2 == 0) {
            return objArr;
        }
        int iX = qn0.x(i, i2);
        Object obj = objArr[iX];
        obj.getClass();
        Object objS = s((Object[]) obj, i, i2 - 5);
        if (iX < 31) {
            int i3 = iX + 1;
            if (objArr[i3] != null) {
                if (l(objArr)) {
                    Arrays.fill(objArr, i3, 32, (Object) null);
                }
                Object[] objArrP = p();
                ji.O(0, 0, i3, objArr, objArrP);
                objArr = objArrP;
            }
        }
        if (objS == objArr[iX]) {
            return objArr;
        }
        Object[] objArrN = n(objArr);
        objArrN[iX] = objS;
        return objArrN;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        zf5.o(i, a());
        if (J() > i) {
            dd1 dd1Var = new dd1(8, (Object) null);
            Object[] objArr = this.s;
            objArr.getClass();
            this.s = M(objArr, this.q, i, obj, dd1Var);
            return dd1Var.o;
        }
        Object[] objArrN = n(this.t);
        if (objArrN != this.t) {
            ((AbstractList) this).modCount++;
        }
        int i2 = i & 31;
        Object obj2 = objArrN[i2];
        objArrN[i2] = obj;
        this.t = objArrN;
        return obj2;
    }

    public final Object[] t(Object[] objArr, int i, int i2, dd1 dd1Var) {
        Object[] objArrT;
        int iX = qn0.x(i2 - 1, i);
        if (i == 5) {
            dd1Var.o = objArr[iX];
            objArrT = null;
        } else {
            Object obj = objArr[iX];
            obj.getClass();
            objArrT = t((Object[]) obj, i - 5, i2, dd1Var);
        }
        if (objArrT == null && iX == 0) {
            return null;
        }
        Object[] objArrN = n(objArr);
        objArrN[iX] = objArrT;
        return objArrN;
    }

    public final void u(Object[] objArr, int i, int i2) {
        Object obj = null;
        if (i2 == 0) {
            this.s = null;
            if (objArr == null) {
                objArr = new Object[0];
            }
            this.t = objArr;
            this.f385u = i;
            this.q = i2;
            return;
        }
        dd1 dd1Var = new dd1(8, obj);
        objArr.getClass();
        Object[] objArrT = t(objArr, i2, i, dd1Var);
        objArrT.getClass();
        Object obj2 = dd1Var.o;
        obj2.getClass();
        this.t = (Object[]) obj2;
        this.f385u = i;
        if (objArrT[1] == null) {
            this.s = (Object[]) objArrT[0];
            this.q = i2 - 5;
        } else {
            this.s = objArrT;
            this.q = i2;
        }
    }

    public final Object[] v(Object[] objArr, int i, int i2, Iterator it) {
        if (!it.hasNext()) {
            ix2.a("invalid buffersIterator");
        }
        if (!(i2 >= 0)) {
            ix2.a("negative shift");
        }
        if (i2 == 0) {
            return (Object[]) it.next();
        }
        Object[] objArrN = n(objArr);
        int iX = qn0.x(i, i2);
        int i3 = i2 - 5;
        objArrN[iX] = v((Object[]) objArrN[iX], i, i3, it);
        while (true) {
            iX++;
            if (iX >= 32 || !it.hasNext()) {
                break;
            }
            objArrN[iX] = v((Object[]) objArrN[iX], 0, i3, it);
        }
        return objArrN;
    }

    public final Object[] w(Object[] objArr, int i, Object[][] objArr2) {
        g1 g1Var = new g1(1, objArr2);
        int i2 = i >> 5;
        int i3 = this.q;
        Object[] objArrV = i2 < (1 << i3) ? v(objArr, i, i3, g1Var) : n(objArr);
        while (g1Var.hasNext()) {
            this.q += 5;
            objArrV = q(objArrV);
            int i4 = this.q;
            v(objArrV, 1 << i4, i4, g1Var);
        }
        return objArrV;
    }

    public final void x(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int i = this.f385u;
        int i2 = i >> 5;
        int i3 = this.q;
        if (i2 > (1 << i3)) {
            this.s = y(this.q + 5, q(objArr), objArr2);
            this.t = objArr3;
            this.q += 5;
            this.f385u++;
            return;
        }
        if (objArr == null) {
            this.s = objArr2;
            this.t = objArr3;
            this.f385u = i + 1;
        } else {
            this.s = y(i3, objArr, objArr2);
            this.t = objArr3;
            this.f385u++;
        }
    }

    public final Object[] y(int i, Object[] objArr, Object[] objArr2) {
        int iX = qn0.x(a() - 1, i);
        Object[] objArrN = n(objArr);
        if (i == 5) {
            objArrN[iX] = objArr2;
            return objArrN;
        }
        objArrN[iX] = y(i - 5, (Object[]) objArrN[iX], objArr2);
        return objArrN;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        ((AbstractList) this).modCount++;
        int iP = P();
        if (iP < 32) {
            Object[] objArrN = n(this.t);
            objArrN[iP] = obj;
            this.t = objArrN;
            this.f385u = a() + 1;
        } else {
            x(this.s, this.t, q(obj));
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int iP = P();
        Iterator it = collection.iterator();
        if (32 - iP >= collection.size()) {
            Object[] objArrN = n(this.t);
            f(objArrN, iP, it);
            this.t = objArrN;
            this.f385u = collection.size() + this.f385u;
            return true;
        }
        int size = ((collection.size() + iP) - 1) / 32;
        Object[][] objArr = new Object[size][];
        Object[] objArrN2 = n(this.t);
        f(objArrN2, iP, it);
        objArr[0] = objArrN2;
        for (int i = 1; i < size; i++) {
            Object[] objArrP = p();
            f(objArrP, 0, it);
            objArr[i] = objArrP;
        }
        this.s = w(this.s, J(), objArr);
        Object[] objArrP2 = p();
        f(objArrP2, 0, it);
        this.t = objArrP2;
        this.f385u = collection.size() + this.f385u;
        return true;
    }
}
