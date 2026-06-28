package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sn4 extends tm4 implements RandomAccess, yn4, yo4 {
    public static final int[] q;
    public static final sn4 r;
    public int[] o;
    public int p;

    static {
        int[] iArr = new int[0];
        q = iArr;
        r = new sn4(iArr, 0, false);
    }

    public sn4(int[] iArr, int i, boolean z) {
        super(z);
        this.o = iArr;
        this.p = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        int iIntValue = ((Integer) obj).intValue();
        a();
        if (i < 0 || i > (i2 = this.p)) {
            mk0.h(e91.c(this.p, i, (byte) 13, "Index:", ", Size:"));
            return;
        }
        int i3 = i + 1;
        int[] iArr = this.o;
        int length = iArr.length;
        if (i2 < length) {
            System.arraycopy(iArr, i, iArr, i3, i2 - i);
        } else {
            int[] iArr2 = new int[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.o, 0, iArr2, 0, i);
            System.arraycopy(this.o, i, iArr2, i3, this.p - i);
            this.o = iArr2;
        }
        this.o[i] = iIntValue;
        this.p++;
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.tm4, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        a();
        collection.getClass();
        if (!(collection instanceof sn4)) {
            return super.addAll(collection);
        }
        sn4 sn4Var = (sn4) collection;
        int i = sn4Var.p;
        if (i == 0) {
            return false;
        }
        int i2 = this.p;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.o;
        if (i3 > iArr.length) {
            this.o = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(sn4Var.o, 0, this.o, this.p, sn4Var.p);
        this.p = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // defpackage.do4
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final sn4 F(int i) {
        if (i >= this.p) {
            return new sn4(i == 0 ? q : Arrays.copyOf(this.o, i), this.p, true);
        }
        q73.d();
        return null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final int d(int i) {
        f(i);
        return this.o[i];
    }

    public final void e(int i) {
        a();
        int i2 = this.p;
        int length = this.o.length;
        if (i2 == length) {
            int[] iArr = new int[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.o, 0, iArr, 0, this.p);
            this.o = iArr;
        }
        int[] iArr2 = this.o;
        int i3 = this.p;
        this.p = i3 + 1;
        iArr2[i3] = i;
    }

    @Override // defpackage.tm4, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sn4)) {
            return super.equals(obj);
        }
        sn4 sn4Var = (sn4) obj;
        if (this.p != sn4Var.p) {
            return false;
        }
        int[] iArr = sn4Var.o;
        for (int i = 0; i < this.p; i++) {
            if (this.o[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    public final void f(int i) {
        if (i < 0 || i >= this.p) {
            mk0.h(e91.c(this.p, i, (byte) 13, "Index:", ", Size:"));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        f(i);
        return Integer.valueOf(this.o[i]);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.p; i2++) {
            i = (i * 31) + this.o[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i = this.p;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.o[i2] == iIntValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // defpackage.tm4, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        a();
        f(i);
        int[] iArr = this.o;
        int i2 = iArr[i];
        if (i < this.p - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (r2 - i) - 1);
        }
        this.p--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        a();
        if (i2 < i) {
            mk0.h("toIndex < fromIndex");
            return;
        }
        int[] iArr = this.o;
        System.arraycopy(iArr, i2, iArr, i, this.p - i2);
        this.p -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        a();
        f(i);
        int[] iArr = this.o;
        int i2 = iArr[i];
        iArr[i] = iIntValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.p;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        e(((Integer) obj).intValue());
        return true;
    }
}
