package defpackage;

import java.util.Iterator;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jp1 extends lp1 {
    public final transient int p;
    public final transient int q;
    public final /* synthetic */ lp1 r;

    public jp1(lp1 lp1Var, int i, int i2) {
        this.r = lp1Var;
        this.p = i;
        this.q = i2;
    }

    @Override // defpackage.dp1
    public final Object[] d() {
        return this.r.d();
    }

    @Override // defpackage.dp1
    public final int e() {
        return this.r.f() + this.p + this.q;
    }

    @Override // defpackage.dp1
    public final int f() {
        return this.r.f() + this.p;
    }

    @Override // defpackage.dp1
    public final boolean g() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        n44.V(i, this.q);
        return this.r.get(i + this.p);
    }

    @Override // defpackage.lp1, defpackage.dp1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // defpackage.lp1, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // defpackage.lp1, java.util.List
    /* JADX INFO: renamed from: o */
    public final lp1 subList(int i, int i2) {
        n44.Z(i, i2, this.q);
        int i3 = this.p;
        return this.r.subList(i + i3, i2 + i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.q;
    }

    @Override // defpackage.lp1, java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
        return listIterator(i);
    }
}
