package defpackage;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Function;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ow1 extends xv1 implements Map<String, xv1>, fx1 {
    public static final nw1 Companion = new nw1();
    public final Map n;

    public ow1(Map map) {
        map.getClass();
        this.n = map;
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ xv1 compute(String str, BiFunction<? super String, ? super xv1, ? extends xv1> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ xv1 computeIfAbsent(String str, Function<? super String, ? extends xv1> function) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ xv1 computeIfPresent(String str, BiFunction<? super String, ? super xv1, ? extends xv1> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        if (!(obj instanceof String)) {
            return false;
        }
        return this.n.containsKey((String) obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        if (!(obj instanceof xv1)) {
            return false;
        }
        return this.n.containsValue((xv1) obj);
    }

    @Override // java.util.Map
    public final Set<Map.Entry<String, xv1>> entrySet() {
        return this.n.entrySet();
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return nt1.g(this.n, obj);
    }

    @Override // java.util.Map
    public final xv1 get(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        return (xv1) this.n.get((String) obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return this.n.hashCode();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.n.isEmpty();
    }

    @Override // java.util.Map
    public final Set<String> keySet() {
        return this.n.keySet();
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ xv1 merge(String str, xv1 xv1Var, BiFunction<? super xv1, ? super xv1, ? extends xv1> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ xv1 put(String str, xv1 xv1Var) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final void putAll(Map<? extends String, ? extends xv1> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ xv1 putIfAbsent(String str, xv1 xv1Var) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final xv1 remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ xv1 replace(String str, xv1 xv1Var) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final void replaceAll(BiFunction<? super String, ? super xv1, ? extends xv1> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final int size() {
        return this.n.size();
    }

    public final String toString() {
        return o70.n0(this.n.entrySet(), ",", "{", "}", new t3(26), 24);
    }

    @Override // java.util.Map
    public final Collection<xv1> values() {
        return this.n.values();
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ boolean replace(String str, xv1 xv1Var, xv1 xv1Var2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
