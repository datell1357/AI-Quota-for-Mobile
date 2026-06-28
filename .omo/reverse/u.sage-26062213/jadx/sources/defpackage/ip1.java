package defpackage;

import java.util.Iterator;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ip1 extends lp1 {
    public final transient lp1 p;

    public ip1(lp1 lp1Var) {
        this.p = lp1Var;
    }

    @Override // defpackage.lp1, defpackage.dp1, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.p.contains(obj);
    }

    @Override // defpackage.dp1
    public final boolean g() {
        return this.p.g();
    }

    @Override // java.util.List
    public final Object get(int i) {
        lp1 lp1Var = this.p;
        n44.V(i, lp1Var.size());
        return lp1Var.get((lp1Var.size() - 1) - i);
    }

    @Override // defpackage.lp1, java.util.List
    public final int indexOf(Object obj) {
        int iLastIndexOf = this.p.lastIndexOf(obj);
        if (iLastIndexOf >= 0) {
            return (r0.size() - 1) - iLastIndexOf;
        }
        return -1;
    }

    @Override // defpackage.lp1, defpackage.dp1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // defpackage.lp1, java.util.List
    public final int lastIndexOf(Object obj) {
        int iIndexOf = this.p.indexOf(obj);
        if (iIndexOf >= 0) {
            return (r0.size() - 1) - iIndexOf;
        }
        return -1;
    }

    @Override // defpackage.lp1, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // defpackage.lp1
    public final lp1 n() {
        return this.p;
    }

    @Override // defpackage.lp1, java.util.List
    /* JADX INFO: renamed from: o */
    public final lp1 subList(int i, int i2) {
        lp1 lp1Var = this.p;
        n44.Z(i, i2, lp1Var.size());
        return lp1Var.subList(lp1Var.size() - i2, lp1Var.size() - i).n();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.p.size();
    }

    @Override // defpackage.lp1, java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
        return listIterator(i);
    }
}
