package defpackage;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ot extends bv3 implements ff1 {
    public /* synthetic */ d84 r;
    public /* synthetic */ boolean s;
    public final /* synthetic */ pt t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ot(pt ptVar, dh0 dh0Var) {
        super(3, dh0Var);
        this.t = ptVar;
    }

    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
        ot otVar = new ot(this.t, (dh0) obj3);
        otVar.r = (d84) obj;
        otVar.s = zBooleanValue;
        return otVar.q(t64.a);
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        List listC;
        d84 d84Var = this.r;
        boolean z = this.s;
        gg4.T(obj);
        if (z) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            boolean z2 = false;
            if (d84Var != null && (listC = d84Var.c()) != null && !listC.isEmpty()) {
                Iterator it = listC.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Long lB = ((p84) it.next()).b();
                    if ((lB != null ? lB.longValue() : Long.MAX_VALUE) <= jCurrentTimeMillis) {
                        z2 = true;
                        break;
                    }
                }
            }
            if (d84Var == null || z2) {
                return this.t.f();
            }
        }
        return d84Var;
    }
}
