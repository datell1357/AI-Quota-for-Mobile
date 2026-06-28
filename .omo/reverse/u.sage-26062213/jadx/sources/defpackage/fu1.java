package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fu1 extends y64 {
    public final Object o;
    public boolean p;

    public fu1(Object obj) {
        super(0);
        this.o = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.p;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.p) {
            p61.v();
            return null;
        }
        this.p = true;
        return this.o;
    }
}
