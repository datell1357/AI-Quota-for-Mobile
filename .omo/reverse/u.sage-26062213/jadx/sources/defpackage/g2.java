package defpackage;

import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class g2 extends AbstractCollection implements up3, hf2 {
    public transient vp3 n;
    public transient o1 o;
    public final Comparator p;
    public transient f2 q;

    public g2(Comparator comparator) {
        comparator.getClass();
        this.p = comparator;
    }

    @Override // defpackage.up3
    public final up3 B(int i, int i2, Object obj, Object obj2) {
        if (i == 0 || i2 == 0) {
            throw null;
        }
        return ((h24) ((h24) this).L(i, obj)).j(i2, obj2);
    }

    @Override // defpackage.hf2
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public final NavigableSet r() {
        vp3 vp3Var = this.n;
        if (vp3Var != null) {
            return vp3Var;
        }
        vp3 vp3Var2 = new vp3(this);
        this.n = vp3Var2;
        return vp3Var2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        ((h24) this).a(1, obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        collection.getClass();
        boolean z = false;
        if (collection instanceof hf2) {
            hf2 hf2Var = (hf2) collection;
            if (!hf2Var.isEmpty()) {
                for (jf2 jf2Var : hf2Var.entrySet()) {
                    ((h24) this).a(jf2Var.a(), jf2Var.b());
                }
                return true;
            }
        } else if (!collection.isEmpty()) {
            Iterator it = collection.iterator();
            it.getClass();
            while (it.hasNext()) {
                add(it.next());
                z = true;
            }
            return z;
        }
        return false;
    }

    @Override // defpackage.up3, defpackage.tp3
    public final Comparator comparator() {
        return this.p;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return ((h24) this).N(obj) > 0;
    }

    @Override // defpackage.up3, defpackage.hf2
    public final Set entrySet() {
        o1 o1Var = this.o;
        if (o1Var != null) {
            return o1Var;
        }
        o1 o1Var2 = new o1(this, 0);
        this.o = o1Var2;
        return o1Var2;
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof hf2)) {
            return false;
        }
        hf2 hf2Var = (hf2) obj;
        h24 h24Var = (h24) this;
        if (h24Var.size() != hf2Var.size() || ((o1) entrySet()).size() != hf2Var.entrySet().size()) {
            return false;
        }
        for (jf2 jf2Var : hf2Var.entrySet()) {
            if (h24Var.N(jf2Var.b()) != jf2Var.a()) {
                return false;
            }
        }
        return true;
    }

    @Override // defpackage.up3
    public final jf2 firstEntry() {
        f24 f24Var = new f24((h24) this, 0);
        if (f24Var.hasNext()) {
            return (jf2) f24Var.next();
        }
        return null;
    }

    @Override // java.util.Collection
    public final int hashCode() {
        return ((AbstractSet) entrySet()).hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return ((AbstractCollection) entrySet()).isEmpty();
    }

    @Override // defpackage.up3
    public final jf2 lastEntry() {
        f24 f24Var = new f24((h24) this, 1);
        if (f24Var.hasNext()) {
            return (jf2) f24Var.next();
        }
        return null;
    }

    @Override // defpackage.up3
    public final jf2 pollFirstEntry() {
        f24 f24Var = new f24((h24) this, 0);
        if (!f24Var.hasNext()) {
            return null;
        }
        jf2 jf2Var = (jf2) f24Var.next();
        kf2 kf2Var = new kf2(jf2Var.a(), jf2Var.b());
        f24Var.remove();
        return kf2Var;
    }

    @Override // defpackage.up3
    public final jf2 pollLastEntry() {
        f24 f24Var = new f24((h24) this, 1);
        if (!f24Var.hasNext()) {
            return null;
        }
        jf2 jf2Var = (jf2) f24Var.next();
        kf2 kf2Var = new kf2(jf2Var.a(), jf2Var.b());
        f24Var.remove();
        return kf2Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        return ((h24) this).V(1, obj) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        if (collection instanceof hf2) {
            collection = ((hf2) collection).r();
        }
        return ((ik3) r()).removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        if (collection instanceof hf2) {
            collection = ((hf2) collection).r();
        }
        return ((ik3) r()).retainAll(collection);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return entrySet().toString();
    }

    @Override // defpackage.up3
    public final up3 z() {
        f2 f2Var = this.q;
        if (f2Var != null) {
            return f2Var;
        }
        f2 f2Var2 = new f2(this);
        this.q = f2Var2;
        return f2Var2;
    }

    public g2() {
        this(vh2.o);
    }
}
