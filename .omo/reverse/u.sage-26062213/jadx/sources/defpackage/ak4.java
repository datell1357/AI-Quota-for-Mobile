package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ak4 extends zj4 {
    public static final ak4 r = new ak4(0, new Object[0]);
    public final transient Object[] p;
    public final transient int q;

    public ak4(int i, Object[] objArr) {
        this.p = objArr;
        this.q = i;
    }

    @Override // defpackage.wj4
    public final Object[] a() {
        return this.p;
    }

    @Override // defpackage.wj4
    public final int c() {
        return 0;
    }

    @Override // defpackage.wj4
    public final int d() {
        return this.q;
    }

    @Override // defpackage.wj4
    public final boolean e() {
        return false;
    }

    @Override // defpackage.zj4, defpackage.wj4
    public final int f(Object[] objArr) {
        Object[] objArr2 = this.p;
        int i = this.q;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        uj4.a(i, this.q);
        Object obj = this.p[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.q;
    }
}
