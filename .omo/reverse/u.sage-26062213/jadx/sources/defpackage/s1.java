package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class s1 extends j1 {
    @Override // defpackage.w, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // defpackage.w, java.util.Collection, java.util.List
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

    public abstract s1 d(int i, Object obj);

    public abstract s1 e(Object obj);

    public s1 f(Collection collection) {
        vu2 vu2VarG = g();
        vu2VarG.addAll(collection);
        return vu2VarG.e();
    }

    public abstract vu2 g();

    public abstract s1 h(r1 r1Var);

    public abstract s1 i(int i);

    @Override // defpackage.j1, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public abstract s1 k(int i, Object obj);

    @Override // defpackage.j1, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // defpackage.j1, java.util.List
    public final List subList(int i, int i2) {
        return new kp1(this, i, i2);
    }
}
