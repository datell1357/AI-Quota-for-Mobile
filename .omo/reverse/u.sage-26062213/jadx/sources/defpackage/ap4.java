package defpackage;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ap4 extends tm4 implements RandomAccess {
    public static final Object[] q;
    public static final ap4 r;
    public Object[] o;
    public int p;

    static {
        Object[] objArr = new Object[0];
        q = objArr;
        r = new ap4(objArr, 0, false);
    }

    public ap4(Object[] objArr, int i, boolean z) {
        super(z);
        this.o = objArr;
        this.p = i;
    }

    @Override // defpackage.do4
    public final /* bridge */ /* synthetic */ do4 F(int i) {
        if (i >= this.p) {
            return new ap4(i == 0 ? q : Arrays.copyOf(this.o, i), this.p, true);
        }
        q73.d();
        return null;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        a();
        if (i < 0 || i > (i2 = this.p)) {
            mk0.h(e91.c(this.p, i, (byte) 13, "Index:", ", Size:"));
            return;
        }
        int i3 = i + 1;
        Object[] objArr = this.o;
        int length = objArr.length;
        if (i2 < length) {
            System.arraycopy(objArr, i, objArr, i3, i2 - i);
        } else {
            Object[] objArr2 = new Object[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.o, 0, objArr2, 0, i);
            System.arraycopy(this.o, i, objArr2, i3, this.p - i);
            this.o = objArr2;
        }
        this.o[i] = obj;
        this.p++;
        ((AbstractList) this).modCount++;
    }

    public final void c(int i) {
        if (i < 0 || i >= this.p) {
            mk0.h(e91.c(this.p, i, (byte) 13, "Index:", ", Size:"));
        }
    }

    @Override // defpackage.tm4, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        if (!(obj instanceof RandomAccess)) {
            return super.equals(obj);
        }
        List list = (List) obj;
        int i = this.p;
        if (i != list.size()) {
            return false;
        }
        if (!(obj instanceof ap4)) {
            for (int i2 = 0; i2 < i; i2++) {
                if (!this.o[i2].equals(list.get(i2))) {
                    return false;
                }
            }
            return true;
        }
        ap4 ap4Var = (ap4) obj;
        for (int i3 = 0; i3 < i; i3++) {
            if (!this.o[i3].equals(ap4Var.o[i3])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        c(i);
        return this.o[i];
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = this.p;
        int iHashCode = 1;
        for (int i2 = 0; i2 < i; i2++) {
            iHashCode = (iHashCode * 31) + this.o[i2].hashCode();
        }
        return iHashCode;
    }

    @Override // defpackage.tm4, java.util.AbstractList, java.util.List
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

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        a();
        int i = this.p;
        int length = this.o.length;
        if (i == length) {
            this.o = Arrays.copyOf(this.o, Math.max(((length * 3) / 2) + 1, 10));
        }
        Object[] objArr = this.o;
        int i2 = this.p;
        this.p = i2 + 1;
        objArr[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
