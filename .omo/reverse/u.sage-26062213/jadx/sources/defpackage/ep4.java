package defpackage;

import java.util.AbstractMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ep4 extends AbstractMap {
    public Object[] n;
    public int o;
    public Map p;
    public boolean q;
    public volatile yh r;
    public Map s;

    public ep4() {
        Map map = Collections.EMPTY_MAP;
        this.p = map;
        this.s = map;
    }

    public final fp4 a(int i) {
        if (i < this.o) {
            return (fp4) this.n[i];
        }
        throw new ArrayIndexOutOfBoundsException(i);
    }

    public final Set b() {
        return this.p.isEmpty() ? Collections.EMPTY_SET : this.p.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        g();
        if (this.o != 0) {
            this.n = null;
            this.o = 0;
        }
        if (this.p.isEmpty()) {
            return;
        }
        this.p.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return f(comparable) >= 0 || this.p.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        g();
        int iF = f(comparable);
        if (iF >= 0) {
            return ((fp4) this.n[iF]).setValue(obj);
        }
        g();
        if (this.n == null) {
            this.n = new Object[16];
        }
        int i = -(iF + 1);
        if (i >= 16) {
            return h().put(comparable, obj);
        }
        if (this.o == 16) {
            fp4 fp4Var = (fp4) this.n[15];
            this.o = 15;
            h().put(fp4Var.n, fp4Var.o);
        }
        Object[] objArr = this.n;
        int length = objArr.length;
        System.arraycopy(objArr, i, objArr, i + 1, 15 - i);
        this.n[i] = new fp4(this, comparable, obj);
        this.o++;
        return null;
    }

    public final Object e(int i) {
        g();
        Object[] objArr = this.n;
        Object obj = ((fp4) objArr[i]).o;
        System.arraycopy(objArr, i + 1, objArr, i, (this.o - i) - 1);
        this.o--;
        if (!this.p.isEmpty()) {
            Iterator it = h().entrySet().iterator();
            Object[] objArr2 = this.n;
            int i2 = this.o;
            Map.Entry entry = (Map.Entry) it.next();
            objArr2[i2] = new fp4(this, (Comparable) entry.getKey(), entry.getValue());
            this.o++;
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.r == null) {
            this.r = new yh(2, this);
        }
        return this.r;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ep4)) {
            return super.equals(obj);
        }
        ep4 ep4Var = (ep4) obj;
        int size = size();
        if (size == ep4Var.size()) {
            int i = this.o;
            if (i != ep4Var.o) {
                return entrySet().equals(ep4Var.entrySet());
            }
            for (int i2 = 0; i2 < i; i2++) {
                if (a(i2).equals(ep4Var.a(i2))) {
                }
            }
            if (i != size) {
                return this.p.equals(ep4Var.p);
            }
            return true;
        }
        return false;
    }

    public final int f(Comparable comparable) {
        int i = this.o;
        int i2 = i - 1;
        int i3 = 0;
        if (i2 >= 0) {
            int iCompareTo = comparable.compareTo(((fp4) this.n[i2]).n);
            if (iCompareTo > 0) {
                return -(i + 1);
            }
            if (iCompareTo == 0) {
                return i2;
            }
        }
        while (i3 <= i2) {
            int i4 = (i3 + i2) / 2;
            int iCompareTo2 = comparable.compareTo(((fp4) this.n[i4]).n);
            if (iCompareTo2 < 0) {
                i2 = i4 - 1;
            } else {
                if (iCompareTo2 <= 0) {
                    return i4;
                }
                i3 = i4 + 1;
            }
        }
        return -(i3 + 1);
    }

    public final void g() {
        if (this.q) {
            p61.b();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iF = f(comparable);
        return iF >= 0 ? ((fp4) this.n[iF]).o : this.p.get(comparable);
    }

    public final SortedMap h() {
        g();
        if (this.p.isEmpty() && !(this.p instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.p = treeMap;
            this.s = treeMap.descendingMap();
        }
        return (SortedMap) this.p;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = this.o;
        int iHashCode = 0;
        for (int i2 = 0; i2 < i; i2++) {
            iHashCode += this.n[i2].hashCode();
        }
        return this.p.size() > 0 ? this.p.hashCode() + iHashCode : iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        g();
        Comparable comparable = (Comparable) obj;
        int iF = f(comparable);
        if (iF >= 0) {
            return e(iF);
        }
        if (this.p.isEmpty()) {
            return null;
        }
        return this.p.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.p.size() + this.o;
    }
}
