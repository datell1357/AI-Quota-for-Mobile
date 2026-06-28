package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d53 extends lp1 {
    public final transient Object[] p;
    public final transient int q;
    public final transient int r;

    public d53(Object[] objArr, int i, int i2) {
        this.p = objArr;
        this.q = i;
        this.r = i2;
    }

    @Override // defpackage.dp1
    public final boolean g() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        n44.V(i, this.r);
        Object obj = this.p[(i * 2) + this.q];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.r;
    }
}
