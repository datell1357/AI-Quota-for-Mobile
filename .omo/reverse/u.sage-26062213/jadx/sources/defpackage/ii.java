package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ii implements Iterable, fx1 {
    public final /* synthetic */ int n;
    public final Object o;

    public /* synthetic */ ii(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                return new g1(1, (Object[]) obj);
            case 1:
                return new zx0(ca.w((Object[]) ((cc) obj).o));
            default:
                return new xr0((yr0) obj);
        }
    }
}
