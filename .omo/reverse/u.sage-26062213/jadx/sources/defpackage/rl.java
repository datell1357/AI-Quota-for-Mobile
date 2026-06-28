package defpackage;

import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rl implements pn2 {
    public static final rl a = new rl();
    public static final a51 b;
    public static final a51 c;
    public static final a51 d;
    public static final a51 e;

    static {
        ij ijVar = new ij(1);
        HashMap map = new HashMap();
        map.put(yz2.class, ijVar);
        b = new a51("window", Collections.unmodifiableMap(new HashMap(map)));
        ij ijVar2 = new ij(2);
        HashMap map2 = new HashMap();
        map2.put(yz2.class, ijVar2);
        c = new a51("logSourceMetrics", Collections.unmodifiableMap(new HashMap(map2)));
        ij ijVar3 = new ij(3);
        HashMap map3 = new HashMap();
        map3.put(yz2.class, ijVar3);
        d = new a51("globalMetrics", Collections.unmodifiableMap(new HashMap(map3)));
        ij ijVar4 = new ij(4);
        HashMap map4 = new HashMap();
        map4.put(yz2.class, ijVar4);
        e = new a51("appNamespace", Collections.unmodifiableMap(new HashMap(map4)));
    }

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        m60 m60Var = (m60) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.a(b, m60Var.a);
        qn2Var.a(c, m60Var.b);
        qn2Var.a(d, m60Var.c);
        qn2Var.a(e, m60Var.d);
    }
}
