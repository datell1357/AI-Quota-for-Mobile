package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vp3 extends ik3 implements NavigableSet, SortedSet {
    public final up3 n;

    public vp3(up3 up3Var) {
        this.n = up3Var;
    }

    @Override // java.util.NavigableSet
    public final Object ceiling(Object obj) {
        return qj0.p(this.n.L(2, obj).firstEntry());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.n.clear();
    }

    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return this.n.comparator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.n.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        return this.n.containsAll(collection);
    }

    @Override // java.util.NavigableSet
    public final Iterator descendingIterator() {
        return ((vp3) descendingSet()).iterator();
    }

    @Override // java.util.NavigableSet
    public final NavigableSet descendingSet() {
        return new vp3(this.n.z());
    }

    @Override // java.util.SortedSet
    public final Object first() {
        jf2 jf2VarFirstEntry = this.n.firstEntry();
        if (jf2VarFirstEntry != null) {
            return jf2VarFirstEntry.b();
        }
        p61.v();
        return null;
    }

    @Override // java.util.NavigableSet
    public final Object floor(Object obj) {
        return qj0.p(this.n.j(2, obj).lastEntry());
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z) {
        return new vp3(this.n.j(z ? 2 : 1, obj));
    }

    @Override // java.util.NavigableSet
    public final Object higher(Object obj) {
        return qj0.p(this.n.L(1, obj).firstEntry());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.n.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public final Iterator iterator() {
        return new if2(this.n.entrySet().iterator());
    }

    @Override // java.util.SortedSet
    public final Object last() {
        jf2 jf2VarLastEntry = this.n.lastEntry();
        if (jf2VarLastEntry != null) {
            return jf2VarLastEntry.b();
        }
        p61.v();
        return null;
    }

    @Override // java.util.NavigableSet
    public final Object lower(Object obj) {
        return qj0.p(this.n.j(1, obj).lastEntry());
    }

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        return qj0.p(this.n.pollFirstEntry());
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        return qj0.p(this.n.pollLastEntry());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        return this.n.V(Api.BaseClientBuilder.API_PRIORITY_OTHER, obj) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.n.entrySet().size();
    }

    @Override // java.util.NavigableSet
    public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        return new vp3(this.n.B(z ? 2 : 1, z2 ? 2 : 1, obj, obj2));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z) {
        return new vp3(this.n.L(z ? 2 : 1, obj));
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        return this.n.j(1, obj).r();
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        return this.n.L(2, obj).r();
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return this.n.B(2, 1, obj, obj2).r();
    }
}
