package defpackage;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s41 extends ac3 {
    public final HashMap r = new HashMap();

    @Override // defpackage.ac3
    public final xb3 a(Object obj) {
        return (xb3) this.r.get(obj);
    }

    @Override // defpackage.ac3
    public final Object c(Object obj) {
        Object objC = super.c(obj);
        this.r.remove(obj);
        return objC;
    }
}
