package defpackage;

import java.net.URI;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q33 extends AbstractList {
    public final HashSet n = new HashSet();
    public final ArrayList o = new ArrayList();

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        URI uri = (URI) obj;
        this.o.add(i, uri);
        this.n.add(uri);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.n.contains(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        return (URI) this.o.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        ArrayList arrayList = this.o;
        URI uri = (URI) arrayList.remove(i);
        HashSet hashSet = this.n;
        hashSet.remove(uri);
        if (arrayList.size() != hashSet.size()) {
            hashSet.addAll(arrayList);
        }
        return uri;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        URI uri = (URI) obj;
        ArrayList arrayList = this.o;
        URI uri2 = (URI) arrayList.set(i, uri);
        HashSet hashSet = this.n;
        hashSet.remove(uri2);
        hashSet.add(uri);
        if (arrayList.size() != hashSet.size()) {
            hashSet.addAll(arrayList);
        }
        return uri2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.o.size();
    }
}
