package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zz2 {
    public static final zz2 c = new zz2();
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final dh1 a = new dh1(1, false);

    public final be3 a(Class cls) {
        c41 c41Var;
        be3 be3VarW;
        Class cls2;
        dt1.a(cls, "messageType");
        ConcurrentHashMap concurrentHashMap = this.b;
        be3 be3Var = (be3) concurrentHashMap.get(cls);
        if (be3Var != null) {
            return be3Var;
        }
        dh1 dh1Var = this.a;
        dh1Var.getClass();
        Class cls3 = ee3.a;
        if (!sg1.class.isAssignableFrom(cls) && (cls2 = ee3.a) != null && !cls2.isAssignableFrom(cls)) {
            k21.f("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            return null;
        }
        v13 v13VarA = ((y92) dh1Var.n).a(cls);
        if ((v13VarA.d & 2) == 2) {
            if (sg1.class.isAssignableFrom(cls)) {
                be3VarW = new sc2(ee3.c, d41.a, v13VarA.a);
            } else {
                w64 w64Var = ee3.b;
                c41 c41Var2 = d41.b;
                if (c41Var2 == null) {
                    k21.n("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                be3VarW = new sc2(w64Var, c41Var2, v13VarA.a);
            }
        } else if (sg1.class.isAssignableFrom(cls)) {
            am2 am2Var = bm2.b;
            c42 c42Var = d42.b;
            w64 w64Var2 = ee3.c;
            c41 c41Var3 = di0.F(v13VarA.a()) != 1 ? d41.a : null;
            ia2 ia2Var = ja2.b;
            if (!(v13VarA instanceof v13)) {
                int[] iArr = rc2.n;
                mk0.b();
                return null;
            }
            be3VarW = rc2.w(v13VarA, am2Var, c42Var, w64Var2, c41Var3, ia2Var);
        } else {
            am2 am2Var2 = bm2.a;
            c42 c42Var2 = d42.a;
            w64 w64Var3 = ee3.b;
            if (di0.F(v13VarA.a()) != 1) {
                c41 c41Var4 = d41.b;
                if (c41Var4 == null) {
                    k21.n("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                c41Var = c41Var4;
            } else {
                c41Var = null;
            }
            ia2 ia2Var2 = ja2.a;
            if (!(v13VarA instanceof v13)) {
                int[] iArr2 = rc2.n;
                mk0.b();
                return null;
            }
            be3VarW = rc2.w(v13VarA, am2Var2, c42Var2, w64Var3, c41Var, ia2Var2);
        }
        be3 be3Var2 = (be3) concurrentHashMap.putIfAbsent(cls, be3VarW);
        return be3Var2 != null ? be3Var2 : be3VarW;
    }
}
