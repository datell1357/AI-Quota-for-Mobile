package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q83 extends gr2 implements Serializable {
    public final gr2 n;

    public q83(gr2 gr2Var) {
        this.n = gr2Var;
    }

    @Override // defpackage.gr2
    public final gr2 a() {
        return this.n;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.n.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof q83) {
            return this.n.equals(((q83) obj).n);
        }
        return false;
    }

    public final int hashCode() {
        return -this.n.hashCode();
    }

    public final String toString() {
        return this.n + ".reverse()";
    }
}
