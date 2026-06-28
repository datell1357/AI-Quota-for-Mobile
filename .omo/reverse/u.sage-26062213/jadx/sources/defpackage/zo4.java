package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zo4 {
    public static final zo4 c = new zo4();
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final dh1 a = new dh1(2, false);

    public final cp4 a(Class cls) {
        cp4 vo4Var;
        ConcurrentHashMap concurrentHashMap = this.b;
        Object obj = concurrentHashMap.get(cls);
        if (obj != null) {
            return (cp4) obj;
        }
        dh1 dh1Var = this.a;
        dh1Var.getClass();
        bx3 bx3Var = dp4.a;
        if (!rn4.class.isAssignableFrom(cls)) {
            int i = um4.a;
        }
        bp4 bp4VarD = ((ra3) dh1Var.n).d(cls);
        if ((bp4VarD.d & 2) == 2) {
            int i2 = um4.a;
            bx3 bx3Var2 = dp4.a;
            ls3 ls3Var = ln4.a;
            vo4Var = new vo4(bx3Var2, bp4VarD.a);
        } else {
            int i3 = um4.a;
            int i4 = wo4.a;
            int i5 = io4.a;
            bx3 bx3Var3 = dp4.a;
            ls3 ls3Var2 = bp4VarD.a() + (-1) != 1 ? ln4.a : null;
            int i6 = mo4.a;
            vo4Var = uo4.y(bp4VarD, bx3Var3, ls3Var2);
        }
        cp4 cp4Var = (cp4) concurrentHashMap.putIfAbsent(cls, vo4Var);
        return cp4Var != null ? cp4Var : vo4Var;
    }
}
