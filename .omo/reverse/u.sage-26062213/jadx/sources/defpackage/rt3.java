package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.function.Predicate;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rt3 implements Collection, fx1 {
    public final /* synthetic */ int n;
    public final Object o;

    public rt3() {
        this.n = 0;
        this.o = fr2.a();
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        switch (this.n) {
            case 0:
                return ((eg2) this.o).a(obj);
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        switch (this.n) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Collection
    public final void clear() {
        switch (this.n) {
            case 0:
                ((eg2) this.o).b();
                return;
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        switch (this.n) {
            case 0:
                return ((eg2) this.o).c(obj);
            default:
                return ((kg2) this.o).d(obj);
        }
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    if (!((eg2) obj).c(it.next())) {
                        break;
                    }
                }
                break;
            default:
                collection.getClass();
                Collection collection2 = collection;
                if (!collection2.isEmpty()) {
                    Iterator it2 = collection2.iterator();
                    while (it2.hasNext()) {
                        if (!((kg2) obj).d(it2.next())) {
                            break;
                        }
                    }
                }
                break;
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        switch (this.n) {
            case 0:
                return ((eg2) this.o).g == 0;
            default:
                return ((kg2) this.o).i();
        }
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.n) {
            case 0:
                eg2 eg2Var = (eg2) this.o;
                eg2Var.getClass();
                return new ug1(new gg2(eg2Var));
            default:
                return se0.y(new q11(this, null, 3));
        }
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        switch (this.n) {
            case 0:
                return ((eg2) this.o).h(obj);
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        switch (this.n) {
            case 0:
                return ((eg2) this.o).h(collection);
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Collection
    public final boolean removeIf(Predicate predicate) {
        switch (this.n) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        switch (this.n) {
            case 0:
                return ((eg2) this.o).j(collection);
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Collection
    public final int size() {
        switch (this.n) {
            case 0:
                return ((eg2) this.o).g;
            default:
                return ((kg2) this.o).e;
        }
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        switch (this.n) {
            case 0:
                break;
            default:
                objArr.getClass();
                break;
        }
        return k30.E(this, objArr);
    }

    public rt3(kg2 kg2Var) {
        this.n = 1;
        kg2Var.getClass();
        this.o = kg2Var;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        switch (this.n) {
        }
        return k30.D(this);
    }
}
