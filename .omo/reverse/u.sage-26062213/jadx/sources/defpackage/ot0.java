package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ot0 implements pe1 {
    public final /* synthetic */ int n = 0;
    public final /* synthetic */ boolean o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public /* synthetic */ ot0(yh2 yh2Var, List list, boolean z) {
        this.p = yh2Var;
        this.o = z;
        this.q = list;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.n;
        Object obj2 = this.q;
        Object obj3 = this.p;
        final boolean z = this.o;
        switch (i) {
            case 0:
                final yh2 yh2Var = (yh2) obj3;
                final List list = (List) obj2;
                n22 n22Var = new n22() { // from class: pt0
                    @Override // defpackage.n22
                    public final void B(p22 p22Var, f22 f22Var) {
                        boolean z2 = z;
                        List list2 = list;
                        yh2 yh2Var2 = yh2Var;
                        if (z2 && !list2.contains(yh2Var2)) {
                            list2.add(yh2Var2);
                        }
                        if (f22Var == f22.ON_START && !list2.contains(yh2Var2)) {
                            list2.add(yh2Var2);
                        }
                        if (f22Var == f22.ON_STOP) {
                            list2.remove(yh2Var2);
                        }
                    }
                };
                yh2Var.f421u.j.a(n22Var);
                return new aq(1, yh2Var, n22Var);
            default:
                String str = (String) obj3;
                fo3 fo3Var = (fo3) obj2;
                ph3 ph3Var = (ph3) obj;
                if (z) {
                    nh3.a(ph3Var, 0);
                }
                vc3 vc3Var = new vc3(7, fo3Var);
                kx1[] kx1VarArr = nh3.a;
                ph3Var.a(ah3.f7u, new o2(null, vc3Var));
                nh3.b(ph3Var, str);
                return t64.a;
        }
    }

    public /* synthetic */ ot0(boolean z, String str, fo3 fo3Var) {
        this.o = z;
        this.p = str;
        this.q = fo3Var;
    }
}
