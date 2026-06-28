package defpackage;

import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qp0 implements n22 {
    public final /* synthetic */ int n = 1;
    public final Object o;
    public final Object p;

    public qp0(o22 o22Var) {
        this.o = o22Var;
        m50 m50Var = m50.c;
        Class<?> cls = o22Var.getClass();
        k50 k50Var = (k50) m50Var.a.get(cls);
        this.p = k50Var == null ? m50Var.a(cls, null) : k50Var;
    }

    @Override // defpackage.n22
    public final void B(p22 p22Var, f22 f22Var) {
        int i = this.n;
        Object obj = this.o;
        Object obj2 = this.p;
        switch (i) {
            case 0:
                op0 op0Var = (op0) obj;
                switch (pp0.a[f22Var.ordinal()]) {
                    case 1:
                        op0Var.getClass();
                        break;
                    case 2:
                        op0Var.r(p22Var);
                        break;
                    case 3:
                        op0Var.A(p22Var);
                        break;
                    case 4:
                        op0Var.getClass();
                        break;
                    case 5:
                        op0Var.j(p22Var);
                        break;
                    case 6:
                        op0Var.z(p22Var);
                        break;
                    case 7:
                        k21.f("ON_ANY must not been send by anybody");
                        break;
                    default:
                        p61.x();
                        break;
                }
                n22 n22Var = (n22) obj2;
                if (n22Var != null) {
                    n22Var.B(p22Var, f22Var);
                }
                break;
            case 1:
                if (f22Var == f22.ON_START) {
                    ((h22) obj).b(this);
                    ((uc3) obj2).d();
                }
                break;
            case 2:
                po2 po2Var = (po2) obj;
                int i2 = to2.a[f22Var.ordinal()];
                if (i2 == 1) {
                    po2Var.h(true);
                    break;
                } else if (i2 == 2) {
                    po2Var.h(false);
                    break;
                } else if (i2 == 3) {
                    po2Var.f();
                    ((h22) obj2).b(this);
                    break;
                }
                break;
            default:
                HashMap map = ((k50) obj2).a;
                k50.a((List) map.get(f22Var), p22Var, f22Var, obj);
                k50.a((List) map.get(f22.ON_ANY), p22Var, f22Var, obj);
                break;
        }
    }

    public qp0(op0 op0Var, n22 n22Var) {
        op0Var.getClass();
        this.o = op0Var;
        this.p = n22Var;
    }

    public qp0(h22 h22Var, uc3 uc3Var) {
        this.o = h22Var;
        this.p = uc3Var;
    }

    public qp0(po2 po2Var, uo2 uo2Var, h22 h22Var) {
        this.o = po2Var;
        this.p = h22Var;
    }
}
