package defpackage;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gu2 extends AbstractMap implements Map, hx1 {
    public qz0 n = new qz0(14);
    public j24 o;
    public Object p;
    public int q;
    public int r;
    public hu2 s;

    public gu2(hu2 hu2Var) {
        this.o = hu2Var.n;
        this.r = hu2Var.o;
        this.s = hu2Var;
    }

    public final hu2 a() {
        j24 j24Var = this.o;
        hu2 hu2Var = this.s;
        if (j24Var != hu2Var.n) {
            this.n = new qz0(14);
            hu2Var = new hu2(this.o, this.r);
        }
        this.s = hu2Var;
        return hu2Var;
    }

    public final boolean b(Object obj) {
        return this.o.d(obj != null ? obj.hashCode() : 0, 0, obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.o = j24.e;
        f(0);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (obj instanceof h03) {
            return b((h03) obj);
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof x94) {
            return super.containsValue((x94) obj);
        }
        return false;
    }

    public final Object d(Object obj) {
        return this.o.g(obj != null ? obj.hashCode() : 0, 0, obj);
    }

    public final Object e(Object obj) {
        this.p = null;
        j24 j24VarN = this.o.n(obj != null ? obj.hashCode() : 0, obj, 0, this);
        if (j24VarN == null) {
            j24VarN = j24.e;
        }
        this.o = j24VarN;
        return this.p;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        return new ou2(0, this);
    }

    public final void f(int i) {
        this.r = i;
        this.q++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ Object get(Object obj) {
        if (obj instanceof h03) {
            return (x94) d((h03) obj);
        }
        return null;
    }

    @Override // java.util.Map
    public final /* bridge */ Object getOrDefault(Object obj, Object obj2) {
        return !(obj instanceof h03) ? obj2 : (x94) super.getOrDefault((h03) obj, (x94) obj2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        return new ou2(1, this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        this.p = null;
        this.o = this.o.l(obj != null ? obj.hashCode() : 0, obj, obj2, 0, this);
        return this.p;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        lu2 lu2VarA = null;
        lu2 lu2Var = map instanceof lu2 ? (lu2) map : null;
        if (lu2Var == null) {
            gu2 gu2Var = map instanceof gu2 ? (gu2) map : null;
            if (gu2Var != null) {
                lu2VarA = gu2Var.a();
            }
        } else {
            lu2VarA = lu2Var;
        }
        if (lu2VarA == null) {
            super.putAll(map);
            return;
        }
        zr0 zr0Var = new zr0();
        zr0Var.a = 0;
        int i = this.r;
        j24 j24Var = this.o;
        j24 j24Var2 = lu2VarA.n;
        j24Var2.getClass();
        this.o = j24Var.m(j24Var2, 0, zr0Var, this);
        int i2 = (lu2VarA.o + i) - zr0Var.a;
        if (i != i2) {
            f(i2);
        }
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        int i = this.r;
        j24 j24VarO = this.o.o(obj != null ? obj.hashCode() : 0, obj, obj2, 0, this);
        if (j24VarO == null) {
            j24VarO = j24.e;
        }
        this.o = j24VarO;
        return i != this.r;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.r;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        return new ea2(1, this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ Object remove(Object obj) {
        if (obj instanceof h03) {
            return (x94) e((h03) obj);
        }
        return null;
    }
}
