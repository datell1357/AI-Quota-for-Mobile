package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cv implements jj1 {
    public final List n;
    public int o;
    public int p;
    public final String q;

    public cv(String str, ArrayList arrayList) {
        w80.L(arrayList, "Header list");
        this.n = arrayList;
        this.q = str;
        this.o = b(-1);
        this.p = -1;
    }

    @Override // defpackage.jj1
    public final gj1 a() {
        int i = this.o;
        if (i < 0) {
            q73.l("Iteration already finished.");
            return null;
        }
        this.p = i;
        this.o = b(i);
        return (gj1) this.n.get(i);
    }

    public final int b(int i) {
        if (i >= -1) {
            List list = this.n;
            int size = list.size() - 1;
            boolean zEqualsIgnoreCase = false;
            while (!zEqualsIgnoreCase && i < size) {
                i++;
                String str = this.q;
                zEqualsIgnoreCase = str == null ? true : str.equalsIgnoreCase(((gj1) list.get(i)).getName());
            }
            if (zEqualsIgnoreCase) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.o >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        return a();
    }

    @Override // java.util.Iterator
    public final void remove() {
        mt1.n("No header to remove", this.p >= 0);
        this.n.remove(this.p);
        this.p = -1;
        this.o--;
    }
}
