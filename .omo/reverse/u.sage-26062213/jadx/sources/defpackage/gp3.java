package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gp3 implements Parcelable, bs3, List, RandomAccess, gx1 {
    public static final Parcelable.Creator<gp3> CREATOR = new fp3(0);
    public zr3 n;

    public gp3(s1 s1Var) {
        po3 po3VarJ = wo3.j();
        zr3 zr3Var = new zr3(po3VarJ.g(), s1Var);
        if (!(po3VarJ instanceof jh1)) {
            zr3Var.b = new zr3(1L, s1Var);
        }
        this.n = zr3Var;
    }

    @Override // defpackage.bs3
    public final ds3 a() {
        return this.n;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean add(Object obj) {
        int i;
        s1 s1Var;
        po3 po3VarJ;
        boolean zH;
        do {
            synchronized (nt1.h) {
                zr3 zr3Var = this.n;
                zr3Var.getClass();
                zr3 zr3Var2 = (zr3) wo3.h(zr3Var);
                i = zr3Var2.d;
                s1Var = zr3Var2.c;
            }
            s1Var.getClass();
            s1 s1VarE = s1Var.e(obj);
            if (s1VarE.equals(s1Var)) {
                return false;
            }
            zr3 zr3Var3 = this.n;
            zr3Var3.getClass();
            synchronized (wo3.c) {
                po3VarJ = wo3.j();
                zH = nt1.h((zr3) wo3.w(zr3Var3, this, po3VarJ), i, s1VarE, true);
            }
            wo3.n(po3VarJ, this);
        } while (!zH);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection collection) {
        int i;
        s1 s1Var;
        po3 po3VarJ;
        boolean zH;
        do {
            synchronized (nt1.h) {
                zr3 zr3Var = this.n;
                zr3Var.getClass();
                zr3 zr3Var2 = (zr3) wo3.h(zr3Var);
                i = zr3Var2.d;
                s1Var = zr3Var2.c;
            }
            s1Var.getClass();
            s1 s1VarF = s1Var.f(collection);
            if (nt1.g(s1VarF, s1Var)) {
                return false;
            }
            zr3 zr3Var3 = this.n;
            zr3Var3.getClass();
            synchronized (wo3.c) {
                po3VarJ = wo3.j();
                zH = nt1.h((zr3) wo3.w(zr3Var3, this, po3VarJ), i, s1VarF, true);
            }
            wo3.n(po3VarJ, this);
        } while (!zH);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        po3 po3VarJ;
        zr3 zr3Var = this.n;
        zr3Var.getClass();
        synchronized (wo3.c) {
            po3VarJ = wo3.j();
            zr3 zr3Var2 = (zr3) wo3.w(zr3Var, this, po3VarJ);
            synchronized (nt1.h) {
                zr3Var2.c = yn3.o;
                zr3Var2.d++;
                zr3Var2.e++;
            }
        }
        wo3.n(po3VarJ, this);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        return nt1.C(this).c.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection collection) {
        return nt1.C(this).c.containsAll(collection);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // defpackage.bs3
    public final void e(ds3 ds3Var) {
        ds3Var.b = this.n;
        this.n = (zr3) ds3Var;
    }

    @Override // java.util.List
    public final Object get(int i) {
        return nt1.C(this).c.get(i);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        return nt1.C(this).c.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return nt1.C(this).c.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        return nt1.C(this).c.lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return new xj1(this, 0);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        int i;
        s1 s1Var;
        po3 po3VarJ;
        boolean zH;
        do {
            synchronized (nt1.h) {
                zr3 zr3Var = this.n;
                zr3Var.getClass();
                zr3 zr3Var2 = (zr3) wo3.h(zr3Var);
                i = zr3Var2.d;
                s1Var = zr3Var2.c;
            }
            s1Var.getClass();
            int iIndexOf = s1Var.indexOf(obj);
            s1 s1VarI = iIndexOf != -1 ? s1Var.i(iIndexOf) : s1Var;
            if (s1VarI.equals(s1Var)) {
                return false;
            }
            zr3 zr3Var3 = this.n;
            zr3Var3.getClass();
            synchronized (wo3.c) {
                po3VarJ = wo3.j();
                zH = nt1.h((zr3) wo3.w(zr3Var3, this, po3VarJ), i, s1VarI, true);
            }
            wo3.n(po3VarJ, this);
        } while (!zH);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection collection) {
        int i;
        s1 s1Var;
        po3 po3VarJ;
        boolean zH;
        do {
            synchronized (nt1.h) {
                zr3 zr3Var = this.n;
                zr3Var.getClass();
                zr3 zr3Var2 = (zr3) wo3.h(zr3Var);
                i = zr3Var2.d;
                s1Var = zr3Var2.c;
            }
            s1Var.getClass();
            s1 s1VarH = s1Var.h(new r1(0, collection));
            if (nt1.g(s1VarH, s1Var)) {
                return false;
            }
            zr3 zr3Var3 = this.n;
            zr3Var3.getClass();
            synchronized (wo3.c) {
                po3VarJ = wo3.j();
                zH = nt1.h((zr3) wo3.w(zr3Var3, this, po3VarJ), i, s1VarH, true);
            }
            wo3.n(po3VarJ, this);
        } while (!zH);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection collection) {
        return nt1.K(this, new r1(2, collection));
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        int i2;
        s1 s1Var;
        po3 po3VarJ;
        boolean zH;
        Object obj2 = get(i);
        do {
            synchronized (nt1.h) {
                zr3 zr3Var = this.n;
                zr3Var.getClass();
                zr3 zr3Var2 = (zr3) wo3.h(zr3Var);
                i2 = zr3Var2.d;
                s1Var = zr3Var2.c;
            }
            s1Var.getClass();
            s1 s1VarK = s1Var.k(i, obj);
            if (s1VarK.equals(s1Var)) {
                break;
            }
            zr3 zr3Var3 = this.n;
            zr3Var3.getClass();
            synchronized (wo3.c) {
                po3VarJ = wo3.j();
                zH = nt1.h((zr3) wo3.w(zr3Var3, this, po3VarJ), i2, s1VarK, false);
            }
            wo3.n(po3VarJ, this);
        } while (!zH);
        return obj2;
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return nt1.C(this).c.a();
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        if (!(i >= 0 && i <= i2 && i2 <= size())) {
            ix2.a("fromIndex or toIndex are out of bounds");
        }
        return new jt3(this, i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        return k30.D(this);
    }

    public final String toString() {
        zr3 zr3Var = this.n;
        zr3Var.getClass();
        return "SnapshotStateList(value=" + ((zr3) wo3.h(zr3Var)).c + ")@" + hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        s1 s1Var = nt1.C(this).c;
        int iA = s1Var.a();
        parcel.writeInt(iA);
        for (int i2 = 0; i2 < iA; i2++) {
            parcel.writeValue(s1Var.get(i2));
        }
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return k30.E(this, objArr);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        return new xj1(this, i);
    }

    public gp3() {
        this(yn3.o);
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        int i2;
        s1 s1Var;
        po3 po3VarJ;
        boolean zH;
        do {
            synchronized (nt1.h) {
                zr3 zr3Var = this.n;
                zr3Var.getClass();
                zr3 zr3Var2 = (zr3) wo3.h(zr3Var);
                i2 = zr3Var2.d;
                s1Var = zr3Var2.c;
            }
            s1Var.getClass();
            s1 s1VarD = s1Var.d(i, obj);
            if (s1VarD.equals(s1Var)) {
                return;
            }
            zr3 zr3Var3 = this.n;
            zr3Var3.getClass();
            synchronized (wo3.c) {
                po3VarJ = wo3.j();
                zH = nt1.h((zr3) wo3.w(zr3Var3, this, po3VarJ), i2, s1VarD, true);
            }
            wo3.n(po3VarJ, this);
        } while (!zH);
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        return nt1.K(this, new wv3(i, 3, collection));
    }

    @Override // java.util.List
    public final Object remove(int i) {
        int i2;
        s1 s1Var;
        po3 po3VarJ;
        boolean zH;
        Object obj = get(i);
        do {
            synchronized (nt1.h) {
                zr3 zr3Var = this.n;
                zr3Var.getClass();
                zr3 zr3Var2 = (zr3) wo3.h(zr3Var);
                i2 = zr3Var2.d;
                s1Var = zr3Var2.c;
            }
            s1Var.getClass();
            s1 s1VarI = s1Var.i(i);
            if (s1VarI.equals(s1Var)) {
                break;
            }
            zr3 zr3Var3 = this.n;
            zr3Var3.getClass();
            synchronized (wo3.c) {
                po3VarJ = wo3.j();
                zH = nt1.h((zr3) wo3.w(zr3Var3, this, po3VarJ), i2, s1VarI, true);
            }
            wo3.n(po3VarJ, this);
        } while (!zH);
        return obj;
    }
}
