package defpackage;

import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class wm3 {
    public int[] n;
    public Object[] o;
    public int p;

    public wm3(int i) {
        this.n = i == 0 ? is0.h : new int[i];
        this.o = i == 0 ? is0.j : new Object[i << 1];
    }

    public final int a(Object obj) {
        int i = this.p * 2;
        Object[] objArr = this.o;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public final int b(int i, Object obj) {
        int i2 = this.p;
        if (i2 == 0) {
            return -1;
        }
        int iL = is0.l(i2, i, this.n);
        if (iL < 0 || nt1.g(obj, this.o[iL << 1])) {
            return iL;
        }
        int i3 = iL + 1;
        while (i3 < i2 && this.n[i3] == i) {
            if (nt1.g(obj, this.o[i3 << 1])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iL - 1; i4 >= 0 && this.n[i4] == i; i4--) {
            if (nt1.g(obj, this.o[i4 << 1])) {
                return i4;
            }
        }
        return ~i3;
    }

    public final void clear() {
        if (this.p > 0) {
            this.n = is0.h;
            this.o = is0.j;
            this.p = 0;
        }
        if (this.p > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return d(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return a(obj) >= 0;
    }

    public final int d(Object obj) {
        return obj == null ? e() : b(obj.hashCode(), obj);
    }

    public final int e() {
        int i = this.p;
        if (i == 0) {
            return -1;
        }
        int iL = is0.l(i, 0, this.n);
        if (iL < 0 || this.o[iL << 1] == null) {
            return iL;
        }
        int i2 = iL + 1;
        while (i2 < i && this.n[i2] == 0) {
            if (this.o[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = iL - 1; i3 >= 0 && this.n[i3] == 0; i3--) {
            if (this.o[i3 << 1] == null) {
                return i3;
            }
        }
        return ~i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof wm3) {
                int i = this.p;
                if (i != ((wm3) obj).p) {
                    return false;
                }
                wm3 wm3Var = (wm3) obj;
                for (int i2 = 0; i2 < i; i2++) {
                    Object objF = f(i2);
                    Object objI = i(i2);
                    Object obj2 = wm3Var.get(objF);
                    if (objI == null) {
                        if (obj2 != null || !wm3Var.containsKey(objF)) {
                            return false;
                        }
                    } else if (!objI.equals(obj2)) {
                        return false;
                    }
                }
                return true;
            }
            if (!(obj instanceof Map) || this.p != ((Map) obj).size()) {
                return false;
            }
            int i3 = this.p;
            for (int i4 = 0; i4 < i3; i4++) {
                Object objF2 = f(i4);
                Object objI2 = i(i4);
                Object obj3 = ((Map) obj).get(objF2);
                if (objI2 == null) {
                    if (obj3 != null || !((Map) obj).containsKey(objF2)) {
                        return false;
                    }
                } else if (!objI2.equals(obj3)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public final Object f(int i) {
        boolean z = false;
        if (i >= 0 && i < this.p) {
            z = true;
        }
        if (z) {
            return this.o[i << 1];
        }
        k21.f(di0.q(i, "Expected index to be within 0..size()-1, but was "));
        return null;
    }

    public final Object g(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.p)) {
            k21.f(di0.q(i, "Expected index to be within 0..size()-1, but was "));
            return null;
        }
        Object[] objArr = this.o;
        int i3 = i << 1;
        Object obj = objArr[i3 + 1];
        if (i2 <= 1) {
            clear();
            return obj;
        }
        int i4 = i2 - 1;
        int[] iArr = this.n;
        if (iArr.length <= 8 || i2 >= iArr.length / 3) {
            if (i < i4) {
                int i5 = i + 1;
                ji.N(i, i5, i2, iArr, iArr);
                Object[] objArr2 = this.o;
                ji.O(i3, i5 << 1, i2 << 1, objArr2, objArr2);
            }
            Object[] objArr3 = this.o;
            int i6 = i4 << 1;
            objArr3[i6] = null;
            objArr3[i6 + 1] = null;
        } else {
            int i7 = i2 > 8 ? i2 + (i2 >> 1) : 8;
            this.n = Arrays.copyOf(iArr, i7);
            this.o = Arrays.copyOf(this.o, i7 << 1);
            if (i2 != this.p) {
                throw new ConcurrentModificationException();
            }
            if (i > 0) {
                ji.N(0, 0, i, iArr, this.n);
                ji.O(0, 0, i3, objArr, this.o);
            }
            if (i < i4) {
                int i8 = i + 1;
                ji.N(i, i8, i2, iArr, this.n);
                ji.O(i3, i8 << 1, i2 << 1, objArr, this.o);
            }
        }
        if (i2 != this.p) {
            throw new ConcurrentModificationException();
        }
        this.p = i4;
        return obj;
    }

    public Object get(Object obj) {
        int iD = d(obj);
        if (iD >= 0) {
            return this.o[(iD << 1) + 1];
        }
        return null;
    }

    public final Object getOrDefault(Object obj, Object obj2) {
        int iD = d(obj);
        return iD >= 0 ? this.o[(iD << 1) + 1] : obj2;
    }

    public final Object h(int i, Object obj) {
        boolean z = false;
        if (i >= 0 && i < this.p) {
            z = true;
        }
        if (!z) {
            k21.f(di0.q(i, "Expected index to be within 0..size()-1, but was "));
            return null;
        }
        int i2 = (i << 1) + 1;
        Object[] objArr = this.o;
        Object obj2 = objArr[i2];
        objArr[i2] = obj;
        return obj2;
    }

    public final int hashCode() {
        int[] iArr = this.n;
        Object[] objArr = this.o;
        int i = this.p;
        int i2 = 1;
        int i3 = 0;
        int iHashCode = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            iHashCode += (obj != null ? obj.hashCode() : 0) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return iHashCode;
    }

    public final Object i(int i) {
        boolean z = false;
        if (i >= 0 && i < this.p) {
            z = true;
        }
        if (z) {
            return this.o[(i << 1) + 1];
        }
        k21.f(di0.q(i, "Expected index to be within 0..size()-1, but was "));
        return null;
    }

    public final boolean isEmpty() {
        return this.p <= 0;
    }

    public final Object put(Object obj, Object obj2) {
        int i = this.p;
        int iHashCode = obj != null ? obj.hashCode() : 0;
        int iB = obj != null ? b(iHashCode, obj) : e();
        if (iB >= 0) {
            int i2 = (iB << 1) + 1;
            Object[] objArr = this.o;
            Object obj3 = objArr[i2];
            objArr[i2] = obj2;
            return obj3;
        }
        int i3 = ~iB;
        int[] iArr = this.n;
        if (i >= iArr.length) {
            int i4 = 8;
            if (i >= 8) {
                i4 = (i >> 1) + i;
            } else if (i < 4) {
                i4 = 4;
            }
            this.n = Arrays.copyOf(iArr, i4);
            this.o = Arrays.copyOf(this.o, i4 << 1);
            if (i != this.p) {
                throw new ConcurrentModificationException();
            }
        }
        if (i3 < i) {
            int[] iArr2 = this.n;
            int i5 = i3 + 1;
            ji.N(i5, i3, i, iArr2, iArr2);
            Object[] objArr2 = this.o;
            ji.O(i5 << 1, i3 << 1, this.p << 1, objArr2, objArr2);
        }
        int i6 = this.p;
        if (i == i6) {
            int[] iArr3 = this.n;
            if (i3 < iArr3.length) {
                iArr3[i3] = iHashCode;
                Object[] objArr3 = this.o;
                int i7 = i3 << 1;
                objArr3[i7] = obj;
                objArr3[i7 + 1] = obj2;
                this.p = i6 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final Object putIfAbsent(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 == null ? put(obj, obj2) : obj3;
    }

    public final boolean remove(Object obj, Object obj2) {
        int iD = d(obj);
        if (iD < 0 || !nt1.g(obj2, i(iD))) {
            return false;
        }
        g(iD);
        return true;
    }

    public final boolean replace(Object obj, Object obj2, Object obj3) {
        int iD = d(obj);
        if (iD < 0 || !nt1.g(obj2, i(iD))) {
            return false;
        }
        h(iD, obj3);
        return true;
    }

    public final int size() {
        return this.p;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.p * 28);
        sb.append('{');
        int i = this.p;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object objF = f(i2);
            if (objF != sb) {
                sb.append(objF);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object objI = i(i2);
            if (objI != sb) {
                sb.append(objI);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public Object remove(Object obj) {
        int iD = d(obj);
        if (iD >= 0) {
            return g(iD);
        }
        return null;
    }

    public final Object replace(Object obj, Object obj2) {
        int iD = d(obj);
        if (iD >= 0) {
            return h(iD, obj2);
        }
        return null;
    }
}
