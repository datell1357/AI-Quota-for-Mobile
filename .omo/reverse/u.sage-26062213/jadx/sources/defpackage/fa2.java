package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class fa2 implements Map.Entry, fx1 {
    public final /* synthetic */ int n;
    public final Object o;
    public final Object p;

    public /* synthetic */ fa2(int i, Object obj, Object obj2) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        switch (this.n) {
            case 0:
                Map.Entry entry = obj instanceof Map.Entry ? (Map.Entry) obj : null;
                return entry != null && nt1.g(entry.getKey(), this.o) && nt1.g(entry.getValue(), getValue());
            default:
                return super.equals(obj);
        }
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        switch (this.n) {
        }
        return this.o;
    }

    @Override // java.util.Map.Entry
    public Object getValue() {
        switch (this.n) {
        }
        return this.p;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        switch (this.n) {
            case 0:
                Object obj = this.o;
                int iHashCode = obj != null ? obj.hashCode() : 0;
                Object value = getValue();
                return iHashCode ^ (value != null ? value.hashCode() : 0);
            default:
                return super.hashCode();
        }
    }

    @Override // java.util.Map.Entry
    public Object setValue(Object obj) {
        switch (this.n) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public String toString() {
        switch (this.n) {
            case 0:
                return this.o + "=" + getValue();
            default:
                return super.toString();
        }
    }
}
