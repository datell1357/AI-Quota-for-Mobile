package defpackage;

import java.util.AbstractMap;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a53 extends lp1 {
    public final /* synthetic */ b53 p;

    public a53(b53 b53Var) {
        this.p = b53Var;
    }

    @Override // defpackage.dp1
    public final boolean g() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        b53 b53Var = this.p;
        n44.V(i, b53Var.s);
        Object[] objArr = b53Var.r;
        int i2 = i * 2;
        Object obj = objArr[i2];
        Objects.requireNonNull(obj);
        Object obj2 = objArr[i2 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.p.s;
    }
}
