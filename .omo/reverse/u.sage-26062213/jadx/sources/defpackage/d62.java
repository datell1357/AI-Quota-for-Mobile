package defpackage;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d62 extends AbstractSet {
    public final /* synthetic */ v62 n;
    public final /* synthetic */ int o;
    public final /* synthetic */ v62 p;

    public d62(v62 v62Var, int i) {
        this.o = i;
        this.p = v62Var;
        this.n = v62Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.n.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Map.Entry entry;
        Object key;
        Object obj2;
        int i = this.o;
        v62 v62Var = this.p;
        switch (i) {
            case 0:
                return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = v62Var.get(key)) != null && v62Var.s.n(entry.getValue(), obj2);
            default:
                return v62Var.containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.n.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        int i = this.o;
        v62 v62Var = this.p;
        switch (i) {
            case 0:
                return new c62(v62Var, 0);
            default:
                return new c62(v62Var, 1);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Map.Entry entry;
        Object key;
        int i = this.o;
        v62 v62Var = this.p;
        switch (i) {
            case 0:
                if ((obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && v62Var.remove(key, entry.getValue())) {
                }
                break;
            default:
                if (v62Var.remove(obj) != null) {
                }
                break;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.n.size();
    }
}
