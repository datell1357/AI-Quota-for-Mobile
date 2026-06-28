package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gc3 implements fc3 {
    public static final xh1 r = new xh1(new ei0(10), new z82(26));
    public final Map n;
    public final kg2 o;
    public ic3 p;
    public final v q;

    public gc3(Map map) {
        this.n = map;
        long[] jArr = td3.a;
        this.o = new kg2();
        this.q = new v(27, this);
    }

    @Override // defpackage.fc3
    public final void e(Object obj, ka0 ka0Var, ag1 ag1Var, int i) {
        int i2;
        ag1Var.X(533563200);
        if ((i & 6) == 0) {
            i2 = (ag1Var.h(obj) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.h(ka0Var) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= ag1Var.h(this) ? 256 : 128;
        }
        if (ag1Var.N(i2 & 1, (i2 & 147) != 146)) {
            ag1Var.Y(obj);
            Object objK = ag1Var.K();
            bx3 bx3Var = rb0.a;
            if (objK == bx3Var) {
                v vVar = this.q;
                if (!((Boolean) vVar.k(obj)).booleanValue()) {
                    p61.h(obj, " is not supported. On Android you can only use types which can be stored inside the Bundle.", "Type of the key ");
                    return;
                }
                Map map = (Map) this.n.get(obj);
                is3 is3Var = kc3.a;
                lc3 lc3Var = new lc3(new jc3(map, vVar));
                ag1Var.g0(lc3Var);
                objK = lc3Var;
            }
            lc3 lc3Var2 = (lc3) objK;
            gg4.b(new j03[]{kc3.a.a(lc3Var2), b72.a.a(lc3Var2)}, ka0Var, ag1Var, (i2 & 112) | 8);
            boolean zH = ag1Var.h(this) | ag1Var.h(obj) | ag1Var.h(lc3Var2);
            Object objK2 = ag1Var.K();
            if (zH || objK2 == bx3Var) {
                objK2 = new md(this, obj, lc3Var2, 7);
                ag1Var.g0(objK2);
            }
            zf5.a(t64.a, (pe1) objK2, ag1Var);
            if (ag1Var.y && ag1Var.G.i == ag1Var.z) {
                ag1Var.z = -1;
                ag1Var.y = false;
            }
            ag1Var.p(false);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ha0((fc3) this, obj, ka0Var, i, 4);
        }
    }

    @Override // defpackage.fc3
    public final void f(Object obj) {
        if (this.o.k(obj) == null) {
            this.n.remove(obj);
        }
    }
}
