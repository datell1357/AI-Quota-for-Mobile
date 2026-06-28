package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cw4 extends y64 {
    public static final Object p = new Object();
    public Object o;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.o != p;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object obj = this.o;
        Object obj2 = p;
        if (obj != obj2) {
            this.o = obj2;
            return obj;
        }
        p61.v();
        return null;
    }
}
