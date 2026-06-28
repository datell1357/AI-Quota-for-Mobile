package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jo4 extends tm4 implements RandomAccess, co4, yo4 {
    public static final long[] q;
    public static final jo4 r;
    public long[] o;
    public int p;

    static {
        long[] jArr = new long[0];
        q = jArr;
        r = new jo4(jArr, 0, false);
    }

    public jo4(long[] jArr, int i, boolean z) {
        super(z);
        this.o = jArr;
        this.p = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        long jLongValue = ((Long) obj).longValue();
        a();
        if (i < 0 || i > (i2 = this.p)) {
            mk0.h(e91.c(this.p, i, (byte) 13, "Index:", ", Size:"));
            return;
        }
        int i3 = i + 1;
        long[] jArr = this.o;
        int length = jArr.length;
        if (i2 < length) {
            System.arraycopy(jArr, i, jArr, i3, i2 - i);
        } else {
            long[] jArr2 = new long[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.o, 0, jArr2, 0, i);
            System.arraycopy(this.o, i, jArr2, i3, this.p - i);
            this.o = jArr2;
        }
        this.o[i] = jLongValue;
        this.p++;
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.tm4, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        a();
        collection.getClass();
        if (!(collection instanceof jo4)) {
            return super.addAll(collection);
        }
        jo4 jo4Var = (jo4) collection;
        int i = jo4Var.p;
        if (i == 0) {
            return false;
        }
        int i2 = this.p;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.o;
        if (i3 > jArr.length) {
            this.o = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(jo4Var.o, 0, this.o, this.p, jo4Var.p);
        this.p = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    public final long c(int i) {
        f(i);
        return this.o[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // defpackage.do4
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final jo4 F(int i) {
        if (i >= this.p) {
            return new jo4(i == 0 ? q : Arrays.copyOf(this.o, i), this.p, true);
        }
        q73.d();
        return null;
    }

    public final void e(long j) {
        a();
        int i = this.p;
        int length = this.o.length;
        if (i == length) {
            long[] jArr = new long[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.o, 0, jArr, 0, this.p);
            this.o = jArr;
        }
        long[] jArr2 = this.o;
        int i2 = this.p;
        this.p = i2 + 1;
        jArr2[i2] = j;
    }

    @Override // defpackage.tm4, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jo4)) {
            return super.equals(obj);
        }
        jo4 jo4Var = (jo4) obj;
        if (this.p != jo4Var.p) {
            return false;
        }
        long[] jArr = jo4Var.o;
        for (int i = 0; i < this.p; i++) {
            if (this.o[i] != jArr[i]) {
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
        return Long.valueOf(this.o[i]);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.p; i2++) {
            long j = this.o[i2];
            byte[] bArr = bo4.a;
            i = (i * 31) + ((int) (j ^ (j >>> 32)));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int i = this.p;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.o[i2] == jLongValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // defpackage.tm4, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        a();
        f(i);
        long[] jArr = this.o;
        long j = jArr[i];
        if (i < this.p - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (r3 - i) - 1);
        }
        this.p--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        a();
        if (i2 < i) {
            mk0.h("toIndex < fromIndex");
            return;
        }
        long[] jArr = this.o;
        System.arraycopy(jArr, i2, jArr, i, this.p - i2);
        this.p -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        a();
        f(i);
        long[] jArr = this.o;
        long j = jArr[i];
        jArr[i] = jLongValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.p;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        e(((Long) obj).longValue());
        return true;
    }
}
