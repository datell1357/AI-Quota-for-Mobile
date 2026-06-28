package defpackage;

import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r83 implements ListIterator, fx1 {
    public final /* synthetic */ int n = 0;
    public final Object o;
    public final /* synthetic */ Object p;

    public r83(qa2 qa2Var, int i) {
        this.p = qa2Var;
        List list = (List) qa2Var.o;
        if (i >= 0 && i <= qa2Var.a()) {
            this.o = list.listIterator(qa2Var.a() - i);
            return;
        }
        StringBuilder sbU = xw1.u("Position index ", i, " must be in range [");
        sbU.append(new ms1(0, qa2Var.a(), 1));
        sbU.append("].");
        throw new IndexOutOfBoundsException(sbU.toString());
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        switch (this.n) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new IllegalStateException("Cannot modify a state list through an iterator");
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                return ((ListIterator) obj).hasPrevious();
            default:
                return ((u33) obj).n < ((jt3) this.p).q - 1;
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                return ((ListIterator) obj).hasNext();
            default:
                return ((u33) obj).n >= 0;
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                return ((ListIterator) obj).previous();
            default:
                u33 u33Var = (u33) obj;
                int i2 = u33Var.n + 1;
                jt3 jt3Var = (jt3) this.p;
                nt1.e(i2, jt3Var.q);
                u33Var.n = i2;
                return jt3Var.get(i2);
        }
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                qa2 qa2Var = (qa2) this.p;
                return (qa2Var.size() - 1) - ((ListIterator) obj).previousIndex();
            default:
                return ((u33) obj).n + 1;
        }
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                return ((ListIterator) obj).next();
            default:
                u33 u33Var = (u33) obj;
                int i2 = u33Var.n;
                jt3 jt3Var = (jt3) this.p;
                nt1.e(i2, jt3Var.q);
                u33Var.n = i2 - 1;
                return jt3Var.get(i2);
        }
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                qa2 qa2Var = (qa2) this.p;
                return (qa2Var.size() - 1) - ((ListIterator) obj).nextIndex();
            default:
                return ((u33) obj).n;
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        switch (this.n) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new IllegalStateException("Cannot modify a state list through an iterator");
        }
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        switch (this.n) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new IllegalStateException("Cannot modify a state list through an iterator");
        }
    }

    public r83(u33 u33Var, jt3 jt3Var) {
        this.o = u33Var;
        this.p = jt3Var;
    }
}
