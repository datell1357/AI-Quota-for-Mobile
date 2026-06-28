package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z43 extends lp1 {
    public static final z43 r = new z43(0, new Object[0]);
    public final transient Object[] p;
    public final transient int q;

    public z43(int i, Object[] objArr) {
        this.p = objArr;
        this.q = i;
    }

    @Override // defpackage.lp1, defpackage.dp1
    public final int c(Object[] objArr) {
        Object[] objArr2 = this.p;
        int i = this.q;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return i;
    }

    @Override // defpackage.dp1
    public final Object[] d() {
        return this.p;
    }

    @Override // defpackage.dp1
    public final int e() {
        return this.q;
    }

    @Override // defpackage.dp1
    public final int f() {
        return 0;
    }

    @Override // defpackage.dp1
    public final boolean g() {
        return false;
    }

    @Override // java.util.List
    public final Object get(int i) {
        n44.V(i, this.q);
        Object obj = this.p[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.q;
    }
}
