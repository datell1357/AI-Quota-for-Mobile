package defpackage;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b15 extends yx4 implements RandomAccess {
    public static final b15 q = new b15(new Object[0], 0, false);
    public Object[] o;
    public int p;

    public b15(Object[] objArr, int i, boolean z) {
        super(z);
        this.o = objArr;
        this.p = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        a();
        if (i < 0 || i > (i2 = this.p)) {
            mk0.h(di0.p(i, this.p, "Index:", ", Size:"));
            return;
        }
        Object[] objArr = this.o;
        if (i2 < objArr.length) {
            System.arraycopy(objArr, i, objArr, i + 1, i2 - i);
        } else {
            Object[] objArr2 = new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(objArr, 0, objArr2, 0, i);
            System.arraycopy(this.o, i, objArr2, i + 1, this.p - i);
            this.o = objArr2;
        }
        this.o[i] = obj;
        this.p++;
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.vy4
    public final /* bridge */ /* synthetic */ vy4 b(int i) {
        if (i >= this.p) {
            return new b15(Arrays.copyOf(this.o, i), this.p, true);
        }
        q73.d();
        return null;
    }

    public final void c(int i) {
        if (i < 0 || i >= this.p) {
            mk0.h(di0.p(i, this.p, "Index:", ", Size:"));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        c(i);
        return this.o[i];
    }

    @Override // defpackage.yx4, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        a();
        c(i);
        Object[] objArr = this.o;
        Object obj = objArr[i];
        if (i < this.p - 1) {
            System.arraycopy(objArr, i + 1, objArr, i, (r2 - i) - 1);
        }
        this.p--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        a();
        c(i);
        Object[] objArr = this.o;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.p;
    }

    @Override // defpackage.yx4, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        a();
        int i = this.p;
        Object[] objArr = this.o;
        if (i == objArr.length) {
            this.o = Arrays.copyOf(objArr, ((i * 3) / 2) + 1);
        }
        Object[] objArr2 = this.o;
        int i2 = this.p;
        this.p = i2 + 1;
        objArr2[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
