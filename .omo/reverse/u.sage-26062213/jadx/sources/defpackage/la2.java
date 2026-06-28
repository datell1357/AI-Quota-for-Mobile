package defpackage;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Function;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class la2 implements Map, fx1 {
    public final kg2 n;
    public r11 o;
    public r11 p;
    public rt3 q;

    public la2(kg2 kg2Var) {
        kg2Var.getClass();
        this.n = kg2Var;
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object compute(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object computeIfAbsent(Object obj, Function function) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return this.n.c(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return this.n.d(obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        r11 r11Var = this.o;
        if (r11Var != null) {
            return r11Var;
        }
        r11 r11Var2 = new r11(this.n, 0);
        this.o = r11Var2;
        return r11Var2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || la2.class != obj.getClass()) {
            return false;
        }
        return nt1.g(this.n, ((la2) obj).n);
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        return this.n.g(obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return this.n.hashCode();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.n.i();
    }

    @Override // java.util.Map
    public final Set keySet() {
        r11 r11Var = this.p;
        if (r11Var != null) {
            return r11Var;
        }
        r11 r11Var2 = new r11(this.n, 1);
        this.p = r11Var2;
        return r11Var2;
    }

    @Override // java.util.Map
    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object putIfAbsent(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object replace(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final void replaceAll(BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final int size() {
        return this.n.e;
    }

    public final String toString() {
        return this.n.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        rt3 rt3Var = this.q;
        if (rt3Var != null) {
            return rt3Var;
        }
        rt3 rt3Var2 = new rt3(this.n);
        this.q = rt3Var2;
        return rt3Var2;
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
