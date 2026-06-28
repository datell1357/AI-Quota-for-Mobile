package defpackage;

import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yl4 extends AbstractMap {
    public static final lh0 s = new lh0(21);
    public final Object[] n;
    public final int[] o;
    public final xl4 p;
    public Integer q;
    public String r;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractMap, yl4] */
    /* JADX WARN: Type inference failed for: r0v1, types: [yl4] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v8 */
    public yl4(yl4 yl4Var, yl4 yl4Var2) {
        int i;
        Object obj;
        Object[] objArr;
        ?? abstractMap = new AbstractMap();
        abstractMap.p = new xl4(abstractMap, -1);
        abstractMap.q = null;
        abstractMap.r = null;
        int size = yl4Var2.size() + yl4Var.size();
        int i2 = yl4Var.o[yl4Var.size()] + yl4Var2.o[yl4Var2.size()];
        int i3 = size + 1;
        Object[] objArr2 = new Object[i2];
        int[] iArr = new int[i3];
        int i4 = 0;
        iArr[0] = size;
        Map.Entry entryD = yl4Var.d(0);
        Map.Entry entryD2 = yl4Var2.d(0);
        int i5 = 0;
        int i6 = 0;
        int iA = size;
        int i7 = 0;
        while (true) {
            if (entryD == null && entryD2 == null) {
                break;
            }
            int i8 = i7 + 1;
            if (entryD != null) {
                if (entryD2 != null) {
                    int iCompareTo = ((String) entryD.getKey()).compareTo((String) entryD2.getKey());
                    if (iCompareTo == 0) {
                        int i9 = i5 + 1;
                        int i10 = i6 + 1;
                        objArr2[i7] = new AbstractMap.SimpleImmutableEntry((String) entryD.getKey(), new xl4(abstractMap, i7));
                        xl4 xl4Var = (xl4) entryD.getValue();
                        xl4 xl4Var2 = (xl4) entryD2.getValue();
                        int i11 = 0;
                        int i12 = 0;
                        abstractMap = abstractMap;
                        while (true) {
                            int iC = xl4Var.c();
                            yl4 yl4Var3 = xl4Var.o;
                            if (i11 >= iC - xl4Var.a() && i12 >= xl4Var2.c() - xl4Var2.a()) {
                                break;
                            }
                            int iCompare = i11 == xl4Var.c() - xl4Var.a() ? 1 : i12 == xl4Var2.c() - xl4Var2.a() ? -1 : 0;
                            if (iCompare == 0) {
                                lh0 lh0Var = zl4.b;
                                i = i11;
                                iCompare = zl4.b.compare(yl4Var3.n[xl4Var.a() + i11], xl4Var2.o.n[xl4Var2.a() + i12]);
                            } else {
                                i = i11;
                            }
                            if (iCompare < 0) {
                                i11 = i + 1;
                                obj = yl4Var3.n[xl4Var.a() + i];
                            } else {
                                int i13 = i12 + 1;
                                Object obj2 = xl4Var2.o.n[xl4Var2.a() + i12];
                                if (iCompare == 0) {
                                    i12 = i13;
                                    obj = obj2;
                                    i11 = i + 1;
                                } else {
                                    i12 = i13;
                                    obj = obj2;
                                    i11 = i;
                                }
                            }
                            objArr2[iA] = obj;
                            abstractMap = this;
                            iA++;
                        }
                        iArr[i8] = iA;
                        entryD = yl4Var.d(i10);
                        entryD2 = yl4Var2.d(i9);
                        i6 = i10;
                        i5 = i9;
                        i7 = i8;
                        i4 = 0;
                    } else {
                        if (iCompareTo < 0) {
                        }
                        i7 = i8;
                        i4 = 0;
                        abstractMap = this;
                    }
                }
                i6++;
                iA = a(entryD, i7, iA, objArr2, iArr);
                entryD = yl4Var.d(i6);
                i7 = i8;
                i4 = 0;
                abstractMap = this;
            }
            Map.Entry entry = entryD;
            i5++;
            int iA2 = a(entryD2, i7, iA, objArr2, iArr);
            entryD2 = yl4Var2.d(i5);
            iA = iA2;
            entryD = entry;
            i7 = i8;
            i4 = 0;
            abstractMap = this;
        }
        int i14 = iArr[i4];
        int i15 = i14 - i7;
        if (i15 != 0) {
            for (int i16 = i4; i16 <= i7; i16++) {
                iArr[i16] = iArr[i16] - i15;
            }
            int i17 = iArr[i7];
            int i18 = i17 - i7;
            if (b(i2, i17)) {
                objArr = new Object[i17];
                System.arraycopy(objArr2, i4, objArr, i4, i7);
            } else {
                objArr = objArr2;
            }
            System.arraycopy(objArr2, i14, objArr, i7, i18);
            objArr2 = objArr;
        }
        abstractMap.n = objArr2;
        int i19 = iArr[i4] + 1;
        abstractMap.o = b(i3, i19) ? Arrays.copyOf(iArr, i19) : iArr;
    }

    public static boolean b(int i, int i2) {
        return i > 16 && i * 9 > i2 * 10;
    }

    public final int a(Map.Entry entry, int i, int i2, Object[] objArr, int[] iArr) {
        xl4 xl4Var = (xl4) entry.getValue();
        int iC = xl4Var.c() - xl4Var.a();
        System.arraycopy(xl4Var.o.n, xl4Var.a(), objArr, i2, iC);
        objArr[i] = new AbstractMap.SimpleImmutableEntry((String) entry.getKey(), new xl4(this, i));
        int i3 = i2 + iC;
        iArr[i + 1] = i3;
        return i3;
    }

    public final Map.Entry d(int i) {
        if (i < this.o[0]) {
            return (Map.Entry) this.n[i];
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        return this.p;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        if (this.q == null) {
            this.q = Integer.valueOf(super.hashCode());
        }
        return this.q.intValue();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        if (this.r == null) {
            this.r = super.toString();
        }
        return this.r;
    }

    public yl4() {
        List list = Collections.EMPTY_LIST;
        this.p = new xl4(this, -1);
        this.q = null;
        this.r = null;
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            int size = list.size();
            Object[] objArr = new Object[size];
            Iterator it2 = list.iterator();
            if (!it2.hasNext()) {
                int[] iArr = {0};
                this.n = b(size, 0) ? Arrays.copyOf(objArr, 0) : objArr;
                this.o = iArr;
                return;
            } else {
                it2.next().getClass();
                mk0.b();
                throw null;
            }
        }
        it.next().getClass();
        mk0.b();
        throw null;
    }
}
