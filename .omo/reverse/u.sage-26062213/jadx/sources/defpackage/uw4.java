package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uw4 extends wv4 {
    public final transient String q = "FIDO";

    @Override // defpackage.bv4
    public final int a(Object[] objArr) {
        objArr[0] = this.q;
        return 1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.q.equals(obj);
    }

    @Override // defpackage.wv4
    public final sv4 f() {
        cv4 cv4Var = sv4.o;
        Object[] objArr = {this.q};
        int i = 0;
        while (true) {
            if (i < 1) {
                if (objArr[i] == null) {
                    q73.r(di0.q(i, "at index "));
                    break;
                }
                i++;
            } else {
                break;
            }
        }
        return sv4.g(1, objArr);
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.q.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        cw4 cw4Var = new cw4(3);
        cw4Var.o = this.q;
        return cw4Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return di0.v("[", this.q.toString(), "]");
    }
}
