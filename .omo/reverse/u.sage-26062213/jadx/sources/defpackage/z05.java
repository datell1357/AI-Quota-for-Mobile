package defpackage;

import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z05 {
    public static final z05 c = new z05();
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final wu4 a = new wu4(3);

    public final h15 a(Class cls) {
        h15 h15VarN;
        Class cls2;
        Charset charset = dz4.a;
        if (cls == null) {
            q73.r("messageType");
            return null;
        }
        ConcurrentHashMap concurrentHashMap = this.b;
        h15 h15Var = (h15) concurrentHashMap.get(cls);
        if (h15Var != null) {
            return h15Var;
        }
        wu4 wu4Var = this.a;
        wu4Var.getClass();
        Class cls3 = l15.a;
        if (!sy4.class.isAssignableFrom(cls) && (cls2 = l15.a) != null && !cls2.isAssignableFrom(cls)) {
            k21.f("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            return null;
        }
        e15 e15VarB = ((vz4) wu4Var.o).b(cls);
        if ((e15VarB.c & 2) == 2) {
            if (sy4.class.isAssignableFrom(cls)) {
                h15VarN = new o05(l15.c, oy4.a, e15VarB.a);
            } else {
                r25 r25Var = l15.b;
                ly4 ly4Var = oy4.b;
                if (ly4Var == null) {
                    k21.n("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                h15VarN = new o05(r25Var, ly4Var, e15VarB.a);
            }
        } else if (sy4.class.isAssignableFrom(cls)) {
            if (((e15VarB.c & 1) != 0 ? 1 : 2) - 1 != 1) {
                int i = u05.a;
                qz4 qz4Var = sz4.b;
                r25 r25Var2 = l15.c;
                ly4 ly4Var2 = oy4.a;
                int i2 = zz4.a;
                h15VarN = l05.n(e15VarB, qz4Var, r25Var2);
            } else {
                int i3 = u05.a;
                qz4 qz4Var2 = sz4.b;
                r25 r25Var3 = l15.c;
                int i4 = zz4.a;
                h15VarN = l05.n(e15VarB, qz4Var2, r25Var3);
            }
        } else {
            if (((e15VarB.c & 1) != 0 ? 1 : 2) - 1 != 1) {
                int i5 = u05.a;
                oz4 oz4Var = sz4.a;
                r25 r25Var4 = l15.b;
                if (oy4.b == null) {
                    k21.n("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                int i6 = zz4.a;
                h15VarN = l05.n(e15VarB, oz4Var, r25Var4);
            } else {
                int i7 = u05.a;
                oz4 oz4Var2 = sz4.a;
                r25 r25Var5 = l15.b;
                int i8 = zz4.a;
                h15VarN = l05.n(e15VarB, oz4Var2, r25Var5);
            }
        }
        h15 h15Var2 = (h15) concurrentHashMap.putIfAbsent(cls, h15VarN);
        return h15Var2 == null ? h15VarN : h15Var2;
    }
}
