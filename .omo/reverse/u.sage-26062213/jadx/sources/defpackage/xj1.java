package defpackage;

import java.util.AbstractList;
import java.util.ConcurrentModificationException;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xj1 implements ListIterator, fx1 {
    public final /* synthetic */ int n;
    public int o;
    public int p;
    public int q;
    public final Object r;

    public xj1(gp3 gp3Var, int i) {
        this.n = 3;
        this.r = gp3Var;
        this.o = i - 1;
        this.p = -1;
        this.q = nt1.E(gp3Var);
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        int i = this.n;
        Object obj2 = this.r;
        switch (i) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                b();
                z32 z32Var = (z32) obj2;
                int i2 = this.o;
                this.o = i2 + 1;
                z32Var.add(i2, obj);
                this.p = -1;
                this.q = ((AbstractList) z32Var).modCount;
                return;
            case 2:
                d();
                a42 a42Var = (a42) obj2;
                int i3 = this.o;
                this.o = i3 + 1;
                a42Var.add(i3, obj);
                this.p = -1;
                this.q = ((AbstractList) a42Var).modCount;
                return;
            default:
                e();
                gp3 gp3Var = (gp3) obj2;
                gp3Var.add(this.o + 1, obj);
                this.p = -1;
                this.o++;
                this.q = nt1.E(gp3Var);
                return;
        }
    }

    public void b() {
        if (((AbstractList) ((z32) this.r).r).modCount != this.q) {
            throw new ConcurrentModificationException();
        }
    }

    public void d() {
        if (((AbstractList) ((a42) this.r)).modCount != this.q) {
            throw new ConcurrentModificationException();
        }
    }

    public void e() {
        if (nt1.E((gp3) this.r) != this.q) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        int i = this.n;
        Object obj = this.r;
        switch (i) {
            case 0:
                if (this.o < this.q) {
                }
                break;
            case 1:
                if (this.o < ((z32) obj).p) {
                }
                break;
            case 2:
                if (this.o < ((a42) obj).o) {
                }
                break;
            default:
                if (this.o < ((gp3) obj).size() - 1) {
                }
                break;
        }
        return true;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        switch (this.n) {
            case 0:
                if (this.o > this.p) {
                }
                break;
            case 1:
                if (this.o > 0) {
                }
                break;
            case 2:
                if (this.o > 0) {
                }
                break;
            default:
                if (this.o >= 0) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        int i = this.n;
        Object obj = this.r;
        switch (i) {
            case 0:
                dg2 dg2Var = ((zj1) obj).n;
                int i2 = this.o;
                this.o = i2 + 1;
                Object objF = dg2Var.f(i2);
                objF.getClass();
                return (md2) objF;
            case 1:
                b();
                int i3 = this.o;
                z32 z32Var = (z32) obj;
                if (i3 >= z32Var.p) {
                    p61.v();
                    return null;
                }
                this.o = i3 + 1;
                this.p = i3;
                return z32Var.n[z32Var.o + i3];
            case 2:
                d();
                int i4 = this.o;
                a42 a42Var = (a42) obj;
                if (i4 >= a42Var.o) {
                    p61.v();
                    return null;
                }
                this.o = i4 + 1;
                this.p = i4;
                return a42Var.n[i4];
            default:
                e();
                int i5 = this.o + 1;
                this.p = i5;
                gp3 gp3Var = (gp3) obj;
                nt1.e(i5, gp3Var.size());
                Object obj2 = gp3Var.get(i5);
                this.o = i5;
                return obj2;
        }
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        switch (this.n) {
            case 0:
                return this.o - this.p;
            case 1:
                return this.o;
            case 2:
                return this.o;
            default:
                return this.o + 1;
        }
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        int i = this.n;
        Object obj = this.r;
        switch (i) {
            case 0:
                dg2 dg2Var = ((zj1) obj).n;
                int i2 = this.o - 1;
                this.o = i2;
                Object objF = dg2Var.f(i2);
                objF.getClass();
                return (md2) objF;
            case 1:
                b();
                int i3 = this.o;
                if (i3 <= 0) {
                    p61.v();
                    return null;
                }
                int i4 = i3 - 1;
                this.o = i4;
                this.p = i4;
                z32 z32Var = (z32) obj;
                return z32Var.n[z32Var.o + i4];
            case 2:
                d();
                int i5 = this.o;
                if (i5 <= 0) {
                    p61.v();
                    return null;
                }
                int i6 = i5 - 1;
                this.o = i6;
                this.p = i6;
                return ((a42) obj).n[i6];
            default:
                e();
                gp3 gp3Var = (gp3) obj;
                nt1.e(this.o, gp3Var.size());
                int i7 = this.o;
                this.p = i7;
                this.o--;
                return gp3Var.get(i7);
        }
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        int i;
        switch (this.n) {
            case 0:
                return (this.o - this.p) - 1;
            case 1:
                i = this.o;
                break;
            case 2:
                i = this.o;
                break;
            default:
                return this.o;
        }
        return i - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        int i = this.n;
        Object obj = this.r;
        switch (i) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                z32 z32Var = (z32) obj;
                b();
                int i2 = this.p;
                if (i2 == -1) {
                    k21.n("Call next() or previous() before removing element from the iterator.");
                    return;
                }
                z32Var.d(i2);
                this.o = this.p;
                this.p = -1;
                this.q = ((AbstractList) z32Var).modCount;
                return;
            case 2:
                a42 a42Var = (a42) obj;
                d();
                int i3 = this.p;
                if (i3 == -1) {
                    k21.n("Call next() or previous() before removing element from the iterator.");
                    return;
                }
                a42Var.d(i3);
                this.o = this.p;
                this.p = -1;
                this.q = ((AbstractList) a42Var).modCount;
                return;
            default:
                e();
                gp3 gp3Var = (gp3) obj;
                gp3Var.remove(this.p);
                this.o--;
                this.p = -1;
                this.q = nt1.E(gp3Var);
                return;
        }
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        int i = this.n;
        Object obj2 = this.r;
        switch (i) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                b();
                int i2 = this.p;
                if (i2 != -1) {
                    ((z32) obj2).set(i2, obj);
                    return;
                } else {
                    k21.n("Call next() or previous() before replacing element from the iterator.");
                    return;
                }
            case 2:
                d();
                int i3 = this.p;
                if (i3 != -1) {
                    ((a42) obj2).set(i3, obj);
                    return;
                } else {
                    k21.n("Call next() or previous() before replacing element from the iterator.");
                    return;
                }
            default:
                gp3 gp3Var = (gp3) obj2;
                e();
                int i4 = this.p;
                if (i4 < 0) {
                    k21.n("Cannot call set before the first call to next() or previous() or immediately after a call to add() or remove()");
                    return;
                } else {
                    gp3Var.set(i4, obj);
                    this.q = nt1.E(gp3Var);
                    return;
                }
        }
    }

    public xj1(a42 a42Var, int i) {
        this.n = 2;
        this.r = a42Var;
        this.o = i;
        this.p = -1;
        this.q = ((AbstractList) a42Var).modCount;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public xj1(zj1 zj1Var, int i, int i2) {
        this(zj1Var, (i2 & 1) != 0 ? 0 : i, 0, zj1Var.n.b);
        this.n = 0;
    }

    public xj1(zj1 zj1Var, int i, int i2, int i3) {
        this.n = 0;
        this.r = zj1Var;
        this.o = i;
        this.p = i2;
        this.q = i3;
    }

    public xj1(z32 z32Var, int i) {
        this.n = 1;
        this.r = z32Var;
        this.o = i;
        this.p = -1;
        this.q = ((AbstractList) z32Var).modCount;
    }
}
