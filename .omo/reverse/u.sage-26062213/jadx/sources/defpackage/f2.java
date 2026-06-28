package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f2 extends kt4 implements up3, hf2, Collection {
    public transient vp3 A;
    public transient o1 B;
    public final /* synthetic */ g2 C;
    public transient gr2 z;

    public f2(g2 g2Var) {
        super(15);
        this.C = g2Var;
    }

    @Override // defpackage.hf2
    public final boolean A(int i, Object obj) {
        return ((h24) this.C).A(i, obj);
    }

    @Override // defpackage.up3
    public final up3 B(int i, int i2, Object obj, Object obj2) {
        return ((g2) this.C.B(i2, i, obj2, obj)).z();
    }

    @Override // defpackage.up3
    public final up3 L(int i, Object obj) {
        return ((g2) ((h24) this.C).j(i, obj)).z();
    }

    @Override // defpackage.hf2
    public final int N(Object obj) {
        return ((h24) this.C).N(obj);
    }

    @Override // defpackage.hf2
    /* JADX INFO: renamed from: R */
    public final NavigableSet r() {
        vp3 vp3Var = this.A;
        if (vp3Var != null) {
            return vp3Var;
        }
        vp3 vp3Var2 = new vp3(this);
        this.A = vp3Var2;
        return vp3Var2;
    }

    @Override // defpackage.hf2
    public final int V(int i, Object obj) {
        return ((h24) this.C).V(Api.BaseClientBuilder.API_PRIORITY_OTHER, obj);
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        this.C.add(obj);
        return true;
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        return this.C.addAll(collection);
    }

    @Override // java.util.Collection
    public final void clear() {
        ((h24) this.C).clear();
    }

    @Override // defpackage.up3, defpackage.tp3
    public final Comparator comparator() {
        gr2 gr2Var = this.z;
        if (gr2Var != null) {
            return gr2Var;
        }
        Comparator comparator = this.C.p;
        gr2 gr2VarA = (comparator instanceof gr2 ? (gr2) comparator : new x80(comparator)).a();
        this.z = gr2VarA;
        return gr2VarA;
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return this.C.contains(obj);
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        return this.C.containsAll(collection);
    }

    @Override // defpackage.up3, defpackage.hf2
    public final Set entrySet() {
        o1 o1Var = this.B;
        if (o1Var != null) {
            return o1Var;
        }
        o1 o1Var2 = new o1(this, 1);
        this.B = o1Var2;
        return o1Var2;
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        return obj == this || this.C.equals(obj);
    }

    @Override // defpackage.up3
    public final jf2 firstEntry() {
        return this.C.lastEntry();
    }

    @Override // java.util.Collection
    public final int hashCode() {
        return this.C.hashCode();
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.C.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        up3 up3VarZ = this.C.z();
        return new lf2(up3VarZ, up3VarZ.entrySet().iterator());
    }

    @Override // defpackage.up3
    public final up3 j(int i, Object obj) {
        return ((g2) ((h24) this.C).L(i, obj)).z();
    }

    @Override // defpackage.up3
    public final jf2 lastEntry() {
        return this.C.firstEntry();
    }

    @Override // defpackage.up3
    public final jf2 pollFirstEntry() {
        return this.C.pollLastEntry();
    }

    @Override // defpackage.up3
    public final jf2 pollLastEntry() {
        return this.C.pollFirstEntry();
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        return this.C.remove(obj);
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        return this.C.removeAll(collection);
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        return this.C.retainAll(collection);
    }

    @Override // java.util.Collection
    public final int size() {
        return ((h24) this.C).size();
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        int size = size();
        int i = 0;
        if (objArr.length < size) {
            if (objArr.length != 0) {
                objArr = Arrays.copyOf(objArr, 0);
            }
            objArr = Arrays.copyOf(objArr, size);
        }
        Iterator it = iterator();
        while (true) {
            lf2 lf2Var = (lf2) it;
            if (!lf2Var.hasNext()) {
                break;
            }
            objArr[i] = lf2Var.next();
            i++;
        }
        if (objArr.length > size) {
            objArr[size] = null;
        }
        return objArr;
    }

    @Override // defpackage.kt4
    public final String toString() {
        return entrySet().toString();
    }

    @Override // defpackage.kt4
    public final Object v() {
        return this.C;
    }

    @Override // defpackage.up3
    public final up3 z() {
        return this.C;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
