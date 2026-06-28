package defpackage;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zn3 extends AbstractMap {
    public static final /* synthetic */ int s = 0;
    public List n;
    public Map o;
    public boolean p;
    public volatile yh q;
    public Map r;

    public static zn3 g() {
        zn3 zn3Var = new zn3();
        zn3Var.n = Collections.EMPTY_LIST;
        Map map = Collections.EMPTY_MAP;
        zn3Var.o = map;
        zn3Var.r = map;
        return zn3Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(java.lang.Comparable r5) {
        /*
            r4 = this;
            java.util.List r0 = r4.n
            int r0 = r0.size()
            int r1 = r0 + (-1)
            if (r1 < 0) goto L21
            java.util.List r2 = r4.n
            java.lang.Object r2 = r2.get(r1)
            ao3 r2 = (defpackage.ao3) r2
            java.lang.Comparable r2 = r2.n
            int r2 = r5.compareTo(r2)
            if (r2 <= 0) goto L1e
            int r0 = r0 + 1
        L1c:
            int r4 = -r0
            return r4
        L1e:
            if (r2 != 0) goto L21
            return r1
        L21:
            r0 = 0
        L22:
            if (r0 > r1) goto L43
            int r2 = r0 + r1
            int r2 = r2 / 2
            java.util.List r3 = r4.n
            java.lang.Object r3 = r3.get(r2)
            ao3 r3 = (defpackage.ao3) r3
            java.lang.Comparable r3 = r3.n
            int r3 = r5.compareTo(r3)
            if (r3 >= 0) goto L3c
            int r2 = r2 + (-1)
            r1 = r2
            goto L22
        L3c:
            if (r3 <= 0) goto L42
            int r2 = r2 + 1
            r0 = r2
            goto L22
        L42:
            return r2
        L43:
            int r0 = r0 + 1
            goto L1c
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zn3.a(java.lang.Comparable):int");
    }

    public final void b() {
        if (this.p) {
            p61.b();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        b();
        if (!this.n.isEmpty()) {
            this.n.clear();
        }
        if (this.o.isEmpty()) {
            return;
        }
        this.o.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.o.containsKey(comparable);
    }

    public final Map.Entry d(int i) {
        return (Map.Entry) this.n.get(i);
    }

    public final Set e() {
        return this.o.isEmpty() ? Collections.EMPTY_SET : this.o.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.q == null) {
            this.q = new yh(1, this);
        }
        return this.q;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zn3)) {
            return super.equals(obj);
        }
        zn3 zn3Var = (zn3) obj;
        int size = size();
        if (size == zn3Var.size()) {
            int size2 = this.n.size();
            if (size2 != zn3Var.n.size()) {
                return ((AbstractSet) entrySet()).equals(zn3Var.entrySet());
            }
            for (int i = 0; i < size2; i++) {
                if (d(i).equals(zn3Var.d(i))) {
                }
            }
            if (size2 != size) {
                return this.o.equals(zn3Var.o);
            }
            return true;
        }
        return false;
    }

    public final SortedMap f() {
        b();
        if (this.o.isEmpty() && !(this.o instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.o = treeMap;
            this.r = treeMap.descendingMap();
        }
        return (SortedMap) this.o;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? ((ao3) this.n.get(iA)).o : this.o.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        b();
        int iA = a(comparable);
        if (iA >= 0) {
            return ((ao3) this.n.get(iA)).setValue(obj);
        }
        b();
        if (this.n.isEmpty() && !(this.n instanceof ArrayList)) {
            this.n = new ArrayList(16);
        }
        int i = -(iA + 1);
        if (i >= 16) {
            return f().put(comparable, obj);
        }
        if (this.n.size() == 16) {
            ao3 ao3Var = (ao3) this.n.remove(15);
            f().put(ao3Var.n, ao3Var.o);
        }
        this.n.add(i, new ao3(this, comparable, obj));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int size = this.n.size();
        int iHashCode = 0;
        for (int i = 0; i < size; i++) {
            iHashCode += ((ao3) this.n.get(i)).hashCode();
        }
        return this.o.size() > 0 ? this.o.hashCode() + iHashCode : iHashCode;
    }

    public final Object i(int i) {
        b();
        Object obj = ((ao3) this.n.remove(i)).o;
        if (!this.o.isEmpty()) {
            Iterator it = f().entrySet().iterator();
            List list = this.n;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new ao3(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        b();
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        if (iA >= 0) {
            return i(iA);
        }
        if (this.o.isEmpty()) {
            return null;
        }
        return this.o.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.o.size() + this.n.size();
    }
}
