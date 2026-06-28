package defpackage;

import com.google.android.gms.common.api.Api;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ca2 implements Map, Serializable, hx1 {
    public static final ca2 A;
    public Object[] n;
    public Object[] o;
    public int[] p;
    public int[] q;
    public int r;
    public int s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f44u;
    public int v;
    public da2 w;
    public ea2 x;
    public da2 y;
    public boolean z;

    static {
        ca2 ca2Var = new ca2(0);
        ca2Var.z = true;
        A = ca2Var;
    }

    public ca2(int i) {
        if (i < 0) {
            k21.f("capacity must be non-negative.");
            throw null;
        }
        Object[] objArr = new Object[i];
        int[] iArr = new int[i];
        int iHighestOneBit = Integer.highestOneBit((i < 1 ? 1 : i) * 3);
        this.n = objArr;
        this.o = null;
        this.p = iArr;
        this.q = new int[iHighestOneBit];
        this.r = 2;
        this.s = 0;
        this.t = Integer.numberOfLeadingZeros(iHighestOneBit) + 1;
    }

    public final int a(Object obj) {
        d();
        while (true) {
            int iJ = j(obj);
            int i = this.r * 2;
            int length = this.q.length / 2;
            if (i > length) {
                i = length;
            }
            int i2 = 0;
            while (true) {
                int[] iArr = this.q;
                int i3 = iArr[iJ];
                if (i3 == 0) {
                    int i4 = this.s;
                    Object[] objArr = this.n;
                    if (i4 < objArr.length) {
                        int i5 = i4 + 1;
                        this.s = i5;
                        objArr[i4] = obj;
                        this.p[i4] = iJ;
                        iArr[iJ] = i5;
                        this.v++;
                        this.f44u++;
                        if (i2 > this.r) {
                            this.r = i2;
                        }
                        return i4;
                    }
                    g(1);
                } else {
                    if (nt1.g(this.n[i3 - 1], obj)) {
                        return -i3;
                    }
                    i2++;
                    if (i2 > i) {
                        k(this.q.length * 2);
                        break;
                    }
                    iJ = iJ == 0 ? this.q.length - 1 : iJ - 1;
                }
            }
        }
    }

    public final ca2 b() {
        d();
        this.z = true;
        if (this.v > 0) {
            return this;
        }
        ca2 ca2Var = A;
        ca2Var.getClass();
        return ca2Var;
    }

    @Override // java.util.Map
    public final void clear() {
        d();
        int i = this.s - 1;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.p;
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    this.q[i3] = 0;
                    iArr[i2] = -1;
                }
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        k75.K(this.n, 0, this.s);
        Object[] objArr = this.o;
        if (objArr != null) {
            k75.K(objArr, 0, this.s);
        }
        this.v = 0;
        this.s = 0;
        this.f44u++;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return h(obj) >= 0;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return i(obj) >= 0;
    }

    public final void d() {
        if (this.z) {
            p61.b();
        }
    }

    public final void e(boolean z) {
        int i;
        Object[] objArr = this.o;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = this.s;
            if (i2 >= i) {
                break;
            }
            int[] iArr = this.p;
            int i4 = iArr[i2];
            if (i4 >= 0) {
                Object[] objArr2 = this.n;
                objArr2[i3] = objArr2[i2];
                if (objArr != null) {
                    objArr[i3] = objArr[i2];
                }
                if (z) {
                    iArr[i3] = i4;
                    this.q[i4] = i3 + 1;
                }
                i3++;
            }
            i2++;
        }
        k75.K(this.n, i3, i);
        if (objArr != null) {
            k75.K(objArr, i3, this.s);
        }
        this.s = i3;
    }

    @Override // java.util.Map
    public final Set entrySet() {
        da2 da2Var = this.y;
        if (da2Var != null) {
            return da2Var;
        }
        da2 da2Var2 = new da2(this, 0);
        this.y = da2Var2;
        return da2Var2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        return this.v == map.size() && f(map.entrySet());
    }

    public final boolean f(Collection collection) {
        boolean zG;
        collection.getClass();
        for (Object obj : collection) {
            if (obj != null) {
                try {
                    Map.Entry entry = (Map.Entry) obj;
                    int iH = h(entry.getKey());
                    if (iH < 0) {
                        zG = false;
                    } else {
                        Object[] objArr = this.o;
                        objArr.getClass();
                        zG = nt1.g(objArr[iH], entry.getValue());
                    }
                    if (!zG) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final void g(int i) {
        Object[] objArr = this.n;
        int length = objArr.length;
        int i2 = this.s;
        int i3 = length - i2;
        int i4 = i2 - this.v;
        if (i3 < i && i3 + i4 >= i && i4 >= objArr.length / 4) {
            e(true);
            return;
        }
        int i5 = i2 + i;
        if (i5 < 0) {
            throw new OutOfMemoryError();
        }
        if (i5 > objArr.length) {
            int length2 = objArr.length;
            int i6 = length2 + (length2 >> 1);
            if (i6 - i5 < 0) {
                i6 = i5;
            }
            if (i6 - 2147483639 > 0) {
                i6 = i5 > 2147483639 ? Api.BaseClientBuilder.API_PRIORITY_OTHER : 2147483639;
            }
            this.n = Arrays.copyOf(objArr, i6);
            Object[] objArr2 = this.o;
            this.o = objArr2 != null ? Arrays.copyOf(objArr2, i6) : null;
            this.p = Arrays.copyOf(this.p, i6);
            int iHighestOneBit = Integer.highestOneBit((i6 >= 1 ? i6 : 1) * 3);
            if (iHighestOneBit > this.q.length) {
                k(iHighestOneBit);
            }
        }
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        int iH = h(obj);
        if (iH < 0) {
            return null;
        }
        Object[] objArr = this.o;
        objArr.getClass();
        return objArr[iH];
    }

    public final int h(Object obj) {
        int iJ = j(obj);
        int i = this.r;
        while (true) {
            int i2 = this.q[iJ];
            if (i2 == 0) {
                return -1;
            }
            int i3 = i2 - 1;
            if (nt1.g(this.n[i3], obj)) {
                return i3;
            }
            i--;
            if (i < 0) {
                return -1;
            }
            iJ = iJ == 0 ? this.q.length - 1 : iJ - 1;
        }
    }

    @Override // java.util.Map
    public final int hashCode() {
        z92 z92Var = new z92(this, 0);
        int i = 0;
        while (z92Var.hasNext()) {
            int i2 = z92Var.n;
            ca2 ca2Var = (ca2) z92Var.q;
            if (i2 >= ca2Var.s) {
                p61.v();
                return 0;
            }
            z92Var.n = i2 + 1;
            z92Var.o = i2;
            Object obj = ca2Var.n[i2];
            int iHashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = ca2Var.o;
            objArr.getClass();
            Object obj2 = objArr[z92Var.o];
            int iHashCode2 = obj2 != null ? obj2.hashCode() : 0;
            z92Var.e();
            i += iHashCode ^ iHashCode2;
        }
        return i;
    }

    public final int i(Object obj) {
        int i = this.s;
        while (true) {
            i--;
            if (i < 0) {
                return -1;
            }
            if (this.p[i] >= 0) {
                Object[] objArr = this.o;
                objArr.getClass();
                if (nt1.g(objArr[i], obj)) {
                    return i;
                }
            }
        }
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.v == 0;
    }

    public final int j(Object obj) {
        return ((obj != null ? obj.hashCode() : 0) * (-1640531527)) >>> this.t;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
    
        r3[r0] = r6;
        r5.p[r2] = r0;
        r2 = r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k(int r6) {
        /*
            r5 = this;
            int r0 = r5.f44u
            int r0 = r0 + 1
            r5.f44u = r0
            int r0 = r5.s
            int r1 = r5.v
            r2 = 0
            if (r0 <= r1) goto L10
            r5.e(r2)
        L10:
            int[] r0 = new int[r6]
            r5.q = r0
            int r6 = java.lang.Integer.numberOfLeadingZeros(r6)
            int r6 = r6 + 1
            r5.t = r6
        L1c:
            int r6 = r5.s
            if (r2 >= r6) goto L4d
            int r6 = r2 + 1
            java.lang.Object[] r0 = r5.n
            r0 = r0[r2]
            int r0 = r5.j(r0)
            int r1 = r5.r
        L2c:
            int[] r3 = r5.q
            r4 = r3[r0]
            if (r4 != 0) goto L3a
            r3[r0] = r6
            int[] r1 = r5.p
            r1[r2] = r0
            r2 = r6
            goto L1c
        L3a:
            int r1 = r1 + (-1)
            if (r1 < 0) goto L48
            int r4 = r0 + (-1)
            if (r0 != 0) goto L46
            int r0 = r3.length
            int r0 = r0 + (-1)
            goto L2c
        L46:
            r0 = r4
            goto L2c
        L48:
            java.lang.String r5 = "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"
            defpackage.k21.n(r5)
        L4d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ca2.k(int):void");
    }

    @Override // java.util.Map
    public final Set keySet() {
        da2 da2Var = this.w;
        if (da2Var != null) {
            return da2Var;
        }
        da2 da2Var2 = new da2(this, 1);
        this.w = da2Var2;
        return da2Var2;
    }

    public final void l(int i) {
        int i2;
        int i3;
        int iJ;
        int[] iArr;
        Object[] objArr = this.n;
        objArr.getClass();
        objArr[i] = null;
        Object[] objArr2 = this.o;
        if (objArr2 != null) {
            objArr2[i] = null;
        }
        int length = this.p[i];
        loop0: while (true) {
            int i4 = length;
            int i5 = 0;
            do {
                length = length == 0 ? this.q.length - 1 : length - 1;
                int[] iArr2 = this.q;
                i2 = iArr2[length];
                i5++;
                if (i5 > this.r) {
                    iArr2[i4] = 0;
                    break loop0;
                } else if (i2 == 0) {
                    iArr2[i4] = 0;
                    break loop0;
                } else {
                    i3 = i2 - 1;
                    iJ = j(this.n[i3]) - length;
                    iArr = this.q;
                }
            } while ((iJ & (iArr.length - 1)) < i5);
            iArr[i4] = i2;
            this.p[i3] = i4;
        }
        this.p[i] = -1;
        this.v--;
        this.f44u++;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        d();
        int iA = a(obj);
        Object[] objArr = this.o;
        if (objArr == null) {
            int length = this.n.length;
            if (length < 0) {
                k21.f("capacity must be non-negative.");
                return null;
            }
            objArr = new Object[length];
            this.o = objArr;
        }
        if (iA >= 0) {
            objArr[iA] = obj2;
            return null;
        }
        int i = (-iA) - 1;
        Object obj3 = objArr[i];
        objArr[i] = obj2;
        return obj3;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        map.getClass();
        d();
        Set<Map.Entry> setEntrySet = map.entrySet();
        if (setEntrySet.isEmpty()) {
            return;
        }
        g(setEntrySet.size());
        for (Map.Entry entry : setEntrySet) {
            int iA = a(entry.getKey());
            Object[] objArr = this.o;
            if (objArr == null) {
                int length = this.n.length;
                if (length < 0) {
                    k21.f("capacity must be non-negative.");
                    return;
                } else {
                    objArr = new Object[length];
                    this.o = objArr;
                }
            }
            if (iA >= 0) {
                objArr[iA] = entry.getValue();
            } else {
                int i = (-iA) - 1;
                if (!nt1.g(entry.getValue(), objArr[i])) {
                    objArr[i] = entry.getValue();
                }
            }
        }
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        d();
        int iH = h(obj);
        if (iH < 0) {
            return null;
        }
        Object[] objArr = this.o;
        objArr.getClass();
        Object obj2 = objArr[iH];
        l(iH);
        return obj2;
    }

    @Override // java.util.Map
    public final int size() {
        return this.v;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.v * 3) + 2);
        sb.append("{");
        int i = 0;
        z92 z92Var = new z92(this, 0);
        while (z92Var.hasNext()) {
            if (i > 0) {
                sb.append(", ");
            }
            int i2 = z92Var.n;
            ca2 ca2Var = (ca2) z92Var.q;
            if (i2 >= ca2Var.s) {
                p61.v();
                return null;
            }
            z92Var.n = i2 + 1;
            z92Var.o = i2;
            Object obj = ca2Var.n[i2];
            if (obj == ca2Var) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append('=');
            Object[] objArr = ca2Var.o;
            objArr.getClass();
            Object obj2 = objArr[z92Var.o];
            if (obj2 == ca2Var) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            z92Var.e();
            i++;
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        ea2 ea2Var = this.x;
        if (ea2Var != null) {
            return ea2Var;
        }
        ea2 ea2Var2 = new ea2(0, this);
        this.x = ea2Var2;
        return ea2Var2;
    }

    public ca2() {
        this(8);
    }
}
