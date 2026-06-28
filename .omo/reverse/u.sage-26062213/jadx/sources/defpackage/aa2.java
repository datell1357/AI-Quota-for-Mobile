package defpackage;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class aa2 implements Map.Entry, fx1 {
    public final ca2 n;
    public final int o;
    public final int p;

    public aa2(ca2 ca2Var, int i) {
        ca2Var.getClass();
        this.n = ca2Var;
        this.o = i;
        this.p = ca2Var.f44u;
    }

    public final void a() {
        if (this.n.f44u != this.p) {
            throw new ConcurrentModificationException("The backing map has been modified after this entry was obtained.");
        }
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return nt1.g(entry.getKey(), getKey()) && nt1.g(entry.getValue(), getValue());
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        a();
        return this.n.n[this.o];
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        a();
        Object[] objArr = this.n.o;
        objArr.getClass();
        return objArr[this.o];
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object key = getKey();
        int iHashCode = key != null ? key.hashCode() : 0;
        Object value = getValue();
        return iHashCode ^ (value != null ? value.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        a();
        ca2 ca2Var = this.n;
        ca2Var.d();
        Object[] objArr = ca2Var.o;
        if (objArr == null) {
            int length = ca2Var.n.length;
            if (length < 0) {
                k21.f("capacity must be non-negative.");
                return null;
            }
            objArr = new Object[length];
            ca2Var.o = objArr;
        }
        int i = this.o;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        return obj2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getKey());
        sb.append('=');
        sb.append(getValue());
        return sb.toString();
    }
}
