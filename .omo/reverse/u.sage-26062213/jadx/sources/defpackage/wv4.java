package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class wv4 extends bv4 implements Set {
    public static final /* synthetic */ int p = 0;
    public transient sv4 o;

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof wv4) && (this instanceof pw4) && (((wv4) obj) instanceof pw4) && obj.hashCode() != 0) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        try {
            if (size() == set.size()) {
                return containsAll(set);
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public sv4 f() {
        sv4 sv4Var = this.o;
        if (sv4Var != null) {
            return sv4Var;
        }
        sv4 sv4VarG = g();
        this.o = sv4VarG;
        return sv4VarG;
    }

    public sv4 g() {
        Object[] array = toArray(bv4.n);
        cv4 cv4Var = sv4.o;
        return sv4.g(array.length, array);
    }
}
