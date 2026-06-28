package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tu implements jj1 {
    public final gj1[] n;
    public int o = b(-1);

    public tu(gj1[] gj1VarArr) {
        this.n = gj1VarArr;
    }

    @Override // defpackage.jj1
    public final gj1 a() {
        int i = this.o;
        if (i >= 0) {
            this.o = b(i);
            return this.n[i];
        }
        q73.l("Iteration already finished.");
        return null;
    }

    public final int b(int i) {
        if (i >= -1) {
            int length = this.n.length - 1;
            boolean z = false;
            while (!z && i < length) {
                i++;
                z = true;
            }
            if (z) {
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
        throw new UnsupportedOperationException("Removing headers is not supported.");
    }
}
