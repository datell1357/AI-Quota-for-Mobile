package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pw4 extends wv4 {
    public static final Object[] s;
    public final transient Object[] q;
    public final transient Object[] r;

    static {
        Object[] objArr = new Object[0];
        s = objArr;
        new pw4(objArr, objArr);
    }

    public pw4(Object[] objArr, Object[] objArr2) {
        this.q = objArr;
        this.r = objArr2;
    }

    @Override // defpackage.bv4
    public final int a(Object[] objArr) {
        System.arraycopy(this.q, 0, objArr, 0, 0);
        return 0;
    }

    @Override // defpackage.bv4
    public final int c() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Object obj2;
        if (obj != null) {
            Object[] objArr = this.r;
            if (objArr.length != 0) {
                Integer.rotateLeft((int) (((long) obj.hashCode()) * (-862048943)), 15);
                do {
                    obj2 = objArr[0];
                    if (obj2 == null) {
                    }
                } while (!obj2.equals(obj));
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.bv4
    public final int d() {
        return 0;
    }

    @Override // defpackage.bv4
    public final Object[] e() {
        return this.q;
    }

    @Override // defpackage.wv4
    public final sv4 g() {
        return sv4.g(0, this.q);
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return f().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 0;
    }
}
