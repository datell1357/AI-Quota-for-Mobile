package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b53 extends np1 {
    public final transient e53 q;
    public final transient Object[] r;
    public final transient int s;

    public b53(e53 e53Var, Object[] objArr, int i) {
        this.q = e53Var;
        this.r = objArr;
        this.s = i;
    }

    @Override // defpackage.dp1
    public final int c(Object[] objArr) {
        return a().c(objArr);
    }

    @Override // defpackage.dp1, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.q.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.dp1
    public final boolean g() {
        return true;
    }

    @Override // defpackage.dp1
    /* JADX INFO: renamed from: h */
    public final y64 iterator() {
        return a().listIterator(0);
    }

    @Override // defpackage.np1
    public final lp1 l() {
        return new a53(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.s;
    }
}
