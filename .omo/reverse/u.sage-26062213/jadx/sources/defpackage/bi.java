package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bi implements Iterator, Map.Entry {
    public int n;
    public int o = -1;
    public boolean p;
    public final /* synthetic */ di q;

    public bi(di diVar) {
        this.q = diVar;
        this.n = diVar.p - 1;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!this.p) {
            k21.n("This container does not support retaining Map.Entry objects");
            return false;
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            int i = this.o;
            di diVar = this.q;
            if (nt1.g(key, diVar.f(i)) && nt1.g(entry.getValue(), diVar.i(this.o))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        if (this.p) {
            return this.q.f(this.o);
        }
        k21.n("This container does not support retaining Map.Entry objects");
        return null;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.p) {
            return this.q.i(this.o);
        }
        k21.n("This container does not support retaining Map.Entry objects");
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.o < this.n;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        if (!this.p) {
            k21.n("This container does not support retaining Map.Entry objects");
            return 0;
        }
        int i = this.o;
        di diVar = this.q;
        Object objF = diVar.f(i);
        Object objI = diVar.i(this.o);
        return (objF == null ? 0 : objF.hashCode()) ^ (objI != null ? objI.hashCode() : 0);
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            p61.v();
            return null;
        }
        this.o++;
        this.p = true;
        return this;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.p) {
            throw new IllegalStateException();
        }
        this.q.g(this.o);
        this.o--;
        this.n--;
        this.p = false;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (this.p) {
            return this.q.h(this.o, obj);
        }
        k21.n("This container does not support retaining Map.Entry objects");
        return null;
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
