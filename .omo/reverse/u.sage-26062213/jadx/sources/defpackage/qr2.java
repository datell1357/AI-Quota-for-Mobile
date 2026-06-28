package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class qr2 {
    public static final lc0 a = new lc0(new z82(19));

    public static final wa a(ag1 ag1Var) {
        ag1Var.W(282942128);
        xa xaVar = (xa) ag1Var.j(a);
        if (xaVar == null) {
            ag1Var.p(false);
            return null;
        }
        boolean zF = ag1Var.f(xaVar);
        Object objK = ag1Var.K();
        if (zF || objK == rb0.a) {
            Object waVar = new wa(xaVar.a, xaVar.b, xaVar.c, xaVar.d);
            ag1Var.g0(waVar);
            objK = waVar;
        }
        wa waVar2 = (wa) objK;
        ag1Var.p(false);
        return waVar2;
    }
}
