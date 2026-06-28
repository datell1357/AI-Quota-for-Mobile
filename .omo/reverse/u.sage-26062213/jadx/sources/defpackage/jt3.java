package defpackage;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jt3 implements List, gx1 {
    public final gp3 n;
    public final int o;
    public int p;
    public int q;

    public jt3(gp3 gp3Var, int i, int i2) {
        this.n = gp3Var;
        this.o = i;
        this.p = nt1.E(gp3Var);
        this.q = i2 - i;
    }

    public final void a() {
        if (nt1.E(this.n) != this.p) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.List, java.util.Collection
    public final boolean add(Object obj) {
        a();
        int i = this.o + this.q;
        gp3 gp3Var = this.n;
        gp3Var.add(i, obj);
        this.q++;
        this.p = nt1.E(gp3Var);
        return true;
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        a();
        int i2 = i + this.o;
        gp3 gp3Var = this.n;
        boolean zAddAll = gp3Var.addAll(i2, collection);
        if (zAddAll) {
            this.q = collection.size() + this.q;
            this.p = nt1.E(gp3Var);
        }
        return zAddAll;
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        int i;
        s1 s1Var;
        po3 po3VarJ;
        boolean zH;
        if (this.q > 0) {
            a();
            gp3 gp3Var = this.n;
            int i2 = this.o;
            int i3 = this.q + i2;
            do {
                synchronized (nt1.h) {
                    zr3 zr3Var = gp3Var.n;
                    zr3Var.getClass();
                    zr3 zr3Var2 = (zr3) wo3.h(zr3Var);
                    i = zr3Var2.d;
                    s1Var = zr3Var2.c;
                }
                s1Var.getClass();
                vu2 vu2VarG = s1Var.g();
                vu2VarG.subList(i2, i3).clear();
                s1 s1VarE = vu2VarG.e();
                if (nt1.g(s1VarE, s1Var)) {
                    break;
                }
                zr3 zr3Var3 = gp3Var.n;
                zr3Var3.getClass();
                synchronized (wo3.c) {
                    po3VarJ = wo3.j();
                    zH = nt1.h((zr3) wo3.w(zr3Var3, gp3Var, po3VarJ), i, s1VarE, true);
                }
                wo3.n(po3VarJ, gp3Var);
            } while (!zH);
            this.q = 0;
            this.p = nt1.E(this.n);
        }
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection collection) {
        Collection collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return true;
        }
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        a();
        nt1.e(i, this.q);
        return this.n.get(this.o + i);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        a();
        int i = this.q;
        int i2 = this.o;
        Iterator it = ix.a0(i2, i + i2).iterator();
        while (((ls1) it).p) {
            int iNextInt = ((es1) it).nextInt();
            if (nt1.g(obj, this.n.get(iNextInt))) {
                return iNextInt - i2;
            }
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return this.q == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        a();
        int i = this.q;
        int i2 = this.o;
        for (int i3 = (i + i2) - 1; i3 >= i2; i3--) {
            if (nt1.g(obj, this.n.get(i3))) {
                return i3 - i2;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        a();
        u33 u33Var = new u33();
        u33Var.n = i - 1;
        return new r83(u33Var, this);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        a();
        int i2 = this.o + i;
        gp3 gp3Var = this.n;
        Object objRemove = gp3Var.remove(i2);
        this.q--;
        this.p = nt1.E(gp3Var);
        return objRemove;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection collection) {
        Iterator it = collection.iterator();
        while (true) {
            boolean z = false;
            while (it.hasNext()) {
                if (remove(it.next()) || z) {
                    z = true;
                }
            }
            return z;
        }
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection collection) {
        int i;
        s1 s1Var;
        po3 po3VarJ;
        boolean zH;
        a();
        gp3 gp3Var = this.n;
        int i2 = this.o;
        int i3 = this.q + i2;
        int size = gp3Var.size();
        do {
            synchronized (nt1.h) {
                zr3 zr3Var = gp3Var.n;
                zr3Var.getClass();
                zr3 zr3Var2 = (zr3) wo3.h(zr3Var);
                i = zr3Var2.d;
                s1Var = zr3Var2.c;
            }
            s1Var.getClass();
            vu2 vu2VarG = s1Var.g();
            vu2VarG.subList(i2, i3).retainAll(collection);
            s1 s1VarE = vu2VarG.e();
            if (nt1.g(s1VarE, s1Var)) {
                break;
            }
            zr3 zr3Var3 = gp3Var.n;
            zr3Var3.getClass();
            synchronized (wo3.c) {
                po3VarJ = wo3.j();
                zH = nt1.h((zr3) wo3.w(zr3Var3, gp3Var, po3VarJ), i, s1VarE, true);
            }
            wo3.n(po3VarJ, gp3Var);
        } while (!zH);
        int size2 = size - gp3Var.size();
        if (size2 > 0) {
            this.p = nt1.E(this.n);
            this.q -= size2;
        }
        return size2 > 0;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        nt1.e(i, this.q);
        a();
        int i2 = i + this.o;
        gp3 gp3Var = this.n;
        Object obj2 = gp3Var.set(i2, obj);
        this.p = nt1.E(gp3Var);
        return obj2;
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return this.q;
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        if (i < 0 || i > i2 || i2 > this.q) {
            ix2.a("fromIndex or toIndex are out of bounds");
        }
        a();
        int i3 = this.o;
        return new jt3(this.n, i + i3, i2 + i3);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        return k30.D(this);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return k30.E(this, objArr);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        a();
        int i2 = this.o + i;
        gp3 gp3Var = this.n;
        gp3Var.add(i2, obj);
        this.q++;
        this.p = nt1.E(gp3Var);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection collection) {
        return addAll(this.q, collection);
    }
}
