package defpackage;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ea2 extends AbstractCollection implements Collection, gx1 {
    public final /* synthetic */ int n;
    public final Object o;

    public /* synthetic */ ea2(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        switch (this.n) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean addAll(Collection collection) {
        switch (this.n) {
            case 0:
                collection.getClass();
                throw new UnsupportedOperationException();
            default:
                return super.addAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        switch (this.n) {
            case 0:
                ((ca2) this.o).clear();
                break;
            default:
                ((gu2) this.o).clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        switch (this.n) {
            case 0:
                return ((ca2) this.o).containsValue(obj);
            default:
                return ((gu2) this.o).containsValue(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        switch (this.n) {
            case 0:
                return ((ca2) this.o).isEmpty();
            default:
                return super.isEmpty();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                ca2 ca2Var = (ca2) obj;
                ca2Var.getClass();
                return new z92(ca2Var, 2);
            default:
                gu2 gu2Var = (gu2) obj;
                k24[] k24VarArr = new k24[8];
                for (int i2 = 0; i2 < 8; i2++) {
                    k24VarArr[i2] = new l24(2);
                }
                return new qu2(gu2Var, k24VarArr);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        switch (this.n) {
            case 0:
                ca2 ca2Var = (ca2) this.o;
                ca2Var.d();
                int i = ca2Var.i(obj);
                if (i < 0) {
                    return false;
                }
                ca2Var.l(i);
                return true;
            default:
                return super.remove(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection collection) {
        switch (this.n) {
            case 0:
                collection.getClass();
                ((ca2) this.o).d();
                break;
        }
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection collection) {
        switch (this.n) {
            case 0:
                collection.getClass();
                ((ca2) this.o).d();
                break;
        }
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        switch (this.n) {
            case 0:
                return ((ca2) this.o).v;
            default:
                return ((gu2) this.o).r;
        }
    }
}
