package defpackage;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cy extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ Object f57u;
    public final /* synthetic */ Object v;
    public final /* synthetic */ Object w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ cy(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.s = obj;
        this.t = obj2;
        this.f57u = obj3;
        this.v = obj4;
        this.w = obj5;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
            case 0:
                break;
            case 1:
                ((cy) o(dh0Var, qi0Var)).q(t64Var);
                break;
            default:
                ((cy) o(dh0Var, qi0Var)).q(t64Var);
                break;
        }
        return t64Var;
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.w;
        Object obj3 = this.v;
        Object obj4 = this.f57u;
        Object obj5 = this.t;
        switch (i) {
            case 0:
                cy cyVar = new cy((dy) obj5, (mm2) obj4, (j9) obj3, (pp) obj2, dh0Var);
                cyVar.s = obj;
                return cyVar;
            case 1:
                return new cy((qi2) this.s, (List) obj5, (List) obj4, (xi2) obj3, (String) obj2, dh0Var, 1);
            default:
                return new cy((y84) this.s, (pg2) obj5, (pg2) obj4, (pg2) obj3, (pg2) obj2, dh0Var, 2);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        t64 t64Var = t64.a;
        Object obj2 = this.w;
        Object obj3 = this.v;
        Object obj4 = this.f57u;
        Object obj5 = this.t;
        switch (i) {
            case 0:
                gg4.T(obj);
                qi0 qi0Var = (qi0) this.s;
                dy dyVar = (dy) obj5;
                dh0 dh0Var = null;
                ca.y(qi0Var, null, null, new p(dyVar, (mm2) obj4, (j9) obj3, dh0Var, 6), 3);
                break;
            case 1:
                List list = (List) obj4;
                gg4.T(obj);
                qi2 qi2Var = (qi2) this.s;
                String str = qi2Var != null ? (String) qi2Var.o.e : null;
                List list2 = (List) obj5;
                if (!list2.isEmpty()) {
                    Iterator it = list2.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        } else if (mt1.i((y84) it.next()).equals(str)) {
                            if (!list.isEmpty()) {
                                Iterator it2 = list.iterator();
                                while (it2.hasNext()) {
                                    if (mt1.i((y84) it2.next()).equals(str)) {
                                        break;
                                    }
                                }
                                ((xi2) obj3).a(mt1.i((y84) o70.h0(list)), new ao0((String) obj2, 8));
                            } else {
                                ((xi2) obj3).a(mt1.i((y84) o70.h0(list)), new ao0((String) obj2, 8));
                            }
                            break;
                        }
                    }
                }
                break;
            default:
                gg4.T(obj);
                ra3 ra3Var = ez3.a;
                y84 y84Var = (y84) this.s;
                ((Boolean) ((pg2) obj5).getValue()).booleanValue();
                ((Boolean) ((pg2) obj4).getValue()).booleanValue();
                ((Boolean) ((pg2) obj3).getValue()).booleanValue();
                d84 d84Var = (d84) ((pg2) obj2).getValue();
                if (d84Var != null) {
                    d84Var.toString();
                }
                y84Var.toString();
                ra3Var.getClass();
                ra3.c(new Object[0]);
                break;
        }
        return t64Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cy(dy dyVar, mm2 mm2Var, j9 j9Var, pp ppVar, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 0;
        this.t = dyVar;
        this.f57u = mm2Var;
        this.v = j9Var;
        this.w = ppVar;
    }
}
