package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class di extends wm3 implements Map {
    public yh q;
    public ai r;
    public ci s;

    public di() {
        super(0);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        yh yhVar = this.q;
        if (yhVar != null) {
            return yhVar;
        }
        yh yhVar2 = new yh(0, this);
        this.q = yhVar2;
        return yhVar2;
    }

    public final boolean j(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!super.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final boolean k(Collection collection) {
        int i = this.p;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            super.remove(it.next());
        }
        return i != this.p;
    }

    @Override // java.util.Map
    public final Set keySet() {
        ai aiVar = this.r;
        if (aiVar != null) {
            return aiVar;
        }
        ai aiVar2 = new ai(this);
        this.r = aiVar2;
        return aiVar2;
    }

    public final boolean l(Collection collection) {
        int i = this.p;
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (!collection.contains(f(i2))) {
                g(i2);
            }
        }
        return i != this.p;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        int size = map.size() + this.p;
        int i = this.p;
        int[] iArr = this.n;
        if (iArr.length < size) {
            this.n = Arrays.copyOf(iArr, size);
            this.o = Arrays.copyOf(this.o, size * 2);
        }
        if (this.p != i) {
            throw new ConcurrentModificationException();
        }
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection values() {
        ci ciVar = this.s;
        if (ciVar != null) {
            return ciVar;
        }
        ci ciVar2 = new ci(this);
        this.s = ciVar2;
        return ciVar2;
    }
}
