package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class da2 extends q1 {
    public final /* synthetic */ int n;
    public final ca2 o;

    public /* synthetic */ da2(ca2 ca2Var, int i) {
        this.n = i;
        this.o = ca2Var;
    }

    @Override // defpackage.q1
    public final int a() {
        switch (this.n) {
        }
        return this.o.v;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        switch (this.n) {
            case 0:
                ((Map.Entry) obj).getClass();
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        int i = this.n;
        collection.getClass();
        switch (i) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        switch (this.n) {
            case 0:
                this.o.clear();
                break;
            default:
                this.o.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int i = this.n;
        ca2 ca2Var = this.o;
        switch (i) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                ca2Var.getClass();
                int iH = ca2Var.h(entry.getKey());
                if (iH < 0) {
                    return false;
                }
                Object[] objArr = ca2Var.o;
                objArr.getClass();
                return nt1.g(objArr[iH], entry.getValue());
            default:
                return ca2Var.containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection collection) {
        switch (this.n) {
            case 0:
                collection.getClass();
                return this.o.f(collection);
            default:
                return super.containsAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        switch (this.n) {
        }
        return this.o.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        int i = this.n;
        ca2 ca2Var = this.o;
        switch (i) {
            case 0:
                ca2Var.getClass();
                return new z92(ca2Var, 0);
            default:
                ca2Var.getClass();
                return new z92(ca2Var, 1);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int i = this.n;
        ca2 ca2Var = this.o;
        switch (i) {
            case 0:
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    ca2Var.getClass();
                    ca2Var.d();
                    int iH = ca2Var.h(entry.getKey());
                    if (iH >= 0) {
                        Object[] objArr = ca2Var.o;
                        objArr.getClass();
                        if (nt1.g(objArr[iH], entry.getValue())) {
                            ca2Var.l(iH);
                        }
                    }
                }
                break;
            default:
                ca2Var.d();
                int iH2 = ca2Var.h(obj);
                if (iH2 >= 0) {
                    ca2Var.l(iH2);
                }
                break;
        }
        return true;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        int i = this.n;
        ca2 ca2Var = this.o;
        collection.getClass();
        switch (i) {
            case 0:
                ca2Var.d();
                break;
            default:
                ca2Var.d();
                break;
        }
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        int i = this.n;
        ca2 ca2Var = this.o;
        collection.getClass();
        switch (i) {
            case 0:
                ca2Var.d();
                break;
            default:
                ca2Var.d();
                break;
        }
        return super.retainAll(collection);
    }
}
