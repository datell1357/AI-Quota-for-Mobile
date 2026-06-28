package defpackage;

import u.sage.a;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xs extends bv3 implements gf1 {
    public /* synthetic */ String r;
    public /* synthetic */ w3 s;
    public /* synthetic */ boolean t;

    @Override // defpackage.gf1
    public final Object n(Object obj, Object obj2, Object obj3, Object obj4) {
        boolean zBooleanValue = ((Boolean) obj3).booleanValue();
        xs xsVar = new xs(4, (dh0) obj4);
        xsVar.r = (String) obj;
        xsVar.s = (w3) obj2;
        xsVar.t = zBooleanValue;
        return xsVar.q(t64.a);
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        String str = this.r;
        w3 w3Var = this.s;
        boolean z = this.t;
        gg4.T(obj);
        wr3 wr3Var = a.D;
        return qv3.v(str, "SERVICE", w3Var, Boolean.valueOf(z), null, 16);
    }
}
