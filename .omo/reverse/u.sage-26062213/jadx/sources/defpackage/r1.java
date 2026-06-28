package defpackage;

import java.util.Collection;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r1 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Collection o;

    public /* synthetic */ r1(int i, Collection collection) {
        this.n = i;
        this.o = collection;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        boolean zContains;
        int i = this.n;
        Collection<?> collection = this.o;
        switch (i) {
            case 0:
                zContains = collection.contains(obj);
                break;
            case 1:
                zContains = collection.contains(obj);
                break;
            default:
                zContains = ((List) obj).retainAll(collection);
                break;
        }
        return Boolean.valueOf(zContains);
    }
}
