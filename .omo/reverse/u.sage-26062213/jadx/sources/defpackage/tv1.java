package defpackage;

import java.util.Date;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tv1 implements n01 {
    public static final rv1 f;
    public static final rv1 g;
    public final HashMap a;
    public final HashMap b;
    public final qv1 c;
    public boolean d;
    public static final qv1 e = new qv1(0);
    public static final sv1 h = new sv1();

    /* JADX WARN: Type inference failed for: r0v1, types: [rv1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [rv1] */
    static {
        final int i = 0;
        f = new v94() { // from class: rv1
            @Override // defpackage.m01
            public final void a(Object obj, Object obj2) {
                switch (i) {
                    case 0:
                        ((w94) obj2).b((String) obj);
                        break;
                    default:
                        ((w94) obj2).c(((Boolean) obj).booleanValue());
                        break;
                }
            }
        };
        final int i2 = 1;
        g = new v94() { // from class: rv1
            @Override // defpackage.m01
            public final void a(Object obj, Object obj2) {
                switch (i2) {
                    case 0:
                        ((w94) obj2).b((String) obj);
                        break;
                    default:
                        ((w94) obj2).c(((Boolean) obj).booleanValue());
                        break;
                }
            }
        };
    }

    public tv1() {
        HashMap map = new HashMap();
        this.a = map;
        HashMap map2 = new HashMap();
        this.b = map2;
        this.c = e;
        this.d = false;
        map2.put(String.class, f);
        map.remove(String.class);
        map2.put(Boolean.class, g);
        map.remove(Boolean.class);
        map2.put(Date.class, h);
        map.remove(Date.class);
    }

    public final n01 a(Class cls, pn2 pn2Var) {
        this.a.put(cls, pn2Var);
        this.b.remove(cls);
        return this;
    }
}
