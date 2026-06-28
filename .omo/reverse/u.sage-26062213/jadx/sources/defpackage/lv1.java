package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lv1 extends yv1 implements Iterable {
    public final ArrayList n = new ArrayList();

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof lv1) && ((lv1) obj).n.equals(this.n);
        }
        return true;
    }

    public final int hashCode() {
        return this.n.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.n.iterator();
    }
}
