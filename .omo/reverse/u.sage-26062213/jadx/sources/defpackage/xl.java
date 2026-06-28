package defpackage;

import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xl implements pn2 {
    public static final xl a = new xl();
    public static final a51 b;
    public static final a51 c;

    static {
        ij ijVar = new ij(1);
        HashMap map = new HashMap();
        map.put(yz2.class, ijVar);
        b = new a51("startMs", Collections.unmodifiableMap(new HashMap(map)));
        ij ijVar2 = new ij(2);
        HashMap map2 = new HashMap();
        map2.put(yz2.class, ijVar2);
        c = new a51("endMs", Collections.unmodifiableMap(new HashMap(map2)));
    }

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        kz3 kz3Var = (kz3) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.g(b, kz3Var.a);
        qn2Var.g(c, kz3Var.b);
    }
}
