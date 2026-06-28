package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xh extends l70 {
    public final wh b;

    public xh() {
        super(bw1.a);
        ii3 ii3Var = bw1.b;
        ii3Var.getClass();
        this.b = new wh(ii3Var);
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return this.b;
    }

    @Override // defpackage.x
    public final Object e() {
        return new ArrayList();
    }

    @Override // defpackage.x
    public final int f(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        arrayList.getClass();
        return arrayList.size();
    }

    @Override // defpackage.x
    public final Iterator g(Object obj) {
        Collection collection = (Collection) obj;
        collection.getClass();
        return collection.iterator();
    }

    @Override // defpackage.x
    public final int h(Object obj) {
        Collection collection = (Collection) obj;
        collection.getClass();
        return collection.size();
    }

    @Override // defpackage.x
    public final Object k(Object obj) {
        throw null;
    }

    @Override // defpackage.x
    public final Object l(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        arrayList.getClass();
        return arrayList;
    }

    @Override // defpackage.l70
    public final void m(int i, Object obj, Object obj2) {
        ArrayList arrayList = (ArrayList) obj;
        arrayList.getClass();
        arrayList.add(i, obj2);
    }
}
