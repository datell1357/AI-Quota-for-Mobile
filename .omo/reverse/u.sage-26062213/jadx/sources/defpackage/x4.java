package defpackage;

import java.io.IOException;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x4 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public final /* synthetic */ Object s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x4(Object obj, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.s = obj;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                ((x4) o((dh0) obj2, (qi0) obj)).q(t64Var);
                return t64Var;
            case 1:
                ((x4) o((dh0) obj2, (sf0) obj)).q(t64Var);
                return t64Var;
            case 2:
                return ((x4) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 3:
                ((x4) o((dh0) obj2, (qi0) obj)).q(t64Var);
                return t64Var;
            default:
                return ((x4) o((dh0) obj2, (dj3) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.s;
        switch (i) {
            case 0:
                return new x4((h4) obj2, dh0Var, 0);
            case 1:
                return new x4((og4) obj2, dh0Var, 1);
            case 2:
                return new x4((qu0) obj2, dh0Var, 2);
            case 3:
                return new x4((MainActivity) obj2, dh0Var, 3);
            default:
                return new x4((dj3) obj2, dh0Var, 4);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        switch (this.r) {
            case 0:
                gg4.T(obj);
                ((h4) this.s).a();
                return t64.a;
            case 1:
                gg4.T(obj);
                String str = jf0.a;
                og4 og4Var = (og4) this.s;
                t72.g().c(str, "Constraints changed for " + og4Var);
                return t64.a;
            case 2:
                gg4.T(obj);
                qu0 qu0Var = (qu0) this.s;
                synchronized (qu0Var.f283u) {
                    if (!qu0Var.z || qu0Var.A) {
                        return t64.a;
                    }
                    try {
                        qu0Var.R();
                        break;
                    } catch (IOException unused) {
                        qu0Var.B = true;
                    }
                    try {
                        if ((qu0Var.w >= 2000 ? 1 : 0) != 0) {
                            qu0Var.Y();
                        }
                        break;
                    } catch (IOException unused2) {
                        qu0Var.C = true;
                        qu0Var.x = new c23(new mw());
                    }
                    return t64.a;
                }
            case 3:
                gg4.T(obj);
                t11 t11Var = y84.x;
                MainActivity mainActivity = (MainActivity) this.s;
                t11Var.getClass();
                g1 g1Var = new g1(i, t11Var);
                while (g1Var.hasNext()) {
                    y84 y84Var = (y84) g1Var.next();
                    int i = MainActivity.C;
                    pt ptVarJ = mainActivity.j(y84Var);
                    ca.y(ptVarJ.f, null, null, new ys(ptVarJ, null), 3);
                }
                return t64.a;
            default:
                gg4.T(obj);
                return (dj3) this.s;
        }
    }
}
