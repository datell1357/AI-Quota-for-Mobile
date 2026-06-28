package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ou2 extends q1 {
    public final /* synthetic */ int n;
    public final gu2 o;

    public /* synthetic */ ou2(int i, gu2 gu2Var) {
        this.n = i;
        this.o = gu2Var;
    }

    @Override // defpackage.q1
    public final int a() {
        switch (this.n) {
        }
        return this.o.r;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        switch (this.n) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        switch (this.n) {
            case 0:
                this.o.clear();
                break;
            default:
                this.o.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        switch (this.n) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                gu2 gu2Var = this.o;
                Object obj2 = gu2Var.get(key);
                return obj2 != null ? obj2.equals(entry.getValue()) : entry.getValue() == null && gu2Var.containsKey(entry.getKey());
            default:
                return this.o.containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.n) {
            case 0:
                return new pu2(this.o);
            default:
                k24[] k24VarArr = new k24[8];
                for (int i = 0; i < 8; i++) {
                    k24VarArr[i] = new l24(1);
                }
                return new qu2(this.o, k24VarArr);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        switch (this.n) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return this.o.remove(entry.getKey(), entry.getValue());
            default:
                gu2 gu2Var = this.o;
                if (!gu2Var.containsKey(obj)) {
                    return false;
                }
                gu2Var.remove(obj);
                return true;
        }
    }
}
